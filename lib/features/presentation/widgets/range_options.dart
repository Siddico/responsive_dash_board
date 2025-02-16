import 'package:dashapp/utils/styles.dart';
import 'package:flutter/material.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xfff1f1f1), width: 1)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(
              'Monthly',
              style: Styles.styleMedium16(context),
            ),
            SizedBox(
              width: 18,
            ),
            Transform.rotate(
                angle: -1.57079633, // 90 degree with redian
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff064060),
                ))
          ],
        ),
      ),
    );
  }
}
