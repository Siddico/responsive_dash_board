import 'package:dashapp/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle:
            Styles.styleRegular16(context).copyWith(color: Color(0xffaaaaaa)),
        hintText: hint,
        fillColor: Color(0xfffafafa),
        filled: true,
        border: OutlinedInputBorderStyle(),
        enabledBorder: OutlinedInputBorderStyle(),
        focusedBorder: OutlinedInputBorderStyle(),
      ),
    );
  }

  OutlineInputBorder OutlinedInputBorderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Color(0xfffafafa),
      ),
    );
  }
}
