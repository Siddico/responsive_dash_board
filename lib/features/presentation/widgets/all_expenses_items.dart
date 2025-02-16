import 'package:dashapp/features/models/all_expenses_item_model.dart';
import 'package:dashapp/features/presentation/widgets/active_item.dart';
import 'package:dashapp/features/presentation/widgets/non_active_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItems extends StatelessWidget {
  const AllExpensesItems(
      {super.key, required this.allExpensesItemModel, required this.isActive});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(allExpensesItemModel: allExpensesItemModel)
        : NonActiveItem(allExpensesItemModel: allExpensesItemModel);
  }
}
