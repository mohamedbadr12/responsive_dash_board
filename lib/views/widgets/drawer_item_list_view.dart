import 'package:flutter/material.dart';

import '../../model/drawer_item_model.dart';
import '../../utils/app_assets.dart';
import 'drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });


  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
int activeIndex=0;
final List<DrawerItemModel> items=[
  const DrawerItemModel(title: "Dashboard", image: Assets.imagesDashboard),
  const DrawerItemModel(title: "My Transaction", image: Assets.imagesMyTransctions),
  const DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
  const DrawerItemModel(title: "Wallet Account", image: Assets.imagesWalletAccount),
  const DrawerItemModel(title: "My Investments", image: Assets.imagesMyInvestments),

];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(onTap: () {
          if (activeIndex!=index) {
            setState(() {
              activeIndex=index;
              print(activeIndex);
            });
          }
        },
          child: Padding(padding: const EdgeInsets.only(top: 20), child: DrawerItem(
              drawerItemModel: items[index],
            isActive: activeIndex==index ,
          )),
        );
      },);
  }
}