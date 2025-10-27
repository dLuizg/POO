class Calculadora {
  int somar(int a, int b) {
    int resultado = a + b;
    print("$a + $b = $resultado");
    return resultado;
  }

  int subtrair(int a, int b) {
    int resultado = a - b;
    print("$a - $b = $resultado");
    return resultado;
  }

  int multiplicar(int a, int b) {
    int resultado = a * b;
    print("$a * $b = $resultado");
    return resultado;
  }

  int dividir(int a, int b) {
    if (b == 0) {
      print("Erro: divisão por zero!");
      return 0;
    }
    int resultado = a ~/ b;
    print("$a / $b = $resultado");
    return resultado;
  }
}
