// ignore_for_file: public_member_api_docs, sort_constructors_first
class TransactionHistoryModel {
  final String title;
  final String date;
  final String amount;
  final bool isWithdrawal;
  TransactionHistoryModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.isWithdrawal,
  });
}
