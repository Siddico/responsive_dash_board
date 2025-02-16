import 'package:flutter/material.dart';

import '../../../utils/styles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: Styles.styleSemiBold20(context),
        ),
        Text(
          'See All',
          style:
              Styles.styleMedium16(context).copyWith(color: Color(0xff4eb7f2)),
        )
      ],
    );
  }
}
