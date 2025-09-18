package android.arthur.calculodemedia;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    EditText nota1, nota2, nota3, nota4, faltas;
    Button btnCalcular;
    TextView resultado;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        initComponents();

        btnCalcular.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (validaCampos()) {
                    calcularMedia();
                }
            }
        });
    }

    private void initComponents() {
        nota1 = findViewById(R.id.nota1);
        nota2 = findViewById(R.id.nota2);
        nota3 = findViewById(R.id.nota3);
        nota4 = findViewById(R.id.nota4);
        faltas = findViewById(R.id.faltas);
        btnCalcular = findViewById(R.id.btnCalcular);
        resultado = findViewById(R.id.resultado);
    }

    private boolean validaCampos() {
        return !(TextUtils.isEmpty(nota1.getText())
                || TextUtils.isEmpty(nota2.getText())
                || TextUtils.isEmpty(nota3.getText())
                || TextUtils.isEmpty(nota4.getText())
                || TextUtils.isEmpty(faltas.getText()));
    }

    private void calcularMedia() {
        double n1 = Double.parseDouble(nota1.getText().toString());
        double n2 = Double.parseDouble(nota2.getText().toString());
        double n3 = Double.parseDouble(nota3.getText().toString());
        double n4 = Double.parseDouble(nota4.getText().toString());
        int f = Integer.parseInt(faltas.getText().toString());

        double media = (n1 + n2 + n3 + n4) / 4;

        if (media >= 7 && f <= 20) {
            resultado.setText("Aprovado! Média: " + media + " | Faltas: " + f);
        } else if (media >= 7 && f > 20) {
            resultado.setText("Reprovado por faltas. Média: " + media + " | Faltas: " + f);
        } else if (media < 7) {
            resultado.setText("Reprovado por média. Média: " + media + " | Faltas: " + f);
        } else {
            resultado.setText("Retido. Média: " + media + " | Faltas: " + f);
        }
    }
}
