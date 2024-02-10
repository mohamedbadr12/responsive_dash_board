import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import 'latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text("Latest Transaction",style: Styles.styleMedium16,),
        LatestTransactionListView()
      ],
    );
  }
}
