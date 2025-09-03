package logicaexercicios;
import java.util.Scanner;

public class Exercicio3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Escolha a categoria: 1 - Matemática | 2 - Texto");
        int cat = sc.nextInt();

        System.out.println("Escolha a opção: 1 ou 2");
        int op = sc.nextInt();

        switch (cat) {
            case 1 -> {
                System.out.println("Categoria Matemática");
                switch (op) {
                    case 1 -> System.out.println("Soma");
                    case 2 -> System.out.println("Subtração");
                }
            }
            case 2 -> {
                System.out.println("Categoria Texto");
                switch (op) {
                    case 1 -> System.out.println("Contar letras");
                    case 2 -> System.out.println("Inverter string");
                }
            }
            default -> System.out.println("Opção inválida");
        }

        sc.close();
    }
}
