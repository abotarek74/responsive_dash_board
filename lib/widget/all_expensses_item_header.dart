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
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Colors.white,
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: const Icon(
              color: Color(0XFF064061), Icons.arrow_back_ios_new_outlined),
        )
      ],
    );
  }
}
