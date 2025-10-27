import 'dart:io';

import 'package:calculadora/calculadora.dart';

void main() {
  Calculadora calc = Calculadora();

  stdout.write("Digite o primeiro número: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o segundo número: ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Escolha a operação (+, -, *, /): ");
  String operador = stdin.readLineSync()!;

  switch (operador) {
    case "+":
      calc.somar(a, b);  
      break;
    case "-":
      calc.subtrair(a, b);
      break;
    case "*":
      calc.multiplicar(a, b);
      break;
    case "/":
      calc.dividir(a, b);
      break;
    default:
      stdout.writeln("Operação inválida!");
  }
}
