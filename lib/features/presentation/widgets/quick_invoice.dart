import 'package:dashapp/features/presentation/widgets/custom_background_container.dart';
import 'package:dashapp/features/presentation/widgets/latest_transaction_section.dart';
import 'package:dashapp/features/presentation/widgets/quick_invoice_form.dart';
import 'package:flutter/material.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        widget: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransactionSection(),
        Divider(
          color: Color(0xfff1f1f1),
          height: 36, //48
        ),
        QuickInvoiceForm()
      ],
    ));
  }
}
