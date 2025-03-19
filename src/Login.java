import java.util.Scanner;

public class Login {
    public static void main(String[] args) {
       Scanner scanner = new Scanner(System.in);

       System.out.println("Usuário: ");
       String usuario = scanner.nextLine();

       System.out.println("Senha: ");
       String senha = scanner.nextLine();

       if (usuario.equals("admin") && senha.equals("1234")){
           System.out.println("login realizado com sucesso!");
       }else{
               System.out.println("Usuário ou senha incorreto.");
           }




        }
    }


