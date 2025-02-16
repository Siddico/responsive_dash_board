import 'package:dashapp/features/presentation/widgets/range_options.dart';
import 'package:dashapp/utils/styles.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: Styles.styleSemiBold20(context),
        ),
        Expanded(child: SizedBox()),
        RangeOptions()
      ],
    );
  }
}
