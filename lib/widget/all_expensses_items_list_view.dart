import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/all_expensses_item.dart';

class AllExpenssesItemsListView extends StatelessWidget {
  const AllExpenssesItemsListView({super.key});
  static const items = [
    AllExpenssesItemModel(
        image: Assets.assetsImagesBalance,
        date: 'April 2022',
        title: 'Balance',
        price: r'$20,129'),
    AllExpenssesItemModel(
        image: Assets.assetsImagesIncome,
        date: 'April 2022',
        title: 'Income',
        price: r'$20,129'),
    AllExpenssesItemModel(
        image: Assets.assetsImagesExpenses,
        date: 'April 2022',
        title: 'Expenses',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map((e) => Expanded(
              child: AllExpenssesItem(isSelected: false, itemModel: e)))
          .toList(),
    );
  }
}
