import 'package:dashapp/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.backGroundColor, this.textColor, required this.title});
  final String title;
  final Color? textColor, backGroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
          backgroundColor: backGroundColor ?? Color(0xff4db7f2),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: Styles.styleSemiBold18(context)
              .copyWith(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
