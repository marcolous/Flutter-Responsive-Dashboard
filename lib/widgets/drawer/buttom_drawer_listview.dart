import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawe_item_model.dart';
import 'package:responsive_dashboard/widgets/drawer/drawer_item.dart';

class ButtomDrawerListview extends StatefulWidget {
  const ButtomDrawerListview({super.key, required this.draweItem});

  final List<DrawerItemModel> draweItem;

  @override
  State<ButtomDrawerListview> createState() => _ButtomDrawerListviewState();
}

class _ButtomDrawerListviewState extends State<ButtomDrawerListview> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.draweItem.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: DrawerItem(
            drawerItemModel: widget.draweItem[index],
            isActive: (activeIndex == index),
          ),
        );
      },
    );
  }
}
