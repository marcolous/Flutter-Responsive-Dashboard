import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/my_card/dots_indicator.dart';
import 'package:responsive_dashboard/widgets/my_card/my_card.dart';

class MyCardAndTransactionHistory extends StatefulWidget {
  const MyCardAndTransactionHistory({super.key});
  @override
  State<MyCardAndTransactionHistory> createState() =>
      _MyCardAndTransactionHistoryState();
}

class _MyCardAndTransactionHistoryState
    extends State<MyCardAndTransactionHistory> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.toInt();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.all(24),
      height: 712,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCard(pageController: pageController),
          const Gap(20),
          DotsIndicator(currentPageIndex: currentPageIndex)
        ],
      ),
    );
  }
}