// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/drawe_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer/drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer/drawer_item_listview.dart';
import 'package:responsive_dashboard/widgets/drawer/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> draweItem = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransaction, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];

  static const List<DrawerItemModel> draweItemBottom = [
    DrawerItemModel(image: Assets.imagesSettings, title: 'Setting system'),
    DrawerItemModel(image: Assets.imagesLogout, title: 'Logout account'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFFFFF),
      width: 300,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                  image: Assets.imagesFrame3,
                  name: 'Lekan Okeowo',
                  email: 'demo@gmail.com',
                ),
              ),
            ),
          ),
          const DrawerItemListView(draweItem: draweItem),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: Gap(10)),
                DrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Settings', image: Assets.imagesSettings),
                    isActive: false),
                DrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout', image: Assets.imagesLogout),
                    isActive: false),
                Gap(48)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
