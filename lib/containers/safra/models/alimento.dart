class Alimento {
  String nome;
  String id;
  String dataInicio;
  String dataColheita;
  String freqIrrigacao;
  String idFoto;
  int qtde;

  Alimento(
      {this.nome,
      this.id,
      this.qtde,
      this.dataInicio,
      this.dataColheita,
      this.freqIrrigacao,
      this.idFoto});

  static Alimento fromJson(Map<String, dynamic> json) {
    return new Alimento(
      nome: json["nome"],
      id: json["id"],
    );
  }
}
