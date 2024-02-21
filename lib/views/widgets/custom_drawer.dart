import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/views/widgets/active_inactive_drawer_item.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

import '../../model/drawer_item_model.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*.7,
     color: Colors.white,
      child:  const CustomScrollView(slivers: [
        SliverToBoxAdapter(child:
        UserInfoListTile(
          userInfoModel: UserInfoModel(title: "Lekan Okeowo", subtitle: "demo@gmail.com", image: Assets.imagesAvatar3),)),
        SliverToBoxAdapter(child: SizedBox(height: 8,)),
        DrawerItemListView(),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Column(children: [
          Expanded(child: SizedBox(height: 20,)),
        
          InActiveDrawer(drawerItemModel: DrawerItemModel(title: "Setting system", image: Assets.imagesSettings)),
          InActiveDrawer(drawerItemModel: DrawerItemModel(title: "Logout account", image: Assets.imagesLogout)),
          SizedBox(height: 48,)
        
        ],),
      )
      ],),
    );
  }
}


