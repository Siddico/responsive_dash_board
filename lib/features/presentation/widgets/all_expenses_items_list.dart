import 'package:dashapp/features/models/all_expenses_item_model.dart';
import 'package:dashapp/features/presentation/widgets/all_expenses_items.dart';
import 'package:dashapp/utils/app_iamges.dart';
import 'package:flutter/material.dart';

class AllExpensesItemsList extends StatefulWidget {
  AllExpensesItemsList({super.key});

  @override
  State<AllExpensesItemsList> createState() => _AllExpensesItemsListState();
}

class _AllExpensesItemsListState extends State<AllExpensesItemsList> {
  int selectedIndex = 0;
  static const items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20.129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20.129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20.129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // padding we use used as part of middle item here
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItems(
              allExpensesItemModel: items[0],
              isActive: selectedIndex == 0,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),

        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItems(
              allExpensesItemModel: items[1],
              isActive: selectedIndex == 1,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItems(
              allExpensesItemModel: items[2],
              isActive: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );

    // return Row(
    //     children:
    //         // items
    //         //     .map(
    //         //       (element) => Expanded(
    //         //           child: AllExpensesItems(allExpensesItemModel: element)),
    //         //     )
    //         //     .toList(),
    //         AllExpensesItemsList.items.asMap().entries.map((element) {
    //   int index = element.key;
    //   var item = element.value;
    //   return Expanded(
    //     child: GestureDetector(
    //       onTap: () {
    //         updateIndex(index);
    //       },
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12.0 : 0),
    //         child: AllExpensesItems(
    //           allExpensesItemModel: item,
    //           isActive: selectedIndex == index,
    //         ),
    //       ),
    //     ), // padding we use used as part of middle item here
    //   );
    // }).toList());
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
