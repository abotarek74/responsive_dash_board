import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/models/drawer_items_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;

  final List<DrawerItemsModel> items = const [
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
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemsModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
