import 'package:flutter/material.dart';

import '../../model/all_expenses_item_model.dart';
import '../../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1,color: const Color(0xFFF1F1F1))
      ),
      child:  Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: allExpensesItemModel.image),
          const SizedBox(
            height: 34,
          ),
          Text(allExpensesItemModel.title,style: Styles.styleSemiBold16,),
          const SizedBox(height: 8,),
          Text(allExpensesItemModel.date,style: Styles.styleRegular14,),
          const SizedBox(height: 16,),
          Text(allExpensesItemModel.price,style: Styles.styleSemiBold24,)

        ],
      ),
    );
  }
}
class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1,color: const Color(0xFFF1F1F1))
      ),
      child:  Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: allExpensesItemModel.image),
          const SizedBox(
            height: 34,
          ),
          Text(allExpensesItemModel.title,style: Styles.styleSemiBold16,),
          const SizedBox(height: 8,),
          Text(allExpensesItemModel.date,style: Styles.styleRegular14,),
          const SizedBox(height: 16,),
          Text(allExpensesItemModel.price,style: Styles.styleSemiBold24,)

        ],
      ),
    );
  }
}
