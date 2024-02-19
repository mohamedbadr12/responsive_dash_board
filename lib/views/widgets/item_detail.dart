import 'package:flutter/material.dart';

import '../../model/item_detail_model.dart';
import '../../utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailModel});
  final ItemDetailModel itemDetailModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:  ShapeDecoration(
          color:itemDetailModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(itemDetailModel.title
          ,
          style: Styles.styleRegular16
      ),
      trailing: Text(
          itemDetailModel.percentage,
          style:Styles.styleMedium16
      ),
    );
  }
}