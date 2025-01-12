import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/drwaeer_items_list_view.dart';
import 'package:responsive_dash_board/widget/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: Assets.assetsImagesFrame3,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItemsListView()
        ],
      ),
    );
  }
}
