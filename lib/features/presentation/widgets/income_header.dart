import 'package:flutter/material.dart';

import '../../../utils/styles.dart';
import 'range_options.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Income',
          style: Styles.styleSemiBold20(context),
        ),
        Expanded(child: SizedBox()),
        RangeOptions(),
      ],
    );
  }
}
