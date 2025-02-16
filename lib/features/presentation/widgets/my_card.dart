import 'package:dashapp/utils/app_iamges.dart';
import 'package:dashapp/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
              image: AssetImage(
                Assets.imagesCardBackground,
              ),
              fit: BoxFit.fill),
          color: Color(0xff4eb7f2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 42.0, left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Name Card',
                  style: Styles.styleRegular16(context)
                      .copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  'Syah Bandi',
                  style: Styles.styleMedium20(context),
                ),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: Styles.styleSemiBold24(context)
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20 - 124',
                    style: Styles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
              Flexible(
                  child: SizedBox(
                height: 31,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
