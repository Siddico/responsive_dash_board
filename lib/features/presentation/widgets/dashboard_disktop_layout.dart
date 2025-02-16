import 'package:dashapp/features/presentation/widgets/all_history_transaction_and_income_section.dart';
import 'package:dashapp/features/presentation/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import 'all_expense_and_quick_invoice.dart';

class DashboardDisktopLayout extends StatelessWidget {
  const DashboardDisktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        SizedBox(
          width: 12,
        ),
        Expanded(
            flex: 10,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: AllExpensesAndQuickInvoices(),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        flex: 3,
                        child: AllHistoryTransactionAndIncomeSection(),
                        // IncomeSection(),
                      ),
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
