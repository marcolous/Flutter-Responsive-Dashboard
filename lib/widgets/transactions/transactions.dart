import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20,
            ),
            Text(
              'See all',
              style: AppStyles.styleMedium16
                  .copyWith(color: const Color(0xff4EB7F2)),
            ),
          ],
        ),
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

class CustomTransactionContainer extends StatelessWidget {
  const CustomTransactionContainer({
    super.key,
    required this.isTrue,
  });
  final bool isTrue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffFAFAFA),
        ),
        child: ListTile(
          title: const Text(
            'Cash Withdrawal',
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              '13 Apr, 2022 at 3:30 PM',
              style: AppStyles.styleRegular16
                  .copyWith(color: const Color(0xffAAAAAA)),
            ),
          ),
          trailing: Text(
            r'$20,129',
            style: AppStyles.styleSemiBold20.copyWith(
              color: isTrue ? const Color(0xff7DD97B) : const Color(0xffF3735E),
            ),
          ),
        ),
      ),
    );
  }
}
