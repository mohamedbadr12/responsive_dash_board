import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/dots_indicators.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transaction_history.dart';
import 'package:responsive_dash_board/views/widgets/my_card_section.dart';
import 'package:responsive_dash_board/views/widgets/my_cards_page_view.dart';
import 'package:responsive_dash_board/views/widgets/transction_history.dart';

import 'all_expenses_and_quick_invice_section.dart';

class DashBoardLayoutDesktop extends StatelessWidget {
  const DashBoardLayoutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(flex: 2,
            child: AllExpensesAndQuickInvoiceSection()),
        SizedBox(width: 24,),
      Expanded(child:IncomeSection())
      ],
    );
  }
}


