import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widget/dashboard_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F9FA),
      body: AdaptiveLayout(
          mobilLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
