import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/all_expensess_header.dart';
import 'package:responsive_dash_board/widget/all_expensses_item.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: const Column(
        children: [
          AllExpensessHeader(),
          AllExpenssesItem(
            itemModel: AllExpenssesItemModel(
                image: Assets.assetsImagesIncome,
                date: 'April 2022',
                title: 'Income',
                price: r'$20,129'),
          ),
        ],
      ),
    );
  }
}
