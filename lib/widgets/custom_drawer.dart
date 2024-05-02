import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/drawe_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item_listview.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> draweItem = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransaction, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];

  // static const List<DraweItemModel> draweItemBottom = [
  //   DraweItemModel(image: Assets.imagesSettings, title: 'Setting system'),
  //   DraweItemModel(image: Assets.imagesLogout, title: 'Logout account'),
  // ];

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserInfoListTile(
          image: Assets.imagesFrame3,
          title: 'Lekan Okeowo',
          subTitle: 'demo@gmail.com',
        ),
        DrawerItemListView(draweItem: draweItem),
        Expanded(child: Gap(20)),
        //DrawerItemListView(draweItem: draweItemBottom),
        Gap(48)
      ],
    );
  }
}
