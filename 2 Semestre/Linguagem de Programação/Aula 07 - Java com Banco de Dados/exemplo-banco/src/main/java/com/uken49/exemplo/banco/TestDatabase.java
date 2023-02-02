package com.uken49.exemplo.banco;

import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class TestDatabase {

    public static void main(String[] args) {

        Database database = new Database();

        JdbcTemplate connection = database.getConnection();
//        connection.execute(
//                "CREATE TABLE filme ("
//                + "id INT PRIMARY KEY AUTO_INCREMENT,"
//                + "nome VARCHAR(255) NOT NULL,"
//                + "ano_lancamento int NOT NULL"
//                + ");"
//        );

        connection.update("INSERT INTO filme VALUES (?, ?, ?)"
                                       , null, "Blade 2", 2001);
        
        System.out.println(connection.queryForList("SELECT * FROM filme;"));
        
        List<Filme> resultado = connection.query(
                "SELECT * FROM filme;", new BeanPropertyRowMapper(Filme.class));
        
        for (Filme filme : resultado) {
            System.out.println("Nome: " + filme.getNome());
        }
    }
}
