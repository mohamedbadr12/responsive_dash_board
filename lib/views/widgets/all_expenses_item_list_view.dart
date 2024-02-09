import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});
  static const List expenses=[
    AllExpensesItemModel(title: "Balance", image: Assets.imagesBalance, price: r"$20,129", date: "April 2022"),
    AllExpensesItemModel(title: "Income", image: Assets.imagesIncome, price: r"$20,129", date: "April 2022"),
    AllExpensesItemModel(title: "Expenses", image: Assets.imagesExpenses, price: r"$20,129", date: "April 2022"),

  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      //children: expenses.map((e) => Expanded(child: Padding(padding:const EdgeInsets.only(left: 12),child: AllExpensesItem(allExpensesItemModel: e)))).toList(),

      children: expenses.asMap().entries.map((e){
        int index=e.key;
        var item=e.value;
        return index==1 ?Expanded(child: Padding(padding:const EdgeInsets.symmetric(horizontal: 12),child: AllExpensesItem(allExpensesItemModel: item, isSelected: false,))):
        Expanded(child: AllExpensesItem(allExpensesItemModel: item, isSelected: false,));
        
      }).toList(),
    );
      
  }
}
