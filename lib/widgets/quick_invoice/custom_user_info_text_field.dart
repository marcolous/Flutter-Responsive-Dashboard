import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomUserInfoTextField extends StatelessWidget {
  const CustomUserInfoTextField({
    super.key,
    required this.title,
    required this.hintText,
    this.suffixIcon,
  });
  final String title, hintText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.styleMedium16,
          ),
          const Gap(12),
          SizedBox(
            //width: 270,
            height: 60,
            child: Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffFAFAFA),
                  hintText: hintText,
                  hintStyle: AppStyles.styleRegular16
                      .copyWith(color: const Color(0xffAAAAAA)),
                  enabledBorder: textFieldOutlineInputBorder(),
                  focusedBorder: textFieldOutlineInputBorder(),
                  suffixIcon: suffixIcon,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  OutlineInputBorder textFieldOutlineInputBorder() {
    return const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffFAFAFA)),
        borderRadius: BorderRadius.all(Radius.circular(12)));
  }
}
