class TransactionModel {
  final String title;
  final String amount;
  final String date;
  final bool isIncome;

  TransactionModel(
      {required this.title,
      required this.amount,
      required this.date,
      required this.isIncome});
}
