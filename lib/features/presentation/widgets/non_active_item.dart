import 'package:dashapp/features/models/all_expenses_item_model.dart';
import 'package:dashapp/utils/styles.dart';
import 'package:flutter/material.dart';

import 'all_expenses_item_header.dart';

class NonActiveItem extends StatelessWidget {
  const NonActiveItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xfff1f1f1), width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AllExpensesItemHeader(
                  image: allExpensesItemModel.image,
                ),
                SizedBox(
                  height: 34,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    allExpensesItemModel.title,
                    style: Styles.styleMedium16(context),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    allExpensesItemModel.date,
                    style: Styles.styleRegular14(context),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    allExpensesItemModel.price,
                    style: Styles.styleSemiBold24(context),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
