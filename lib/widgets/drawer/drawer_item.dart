import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawe_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            drawerItemModel.title,
            style: isActive ? AppStyles.styleBold16(context) : AppStyles.styleRegular16(context),
          ),
        ),
        trailing: isActive
            ? Container(
                width: 3.27,
                decoration: const BoxDecoration(color: Color(0xff4EB7F2)),
              )
            : null,
      ),
    );
  }
}
