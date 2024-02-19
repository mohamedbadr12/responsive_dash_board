import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_dot_indicator.dart';

class DotsIndicators extends StatelessWidget {
  const DotsIndicators({super.key, required this.currentIndex});
final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: List.generate(3, (index) =>  Padding(padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndicator(isActive: index==currentIndex))),
    );
  }
}
