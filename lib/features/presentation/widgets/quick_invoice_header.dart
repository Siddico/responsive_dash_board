import 'package:flutter/material.dart';

import '../../../utils/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: Styles.styleSemiBold20(context),
        ),
        Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration:
              ShapeDecoration(shape: OvalBorder(), color: Color(0xfffafafa)),
          child: Center(
            child: Icon(
              Icons.add,
              color: Color(0xff4eb7f2),
            ),
          ),
        )
      ],
    );
  }
}
