import 'package:dashapp/features/presentation/widgets/custom_dot_indecator.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
            3,
            (index) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CustomDotIndecator(
                    isActive: index == currentPageIndex,
                  ),
                )));
  }
}
