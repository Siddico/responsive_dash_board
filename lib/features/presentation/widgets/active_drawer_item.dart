import 'package:dashapp/features/models/drawer_item_model.dart';
import 'package:dashapp/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: Text(
          drawerItemModel.title,
          style: Styles.styleBold16(context),
        ),
        trailing: Container(
          width: 3.27,
          decoration: BoxDecoration(color: Color(0xff4ed7f2)),
        ),
      ),
    );
  }
}
