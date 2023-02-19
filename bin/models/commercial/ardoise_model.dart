class ArdoiseModel {
  late int? id; 
  late String ardoise;
  late String ardoiseId;
  late String succursale;
  late String signature; // Celui qui fait le document
  late DateTime created;

  ArdoiseModel(
      {this.id,
      required this.ardoise,
      required this.ardoiseId, 
      required this.succursale,
      required this.signature,
      required this.created});

  factory ArdoiseModel.fromSQL(List<dynamic> row) {
    return ArdoiseModel(
      id: row[0],
      ardoise: row[1],
      ardoiseId: row[2],
      succursale: row[3],
      signature: row[4],
      created: row[5]
    );
  }

  factory ArdoiseModel.fromJson(Map<String, dynamic> json) {
    return ArdoiseModel(
        id: json['id'],
        ardoise: json['ardoise'],
        ardoiseId: json['ardoiseId'], 
        succursale: json['succursale'],
        signature: json['signature'],
        created: DateTime.parse(json['created']));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'ardoise': ardoise,
      'ardoiseId': ardoiseId, 
      'succursale': succursale,
      'signature': signature,
      'created': created.toIso8601String()
    };
  }
}
