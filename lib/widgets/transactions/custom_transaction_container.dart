import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

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
