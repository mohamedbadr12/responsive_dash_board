import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List transaction=[
    UserInfoModel(title: "Madrani Andi", subtitle: "Madraniadi20@gmail", image: Assets.imagesAvatar1),
    UserInfoModel(title: "Josua Nunito", subtitle: "Josh Nunito@gmail.com", image: Assets.imagesAvatar2),
    UserInfoModel(title: "Madrani Andi", subtitle: "Madraniadi20@gmail", image: Assets.imagesAvatar3),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: transaction.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e))).toList(),
      ),
    );
    // return SizedBox(height: 70,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: transaction.length,
    //     itemBuilder: (context, index) {
    //     return IntrinsicWidth(child: UserInfoListTile(userInfoModel: transaction[index],));
    //
    //   },),
    // );
  }
}
