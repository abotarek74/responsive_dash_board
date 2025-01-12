import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_items_model.dart';
import 'package:responsive_dash_board/widget/active_and_inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemsModel, required this.isActive});
  final DrawerItemsModel drawerItemsModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemsModel: drawerItemsModel)
        : InActiveDrawerItem(drawerItemsModel: drawerItemsModel);
  }
}
