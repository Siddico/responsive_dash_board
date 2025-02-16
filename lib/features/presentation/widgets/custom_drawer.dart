import 'package:dashapp/features/models/drawer_item_model.dart';
import 'package:dashapp/features/models/user_info_list_tile_model.dart';
import 'package:dashapp/features/presentation/widgets/drawer_item_list_view.dart';
import 'package:dashapp/features/presentation/widgets/inactive_drawer_item.dart';
import 'package:dashapp/features/presentation/widgets/user_info_list_tile.dart';
import 'package:dashapp/utils/app_iamges.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});
  final List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.65,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoListTileModel: UserInfoListTileModel(
                  title: 'Lekan Okeowo',
                  image: Assets.imagesAvatar3,
                  email: 'demo@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemListView(items: items),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InactiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Setting System', image: Assets.imagesSettings)),
                InactiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout Account', image: Assets.imagesLogout)),
                SizedBox(
                  height: 36,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
