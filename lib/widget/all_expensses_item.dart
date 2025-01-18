import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expensess_header.dart';
import 'package:responsive_dash_board/widget/all_expensses_item_header.dart';

class AllExpenssesItem extends StatelessWidget {
  const AllExpenssesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1,
            color: Color(0XFFF1F1F1),
          ),
        ),
      ),
      child: Column(
        children: [
          AllExpenssesItemHeader(),
        ],
      ),
    );
  }
}
