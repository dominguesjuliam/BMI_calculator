import "dart:convert";
import "dart:io";
import "dart:math";

String lerConsole(String texto){
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double lerConsoleDouble(String texto){
  var numero = double.tryParse(lerConsole(texto));
  if(numero == null){
    print("Número informado incorreto, alterado para 0");
    return 0.0;
  } else {
    return numero;
  }
}

double calcularIMC(double peso, double altura){
  var imc = peso/pow(altura, 2);
  return imc;
}

void definirIMC(double imc){
  if(imc <= 16.9){
    print("MUITO ABAIXO DO PESO");
  } else if(imc >= 17 && imc <= 18.4){
    print("ABAIXO DO PESO");
  } else if(imc >= 18.5 && imc <= 24.9){
    print("PESO NORMAL");
  } else if(imc >= 25 && imc <= 29.9){
    print("ACIMA DO PESO");
  } else if(imc >= 30 && imc <= 34.9){
    print("OBESIDADE GRAU I");
  } else if(imc >= 35 && imc <= 40){
    print("OBESIDADE GRAU II");
  } else if(imc >= 50){
    print("OBESIDADE GRAU III");
  } else {
    print("VALOR NÃO IDENTIFICADO");
  }
}