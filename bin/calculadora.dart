import 'dart:io';

void main() {
  print("Digite o primeiro número: ");
  double numeroUm = double.parse(stdin.readLineSync()!);
  print("Digite o segundo número");
  double numeroDois = double.parse(stdin.readLineSync()!);
  
}

double soma(double numeroUm, double numeroDois) => numeroUm + numeroDois;

double subtracao(double numeroUm, double numeroDois) => numeroUm - numeroDois;

double divisao(double numeroUm, double numeroDois) => numeroUm / numeroDois;

double multiplicacao(double numeroUm, double numeroDois) => numeroUm * numeroDois;