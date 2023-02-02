package com.uken49.exemplo.banco;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.jdbc.core.JdbcTemplate;

public class Database {
    // ATRIBUTO

    private JdbcTemplate connection;

    // CONSTRUTOR
    public Database() {

        BasicDataSource dataSource = new BasicDataSource();

        // Aqui informa o driver do bano que será utilizado
        dataSource​.setDriverClassName("org.h2.Driver");
        // A URL do banco 
        dataSource​.setUrl("jdbc:h2:file:./banco_teste");

        dataSource​.setUsername("sa");
        dataSource​.setPassword("");

        this.connection = new JdbcTemplate(dataSource);

    }

    // GETTER
    public JdbcTemplate getConnection() {

        return connection;

    }

}
