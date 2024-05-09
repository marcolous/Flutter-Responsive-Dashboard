import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/views/dashboard_phone_layout.dart';
import 'package:responsive_dashboard/views/dashboard_tablet_layout.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/views/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  bool showAppBar = true;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? buildAppBar()
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardPhoneLayout(),
          tabletLayout: (context) => const DashBoardTabletLayout(),
          desktopLayout: (context) => const DashBoardDesktopLayout()),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xff4EB7F2),
      leading: IconButton(
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
        icon: const Icon(
          Icons.menu_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
