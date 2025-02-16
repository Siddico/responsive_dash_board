import 'package:dashapp/utils/styles.dart';
import 'package:flutter/material.dart';

import 'latest_transaction_list_view.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: Styles.styleMedium16(context),
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransactionListView()
      ],
    );
  }
}
