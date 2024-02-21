import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/range_option.dart';

import '../../utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            'Income',
            style:Styles.styleSemiBold20(context)
        ),
        const RangeOption()
      ],
    );
  }
}