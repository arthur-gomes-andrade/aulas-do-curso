package logica.Exemplos;
import java.util.Scanner;

public class Exemplo9 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num;

        do {
            System.out.print("Digite um número (0 para sair): ");
            num = sc.nextInt();
        } while (num != 0);

        sc.close();
    }
}
