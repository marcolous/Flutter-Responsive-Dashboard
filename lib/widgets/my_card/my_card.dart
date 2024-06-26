import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/my_card/card_details.dart';
import 'package:responsive_dashboard/widgets/my_card/my_card_list_tile.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppStyles.styleSemiBold20(context)),
        const Gap(15),
        ExpandablePageView(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          children: List.generate(
            3,
            (index) => AspectRatio(
              aspectRatio: 420 / 215,
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(Assets.imagesCardBackground)),
                  color: const Color(0xFF4EB7F2),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                  child: Column(
                    children: [
                      const MyCardListTile(),
                      const Expanded(child: Gap(1)),
                      CardDetails(
                        title: '0918 8124 0042 8129',
                        style: AppStyles.styleSemiBold24(context),
                      ),
                      const Gap(5),
                      CardDetails(
                        title: '12/20 - 124',
                        style: AppStyles.styleRegular16(context),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        //const CustomAnimatedDotIndicator(isActive: false)
      ],
    );
  }
}
