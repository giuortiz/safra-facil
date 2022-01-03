class Alimento {
  String nome;
  String id;
  int qtde;

  Alimento({this.nome, this.id, this.qtde});

  static Alimento fromJson(Map<String, dynamic> json) {
    return new Alimento(
      nome: json["nome"],
      id: json["id"],
    );
  }
}
