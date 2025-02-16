import 'package:dashapp/features/models/item_details_model.dart';
import 'package:dashapp/utils/styles.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration:
            ShapeDecoration(shape: OvalBorder(), color: itemDetailsModel.color),
      ),
      title: Text(
        itemDetailsModel.title,
        style: Styles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.percentage,
        style: Styles.styleMedium16(context),
      ),
    );
  }
}
