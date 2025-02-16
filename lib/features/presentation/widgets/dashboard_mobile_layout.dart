import 'package:flutter/material.dart';

import 'all_expense_and_quick_invoice.dart';
import 'income_section.dart';
import 'my_card_and_transaction_history.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoices(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: MyCardAndTransactionHistory(),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IncomeSection(),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
