import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        SizedBox(
          height: 48,
          width: 48,
          child: CircleAvatar(
            backgroundColor: const Color(0xffFAFAFA),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                Assets.imagesAdd,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
