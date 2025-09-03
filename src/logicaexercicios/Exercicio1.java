package logicaexercicios;
import java.util.Scanner;

public class Exercicio1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Digite um número: ");
        int num = sc.nextInt();

        if (num >= 0) {
            System.out.println("Número positivo");
        } else {
            System.out.println("Número negativo");
        }
        sc.close();
    }
}
