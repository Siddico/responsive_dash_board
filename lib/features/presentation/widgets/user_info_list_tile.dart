import 'package:dashapp/features/models/user_info_list_tile_model.dart';
import 'package:dashapp/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoListTileModel});
  final UserInfoListTileModel userInfoListTileModel;
  // final String title, subtitle, image;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xfffafafa),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoListTileModel.image),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              '${userInfoListTileModel.title}',
              style: Styles.styleSemibold16(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              '${userInfoListTileModel.email}',
              style: Styles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
