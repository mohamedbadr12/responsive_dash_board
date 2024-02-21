import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() => _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List expenses=[
    const AllExpensesItemModel(title: "Balance", image: Assets.imagesBalance, price: r"$20,129", date: "April 2022"),
    const AllExpensesItemModel(title: "Income", image: Assets.imagesIncome, price: r"$20,129", date: "April 2022"),
    const AllExpensesItemModel(title: "Expenses", image: Assets.imagesExpenses, price: r"$20,129", date: "April 2022"),

  ];
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
    Expanded(child: GestureDetector(onTap:(){
      updatedIndex(0);
    },child: AllExpensesItem(allExpensesItemModel: expenses[0], isSelected: selectedIndex==0,))),
        const SizedBox(width: 8,),
        Expanded(child: GestureDetector(onTap:(){
          updatedIndex(1);
        },child: AllExpensesItem(allExpensesItemModel: expenses[1], isSelected: selectedIndex==1,))),
        const SizedBox(width: 8,),
        Expanded(child: GestureDetector(onTap:(){
          updatedIndex(2);
        },child: AllExpensesItem(allExpensesItemModel: expenses[2], isSelected: selectedIndex==2,)))



      ],
    );
    return Row(
      //children: expenses.map((e) => Expanded(child: Padding(padding:const EdgeInsets.only(left: 12),child: AllExpensesItem(allExpensesItemModel: e)))).toList(),

      children: expenses.asMap().entries.map((e){
        int index=e.key;
        var item=e.value;
        return index==1 ?Expanded(child: GestureDetector(onTap: (){
          updatedIndex(index);
        },
            child: Padding(padding:const EdgeInsets.symmetric(horizontal: 12),
            child: AllExpensesItem(allExpensesItemModel: item, isSelected: selectedIndex==index,)))):
        Expanded(child: GestureDetector(onTap:(){
          updatedIndex(index);
        },child: AllExpensesItem(allExpensesItemModel: item, isSelected: selectedIndex==index,)));

      }).toList(),
    );

  }

  void updatedIndex(int index) {
   setState(() {
     selectedIndex=index;
     print(selectedIndex);
   });
  }
}
