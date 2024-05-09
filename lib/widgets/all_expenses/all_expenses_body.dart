import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses/all_expenses_item.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

class _AllExpensesBodyState extends State<AllExpensesBody> {
  static const List<AllExpensesItemModel> expensesItems = [
    AllExpensesItemModel(
        date: 'April 2024',
        image: Assets.imagesMoneys,
        price: r'$20,190',
        title: 'Balance'),
    AllExpensesItemModel(
        date: 'April 2024',
        image: Assets.imagesCardReceive,
        price: r'$20,190',
        title: 'Income'),
    AllExpensesItemModel(
        date: 'April 2024',
        image: Assets.imagesCardSend,
        price: r'$20,190',
        title: 'Expenses'),
  ];
  int isActive = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 200,
      child: Row(
        children: expensesItems.asMap().entries.map(
          (e) {
            int index = e.key;
            if (index == 1) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {
                      updateIndex(index);
                    },
                    child: AllExpensesItem(
                      isActive: isActive == index,
                      allExpensesItemModel: expensesItems[index],
                    ),
                  ),
                ),
              );
            } else {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    updateIndex(index);
                  },
                  child: AllExpensesItem(
                    isActive: isActive == index,
                    allExpensesItemModel: expensesItems[index],
                  ),
                ),
              );
            }
          },
        ).toList(),
      ),
    );
    // return Expanded(
    //   child: ListView.builder(
    //     padding: EdgeInsets.zero,
    //     scrollDirection: Axis.horizontal,
    //     shrinkWrap: true,
    //     physics: const NeverScrollableScrollPhysics(),
    //     itemCount: expensesItems.length,
    //     itemBuilder: (context, index) {
    //       return GestureDetector(
    //         onTap: () {
    //           if (isActive != index) {
    //             setState(() {
    //               isActive = index;
    //             });
    //           }
    //         },
    //         child: Expanded(
    //           child: AllExpensesItem(
    //             isActive: isActive == index,
    //             allExpensesItemModel: expensesItems[index],
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );

    // return Row(
    //     children: expensesItems
    //         .map((e) => AllExpensesItem(
    //               allExpensesItemModel: e,
    //               isActive: false,
    //             ))
    //         .toList());
  }

  void updateIndex(int index) {
    if (isActive != index) {
      setState(() {
        isActive = index;
      });
    }
  }
}
