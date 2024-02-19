import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            'Transaction History',
            style: Styles.styleSemiBold20
        ),
        Text(
            'See all',
            style: Styles.styleMedium16.copyWith(color: const Color(0xFF4EB7F2),)
        )
      ],
    );
  }
}