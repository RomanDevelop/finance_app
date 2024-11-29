class CreditCardModel {
  final String name;
  final String number;
  final String logoUrl;
  final String type;

  CreditCardModel({
    required this.name,
    required this.number,
    required this.logoUrl,
    required this.type,
  });

  factory CreditCardModel.fromMap(Map<String, dynamic> data) {
    return CreditCardModel(
      name: data['name'] ?? 'Unknown',
      number: data['number'] ?? '0000 0000 0000 0000',
      logoUrl: data['logoUrl'] ?? '',
      type: data['type'] ?? 'Unknown', // Добавлено новое поле
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'number': number,
      'logoUrl': logoUrl,
      'type': type, // Добавлено новое поле
    };
  }
}
