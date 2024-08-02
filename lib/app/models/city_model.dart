class CityModel {
  final String name;
  final String ibge;
  CityModel({
    required this.name,
    required this.ibge,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {'nome': final String nome, 'codigo_ibge': final String ibge} =>
        CityModel(
          name: nome,
          ibge: ibge,
        ),
      _ => throw ArgumentError('Invalid JSON'),
    };
  }

  Map<String, dynamic> toMap() {
    return switch (this) {
      CityModel(
        name: final String name,
        ibge: final String ibge,
      ) =>
        {
          'name': name,
          'ibgeCode': ibge,
        },
    };
  }
}
