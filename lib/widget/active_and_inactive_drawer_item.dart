import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_items_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemsModel,
  });

  final DrawerItemsModel drawerItemsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemsModel.image),
      title: Text(
        drawerItemsModel.title,
        style: AppStyles.styleRegular16,
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemsModel,
  });

  final DrawerItemsModel drawerItemsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemsModel.image),
      title: Text(
        drawerItemsModel.title,
        style: AppStyles.styleBold16,
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0XFF4EB7F2)),
      ),
    );
  }
}
