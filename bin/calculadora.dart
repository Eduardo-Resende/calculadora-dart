import 'dart:io';

void main() {
  print("Digite o primeiro número: ");
  double numeroUm = double.parse(stdin.readLineSync() ?? "0");
  print("Digite o segundo número");
  double numeroDois = double.parse(stdin.readLineSync() ?? "0");
  print("Informe a operação [ + - / * ]");
  String operacao = stdin.readLineSync()!;

  double resultado;
  switch (operacao) {
    case "+":
      resultado = soma(numeroUm, numeroDois);
      print("A soma $numeroUm + $numeroDois = $resultado");
      break;
    case "-":
      resultado = subtracao(numeroUm, numeroDois);
      print("A subtração $numeroUm - $numeroDois = $resultado");
      break;
     case "/":
      resultado = divisao(numeroUm, numeroDois);
      print("A divisão $numeroUm / $numeroDois = $resultado");
      break;
    case "*":
      resultado = multiplicacao(numeroUm, numeroDois);
      print("A multiplicação $numeroUm * $numeroDois = $resultado");
      break;   
    default:
      print("A operação $operacao é inválida");
  }
  
}

double soma(double numeroUm, double numeroDois) => numeroUm + numeroDois;

double subtracao(double numeroUm, double numeroDois) => numeroUm - numeroDois;

double divisao(double numeroUm, double numeroDois) => numeroUm / numeroDois;

double multiplicacao(double numeroUm, double numeroDois) => numeroUm * numeroDois;