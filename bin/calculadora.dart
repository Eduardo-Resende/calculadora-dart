import 'dart:io';

void main() {
  double numeroUm;
  double numeroDois;
  String operacao;

  print("Digite o primeiro número: ");
  try {
    numeroUm = double.parse(stdin.readLineSync() ?? "0.0");
  } catch (e) {
    numeroUm = 0.0;
  }

  operacao = getOperacao();

  print("Digite o segundo número");
  try {
    numeroDois = double.parse(stdin.readLineSync() ?? "0.0");
  } catch (e) {
    numeroDois = 0.0;
  }

  calcular(numeroUm, numeroDois, operacao);
}

double soma(double numeroUm, double numeroDois) => numeroUm + numeroDois;

double subtracao(double numeroUm, double numeroDois) => numeroUm - numeroDois;

double divisao(double numeroUm, double numeroDois) => numeroUm / numeroDois;

double multiplicacao(double numeroUm, double numeroDois) => numeroUm * numeroDois;

String getOperacao() {
  List<String> operacoes = <String>["+", "-", "/", "*"];
  print("Informe a operação ${operacoes.toString()}");
  String operacao = stdin.readLineSync()!;
  if (!operacoes.contains(operacao)) {
    print("Operação inválida");
    return getOperacao();
  }
  return operacao;
}

double calcular(double numeroUm, double numeroDois, String operacao) {
  double resultado = 0;
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
      if (numeroDois != 0) {
        resultado = divisao(numeroUm, numeroDois);
        print("A divisão $numeroUm / $numeroDois = $resultado");
      } else {
        print("Operação inválida, o divisor não pode ser 0");
      }
      break;
    case "*":
      resultado = multiplicacao(numeroUm, numeroDois);
      print("A multiplicação $numeroUm * $numeroDois = $resultado");
      break;
    default:
      print("A operação $operacao é inválida");
  }
  return resultado;
}
