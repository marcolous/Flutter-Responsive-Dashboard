import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/drawer/user_info_list_tile.dart';

class QuickInvoiceLatestTransaction extends StatelessWidget {
  const QuickInvoiceLatestTransaction({super.key});
  static List<UserInfoModel> transactions = [
    UserInfoModel(
        image: Assets.imagesFrame,
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesFrame2,
        name: 'Josua Nunito',
        email: 'JoshNunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesFrame,
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        const Gap(12),
        //Solution 1 for horizontal listview (its height based on its child, lower performance, for few items)
        SingleChildScrollView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: transactions
                .map((e) =>
                    IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
                .toList(),
          ),
        ),
        //Solution 2 for horizontal listview (need spacific height, better performance, for many items)
        // SizedBox(
        //   height: 90,
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: transactions.length,s
        //     itemBuilder: (context, index) {
        //       return IntrinsicWidth(
        //         child: UserInfoListTile(
        //           userInfoModel: transactions[index],
        //         ),
        //       );
        //     },
        //   ),
        // ),
      ],
    );
  }
}
