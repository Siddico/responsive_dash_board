import 'package:dashapp/features/presentation/widgets/all_expenses_header.dart';
import 'package:dashapp/features/presentation/widgets/all_expenses_items_list.dart';
import 'package:flutter/material.dart';

import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      widget: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 20,
          ),
          AllExpensesItemsList()
        ],
      ),
    );
  }
}
