class Transaction {
  final String title;
  final String date;
  final double amount;
  final String icon;

  Transaction({
    required this.title,
    required this.date,
    required this.amount,
    required this.icon,
  });

  factory Transaction.fromMap(Map<String, dynamic> data) {
    return Transaction(
      title: data['title'] ?? 'Unknown',
      date: data['date'] ?? 'Unknown',
      amount: (data['amount'] as num?)?.toDouble() ?? 0.0,
      icon: data['icon'] ?? 'default_icon',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'date': date,
      'amount': amount,
      'icon': icon,
    };
  }
}
