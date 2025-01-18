import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpenssesItemHeader extends StatelessWidget {
  const AllExpenssesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: Colors.white,
          ),
          child: SvgPicture.asset(assetName),
        ),
      ],
    );
  }
}
