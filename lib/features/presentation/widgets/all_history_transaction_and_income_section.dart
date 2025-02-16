import 'package:dashapp/features/presentation/widgets/income_section.dart';
import 'package:dashapp/features/presentation/widgets/my_card_and_transaction_history.dart';
import 'package:flutter/material.dart';

class AllHistoryTransactionAndIncomeSection extends StatelessWidget {
  const AllHistoryTransactionAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 20), // vertical:40
      child: Column(
        children: [
          MyCardAndTransactionHistory(),
          SizedBox(
            height: 24,
          ),
          Expanded(
              child:
                  IncomeSection()), // when i remove expanded widget about mycardandtransactionhistory design not be responsive because list tile go down and do error in hieght so i will make it here till solve error of listtile when i come down
          // Expanded(
          //   // flex: 1,
          //   child:
          // ), // if there are eror but expanded
        ],
      ),
    );
  }
}
