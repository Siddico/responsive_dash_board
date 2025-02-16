import 'package:dashapp/features/models/drawer_item_model.dart';
import 'package:dashapp/features/presentation/widgets/active_drawer_item.dart';
import 'package:dashapp/features/presentation/widgets/inactive_drawer_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerItem extends StatelessWidget {
  DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InactiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
