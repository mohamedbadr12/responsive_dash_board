import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/my_card_section.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_list_view.dart';
import 'package:responsive_dash_board/views/widgets/transction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        MyCardSection(),
        Divider(height: 40,color: Color(0xffF1F1F1),),
        TransactionHistory()
      ],

    ));
  }
}