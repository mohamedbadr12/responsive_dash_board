import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/generated/assets.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(image: AssetImage(Assets.imagesCardBackground),fit: BoxFit.fill),
            color: const Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Column(
          children: [
            ListTile(contentPadding: const EdgeInsets.only(top: 16,right: 42,left: 31),
              title: Text("Name card",style: Styles.styleRegular16(context).copyWith(color: Colors.white)),
              subtitle: Text("Syah Bandi",style: Styles.styleMedium20(context),),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
           Padding(padding: const EdgeInsets.only(left: 24),
             child: Column(crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Text(
                     '0918 8124 0042 8129',
                     style: Styles.styleSemiBold24(context).copyWith(color: Colors.white)
                 ),
                 Text(
                     '12/20 -124',
                     style: Styles.styleRegular16(context).copyWith(color: Colors.white)
                 ),
               ],
             ),
           ),
            const Flexible(child: SizedBox(height: 54-28,))

          ],
        ),
      ),
    );
  }
}
