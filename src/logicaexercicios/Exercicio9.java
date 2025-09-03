package logicaexercicios;

public class Exercicio9 {
    public static void main(String[] args) {
        for (int i = 1; i <= 10; i++) {
            if (i == 7) {
                System.out.println("Número 7 encontrado, parando.");
                break;
            }
            System.out.println(i);
        }
    }
}
