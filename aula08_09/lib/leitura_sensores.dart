class LeituraSensor {
  //Declaramos os atributos da classe
  double temperatura;
  bool led;
  String horatemperatura;

  //Declarar o método construtor
  LeituraSensor({
    required this.temperatura,
    required this.led,
    required this.horatemperatura,
  });

  factory LeituraSensor.fromJson(Map<String, dynamic> json) {
    return LeituraSensor(
      temperatura: (json['temperatura'] as num).toDouble(),
      led: json['led'] as bool,
      horatemperatura: json['horaTemperatura'] as String,
    );
  }
  @override
  String toString() {
    return 'Temperatura: ${temperatura}Cº | Led: ${led ? "Ligado" : "Desligado"} | Hora $horatemperatura';
  }
}
