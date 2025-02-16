import 'package:dashapp/features/models/item_details_model.dart';
import 'package:dashapp/features/presentation/widgets/item_details.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static final items = [
    ItemDetailsModel(
        title: 'Design Service', percentage: '40%', color: Color(0xff208bc7)),
    ItemDetailsModel(
        title: 'Design Product', percentage: '25%', color: Color(0xff4db7f2)),
    ItemDetailsModel(
        title: 'Product Royalti', percentage: '20%', color: Color(0xff064060)),
    ItemDetailsModel(
        title: 'Other', percentage: '22%', color: Color(0xffe2decd)),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    ); // to solve error of shrinkwrap of listview with custom scroll view we used we need to replace listview with column and map element and this will have no effect on app
    // return ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return ItemDetails(itemDetailsModel: items[index]);
    //     });
  }
}
