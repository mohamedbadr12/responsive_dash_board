import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/range_option.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text("All Expenses",style: Styles.styleSemiBold20,),
        const Expanded(child: SizedBox()),
        const RangeOption()


      ],

    );
  }
}


