import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image, this.imageBackGround, this.color});
final String image;
final Color? imageBackGround,color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(constraints:const BoxConstraints(maxWidth: 60) ,
            child: AspectRatio(aspectRatio:1 ,
              child: Container(
                width: 60,
                height: 60,
               decoration:  ShapeDecoration(
                 color:imageBackGround?? const Color(0xFFFAFAFA),
                   shape: const OvalBorder()),
                child: Center(child: SvgPicture.asset(image,colorFilter: ColorFilter.mode(color??const Color(0xFF4EB7F2), BlendMode.srcIn),)),
              ),
            ),
          ),
        ),
        const Spacer(),
         Icon(Icons.arrow_forward_ios_outlined,color:color==null? const Color(0xFF064061):Colors.white,)

      ],
    );
  }
}
