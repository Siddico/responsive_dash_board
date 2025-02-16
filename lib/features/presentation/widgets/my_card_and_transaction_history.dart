import 'package:dashapp/features/presentation/widgets/custom_background_container.dart';
import 'package:dashapp/features/presentation/widgets/my_card_section.dart';
import 'package:dashapp/features/presentation/widgets/transaction_history.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        widget: Column(
      children: [
        MyCardSection(),
        Divider(
          height: 40,
          color: Color(0xfff1f1f1),
        ),
        TransactionHistory()
      ],
    ));
  }
}
