import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.white,
      child: const Column(children: [
        UserInfoListTile(title: "Lekan Okeowo", subtitle: "demo@gmail.com", image: Assets.imagesAvatar3)

      ],),
    );
  }
}
