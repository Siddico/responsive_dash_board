import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imageColor,
      this.imageBackgroundColor,
      this.iconColor});
  final String image;
  final Color? imageColor, imageBackgroundColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 60,
              maxHeight: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // width: 60,
                // height: 60,
                decoration: ShapeDecoration(
                    color: imageBackgroundColor ?? Color(0xfff1f1f1),
                    shape: OvalBorder()),
                child: Center(
                    child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                      imageColor ?? Color(0xff4eb7f2), BlendMode.srcIn),
                )),
              ),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Icon(Icons.arrow_forward_ios, color: iconColor ?? Color(0xff064060))
      ],
    );
  }
}
