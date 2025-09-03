package logicaexercicios;
import java.util.Scanner;

public class Exercicio2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Digite a nota: ");
        double nota = sc.nextDouble();

        System.out.print("Digite a frequência (%): ");
        int freq = sc.nextInt();

        if (nota >= 7) {
            if (freq >= 75) {
                System.out.println("Aprovado!");
            } else {
                System.out.println("Reprovado por frequência.");
            }
        } else {
            System.out.println("Reprovado por nota.");
        }

        sc.close();
    }
}
