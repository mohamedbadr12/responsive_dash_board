
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/views/widgets/detailed_income_chart.dart';

import 'income_chart.dart';
import 'income_detail.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.sizeOf(context).width;
    return width>SizeConfig.desktop&&width<1350?const Expanded(child: Padding(
      padding: EdgeInsets.all(16),
      child: DetailedIncomeChart(),
    )):
    const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: IncomeChart(),
        ),
        Expanded(flex: 2,
          child: IncomeDetail(),
        )
      ],
    );

  }
}
