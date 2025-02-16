import 'package:dashapp/features/models/user_info_list_tile_model.dart';
import 'package:dashapp/features/presentation/widgets/user_info_list_tile.dart';
import 'package:dashapp/utils/app_iamges.dart';
import 'package:flutter/material.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({
    super.key,
  });
  static final items = [
    UserInfoListTileModel(
        title: 'Madrani Andi',
        image: Assets.imagesAvatar1,
        email: 'madraniandi20@gmail.com'),
    UserInfoListTileModel(
        title: 'Josua Nuntio',
        image: Assets.imagesAvatar2,
        email: 'jusuanuntio20@gmail.com'),
    UserInfoListTileModel(
        title: 'Madrani Andi',
        image: Assets.imagesAvatar3,
        email: 'madraniandi20@gmail.com')
  ];
  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   height: 80, // guess work
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //             child: UserInfoListTile(userInfoListTileModel: items[index]));
    //       }),
    // );
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: items
            .map((e) => IntrinsicWidth(
                child: UserInfoListTile(userInfoListTileModel: e)))
            .toList(),
      ),
    );
  }
}
