import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transactions/custom_transaction_container.dart';
import 'package:responsive_dashboard/widgets/transactions/transaction_header.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHeader(),
        const Gap(20),
        Text(
          '13 April 2022',
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0xffAAAAAA)),
        ),
        const Gap(4),
        const CustomTransactionContainer(isTrue: false),
        const CustomTransactionContainer(isTrue: true),
        const CustomTransactionContainer(isTrue: true),
      ],
    );
  }
}



