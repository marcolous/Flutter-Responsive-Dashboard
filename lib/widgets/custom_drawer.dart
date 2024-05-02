import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawe_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item_listview.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DraweItemModel> draweItem = [
    DraweItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DraweItemModel(image: Assets.imagesMyTransaction, title: 'My Transaction'),
    DraweItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DraweItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DraweItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesFrame3,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
          DrawerItemListView(draweItem: draweItem)
        ],
      ),
    );
  }
}
