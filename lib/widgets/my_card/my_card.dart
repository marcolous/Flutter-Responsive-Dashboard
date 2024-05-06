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
        const Text('My card', style: AppStyles.styleSemiBold20),
        const Gap(20),
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                  child: Column(
                    children: [
                      MyCardListTile(),
                      Expanded(child: Gap(55)),
                      CardDetails(
                        title: '0918 8124 0042 8129',
                        style: AppStyles.styleSemiBold24,
                      ),
                      Gap(12),
                      CardDetails(
                        title: '12/20 - 124',
                        style: AppStyles.styleRegular16,
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
