class Alimento {
  String nome;
  String id;

  Alimento({this.nome, this.id});

  static Alimento fromJson(Map<String, dynamic> json) {
    return new Alimento(
      nome: json["nome"],
      id: json["id"],
    );
  }
}
