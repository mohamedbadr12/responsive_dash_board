import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';

import 'active_inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key,required this.drawerItemModel, required this.isActive});
 final DrawerItemModel drawerItemModel;
 final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive?ActiveDrawer(drawerItemModel: drawerItemModel): InActiveDrawer(drawerItemModel: drawerItemModel);
  }
}

