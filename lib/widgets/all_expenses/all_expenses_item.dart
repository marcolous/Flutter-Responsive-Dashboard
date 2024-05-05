import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpensesItem extends StatefulWidget {
  const AllExpensesItem(
      {super.key, required this.isActive, required this.allExpensesItemModel});
  final bool isActive;
  final AllExpensesItemModel allExpensesItemModel;

  @override
  State<AllExpensesItem> createState() => _AllExpensesItemState();
}

class _AllExpensesItemState extends State<AllExpensesItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      margin: const EdgeInsets.only(right: 12),
      decoration: ShapeDecoration(
        color: widget.isActive ? const Color(0xff4EB7F2) : Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: widget.isActive
                    ? const Color(0xffFFFFFF).withOpacity(.1)
                    : const Color(0xffFAFAFA),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    widget.allExpensesItemModel.image,
                    colorFilter: ColorFilter.mode(
                        widget.isActive
                            ? const Color(0xffFFFFFF)
                            : const Color(0xff4EB7F2),
                        BlendMode.srcIn),
                  ),
                ),
              ),
              const Gap(56),
              Transform.rotate(
                angle: -3.14159,
                child: Icon(Icons.arrow_back_ios_new_rounded,
                    color: widget.isActive
                        ? const Color(0xffFFFFFF)
                        : const Color(0xff064061)),
              )
            ],
          ),
          const Gap(34),
          Text(
            widget.allExpensesItemModel.title,
            style: widget.isActive
                ? AppStyles.styleSemiBold16
                    .copyWith(color: const Color(0xffFFFFFF))
                : AppStyles.styleSemiBold16,
          ),
          Text(
            widget.allExpensesItemModel.date,
            style: widget.isActive
                ? AppStyles.styleRegular14
                    .copyWith(color: const Color(0xffFFFFFF))
                : AppStyles.styleRegular14,
          ),
          Text(
            widget.allExpensesItemModel.price,
            style: widget.isActive
                ? AppStyles.styleSemiBold24
                    .copyWith(color: const Color(0xffFFFFFF))
                : AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
