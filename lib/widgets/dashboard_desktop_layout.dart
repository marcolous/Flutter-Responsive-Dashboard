import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class DashBoardLayout extends StatelessWidget {
  const DashBoardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(flex: 3, child: SizedBox()),
        Expanded(flex: 2, child: SizedBox()),
      ],
    );
  }
}
