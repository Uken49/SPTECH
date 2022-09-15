package com.uken.lista02.nivelamento;

import java.util.Scanner;

public class Ex09PizzaFavorita {

    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);

        int voto,
                mussarela = 0,
                calabresa = 0,
                quatroQueijos = 0;

        System.out.println("Vote 10 vezes:\n5 - Mussarela"
                + "\n25 - Calabresa"
                + "\n50 - Quatro Queijos");
        
        for (int i = 0; i < 10; i++) {
            do {
                voto = in.nextInt();

            } while (voto != 5 && voto != 25 && voto != 50);

            switch (voto) {
                case 5:
                    mussarela++;
                    break;

                case 25:
                    calabresa++;
                    break;

                case 50:
                    quatroQueijos++;
                    break;
                default:
                    throw new AssertionError();
            }
        }

        String saborFav;

        if (mussarela > quatroQueijos && mussarela > calabresa) {
            saborFav = "Mussarela";

        } else if (calabresa > quatroQueijos && calabresa > mussarela) {
            saborFav = "Calabresa";

        } else {
            saborFav = "Quatro Queijos";
        }

        System.out.printf("Mussarela - %d"
                + "\nCalabresa - %d"
                + "\nQuatro Queijos - %d\n",
                 mussarela, calabresa, quatroQueijos);

        System.out.printf("Sabor favorito: %s", saborFav);
    }
}
