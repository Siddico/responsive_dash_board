import 'package:dashapp/features/models/transaction_model.dart';
import 'package:dashapp/utils/styles.dart';
import 'package:flutter/material.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xfffafafa),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: Styles.styleSemibold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style:
              Styles.styleRegular16(context).copyWith(color: Color(0xffaaaaaa)),
        ),
        trailing: Text(
          transactionModel.amount,
          style: Styles.styleSemiBold20(context).copyWith(
              color: transactionModel.isIncome
                  ? Color(0xfff3735e)
                  : Color(0xff7cd87a)),
        ),
      ),
    );
  }
}
