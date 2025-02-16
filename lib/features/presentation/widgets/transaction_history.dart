import 'package:dashapp/features/presentation/widgets/transaction_history_list_view.dart';
import 'package:dashapp/utils/styles.dart';
import 'package:flutter/material.dart';

import 'transaction_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style:
              Styles.styleMedium16(context).copyWith(color: Color(0xffaaaaaa)),
        ),
        SizedBox(
          height: 16,
        ),
        TransactionHistoryListView()
      ],
    );
  }
}
