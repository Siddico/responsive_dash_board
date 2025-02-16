import 'package:dashapp/features/models/drawer_item_model.dart';
import 'package:dashapp/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class InactiveDrawerItem extends StatelessWidget {
  const InactiveDrawerItem({
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
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            drawerItemModel.title,
            style: Styles.styleMedium16(context),
          ),
        ),
      ),
    );
  }
}
