class StateModel {
  final String acronym;
  final String name;
  StateModel({
    required this.acronym,
    required this.name,
  });

  factory StateModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {'sigla': final String sigla, 'nome': final String nome} => StateModel(
          acronym: sigla,
          name: nome,
        ),
      _ => throw ArgumentError('Invalid JSON'),
    };
  }

  Map<String, dynamic> toMap() {
    return switch (this) {
      StateModel(
        acronym: final String acronym,
        name: final String name,
      ) =>
        {
          'acronym': acronym,
          'name': name,
        },
    };
  }
}
