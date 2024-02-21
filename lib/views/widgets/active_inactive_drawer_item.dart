import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/drawer_item_model.dart';
import '../../utils/app_styles.dart';

class InActiveDrawer extends StatelessWidget {
  const InActiveDrawer({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title:  Text(drawerItemModel.title,style: Styles.styleMedium16(context),),
    );
  }
}
class ActiveDrawer extends StatelessWidget {
  const ActiveDrawer({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title:  Text(drawerItemModel.title,style: Styles.styleBold16(context),),
      trailing: Container(
        width: 3.27,
        color: const Color(0xFF4EB7F2),
      ),
    );
  }
}