import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCardListTile extends StatelessWidget {
  const MyCardListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Card Owner',
        style: AppStyles.styleRegular16(context)
            .copyWith(color: Colors.white),
      ),
      subtitle:  Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          'Syah Bandi',
          style: AppStyles.styleMedium20(context),
        ),
      ),
      trailing: const Icon(Icons.credit_card_rounded),
    );
  }
}