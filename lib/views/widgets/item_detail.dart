import 'package:flutter/material.dart';

import '../../model/item_detail_model.dart';
import '../../utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailModel});
  final ItemDetailModel itemDetailModel;
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(left: 16),
    //   child: FittedBox(fit: BoxFit.scaleDown,
    //     child: Row(
    //       children: [
    //         Container(
    //           width: 12,
    //           height: 12,
    //           decoration:  ShapeDecoration(
    //             color:itemDetailModel.color,
    //             shape: const OvalBorder(),
    //           ),
    //         ),
    //         SizedBox(width: 12,),
    //         Text(itemDetailModel.title
    //             ,
    //             style: Styles.styleRegular16
    //         ),
    //         SizedBox(width: 24,),
    //         Text(
    //             itemDetailModel.percentage,
    //             style:Styles.styleMedium16
    //         ),
    //       ],
    //     ),
    //   ),
    // );
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
          style: Styles.styleRegular16(context)
      ),
      trailing: Text(
          itemDetailModel.percentage,
          style:Styles.styleMedium16(context)
      ),
    );
  }
}