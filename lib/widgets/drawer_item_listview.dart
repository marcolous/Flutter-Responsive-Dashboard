import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawe_item_model.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({
    super.key,
    required this.draweItem,
  });

  final List<DraweItemModel> draweItem;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: draweItem.length,
      itemBuilder: (context, index) =>
          DrawerItem(draweItemModel: draweItem[index]),
    );
  }
}
