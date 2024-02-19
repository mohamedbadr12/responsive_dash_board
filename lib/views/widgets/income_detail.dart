import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/item_detail_model.dart';
import 'package:responsive_dash_board/views/widgets/item_detail.dart';

class IncomeDetail extends StatelessWidget {
  const IncomeDetail({super.key,});

  static const List itemDetail=[
    ItemDetailModel(title: "Design service", percentage: "40%", color: Color(0xFF208BC7),),
    ItemDetailModel(title: "Design product", percentage: "25%", color: Color(0xFF4DB7F2),),
    ItemDetailModel(title: "Product royalti", percentage: "20%", color: Color(0xFF064060),),
    ItemDetailModel(title: "Other", percentage: "22%", color: Color(0xFFE2DECD),),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: itemDetail.length,
      itemBuilder: (context, index) {
      return ItemDetails(itemDetailModel: itemDetail[index]);
    },) ;

  }
}


