import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensses_item_model.dart';
import 'package:responsive_dash_board/widget/inactive_and_active_all_exprnsses_item.dart';

class AllExpenssesItem extends StatelessWidget {
  const AllExpenssesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpenssesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpenssesItem(itemModel: itemModel)
        : InActiveAllExpenssesItem(itemModel: itemModel);
  }
}
