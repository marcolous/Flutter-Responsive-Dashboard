import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/custom_widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/custom_widgets/custom_divider.dart';
import 'package:responsive_dashboard/widgets/my_card/dots_indicator.dart';
import 'package:responsive_dashboard/widgets/my_card/my_card.dart';
import 'package:responsive_dashboard/widgets/transactions/transactions.dart';

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
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    //log(MediaQuery.sizeOf(context).width.toString());
    return CustomContainer(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCard(pageController: pageController),
          const Gap(15),
          DotsIndicator(currentPageIndex: currentPageIndex),
          const CustomDivider(),
          const Transactions(),
        ],
      ),
    );
  }
}
