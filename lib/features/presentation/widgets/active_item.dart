import 'package:flutter/material.dart';

import '../../../utils/styles.dart';
import '../../models/all_expenses_item_model.dart';
import 'all_expenses_item_header.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff4eb7f2),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color(0xfff1f1f1), width: 1),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AllExpensesItemHeader(
                    iconColor: Colors.white,
                    imageBackgroundColor:
                        Colors.white.withOpacity(0.10000000149011612),
                    imageColor: Colors.white,
                    image: allExpensesItemModel.image,
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      allExpensesItemModel.title,
                      style: Styles.styleMedium16(context)
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      allExpensesItemModel.date,
                      style: Styles.styleRegular14(context)
                          .copyWith(color: Color(0xfffafafa)),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      allExpensesItemModel.price,
                      style: Styles.styleSemiBold24(context)
                          .copyWith(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
