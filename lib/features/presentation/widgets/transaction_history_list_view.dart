import 'package:dashapp/features/models/transaction_model.dart';
import 'package:dashapp/features/presentation/widgets/transaction_history_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static final items = [
    TransactionModel(
        amount: r'$20,129',
        date: '13 April , 2022',
        title: 'Cash Withdrawal',
        isIncome: true),
    TransactionModel(
        amount: r'$20,000',
        date: '13 April , 2022 at 3:30 PM',
        title: 'Leading Page Project',
        isIncome: false),
    TransactionModel(
        amount: r'$20.129',
        date: '13 April , 2022 at 3:30 PM',
        title: 'Juni Mopile App Project',
        isIncome: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => TransactionHistoryItem(transactionModel: e))
          .toList(),
    );

    // return ListView.builder(
    //     itemCount: items.length,
    //     shrinkWrap: true,
    //     itemBuilder: (context, index) =>
    //         TransactionHistoryItem(transactionModel: items[index]));
  }
}
