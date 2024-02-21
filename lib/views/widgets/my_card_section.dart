import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/dots_indicators.dart';
import 'package:responsive_dash_board/views/widgets/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentIndex=0;
  @override
  void initState() {
    pageController=PageController();
    pageController.addListener(() {
      currentIndex=pageController.page!.round();
      setState(() {
      });
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 420,
          child: Text(
            'My card',
            style: Styles.styleSemiBold20(context)
            ),
        ),
        const SizedBox(height: 20,),
         MyCardPageView(pageController: pageController),
        const SizedBox(height: 20,),

         DotsIndicators(currentIndex: currentIndex,)

      ],
    );
  }
}
