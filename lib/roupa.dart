class Roupa {
  String id;
  String nome;
  String descricao;
  String tipo;
  String local;

  Roupa({
    this.id = '',
    required this.nome,
    required this.descricao,
    required this.tipo,
    required this.local,
  });

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'descricao': descricao,
      'tipo': tipo,
      'local': local,
    };
  }

  static Roupa fromMap(Map<String, dynamic> map, String id) {
    return Roupa(
      id: id,
      nome: map['nome'],
      descricao: map['descricao'],
      tipo: map['tipo'],
      local: map['local'],
    );
  }
}

