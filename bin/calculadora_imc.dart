import 'package:calculadora_imc/functions/utils.dart';
void main(List<String> arguments) {
  print('Bem vindo ao cálculo do IMC!');

  var nome = lerConsole("Informe seu nome: ");
  var altura = lerConsoleDouble("Informe qual sua altura: ");
  var peso = lerConsoleDouble("Informe qual seu peso: ");

  var imc = calcularIMC(peso, altura);
  print("$nome seu IMC é: " + imc.toStringAsFixed(2)); 

  definirIMC(imc);
}
