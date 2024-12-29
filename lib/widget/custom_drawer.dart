import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_items_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/drawer_item.dart';
import 'package:responsive_dash_board/widget/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemsModel> items = [
    DrawerItemsModel(title: 'Dashboard', image: Assets.assetsImagesDashboard),
    DrawerItemsModel(
        title: 'My Transaction', image: Assets.assetsImagesMytransaction),
    DrawerItemsModel(title: 'Statistics', image: Assets.assetsImagesStatistics),
    DrawerItemsModel(
        title: 'Wallet Account', image: Assets.assetsImagesWalletaccount),
    DrawerItemsModel(
        title: 'My Investments', image: Assets.assetsImagesMyinvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoListTile(
            image: Assets.assetsImagesFrame3,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          const SizedBox(
            height: 8,
          ),
          ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: DrawerItem(drawerItemsModel: items[index]),
              );
            },
          )
        ],
      ),
    );
  }
}
