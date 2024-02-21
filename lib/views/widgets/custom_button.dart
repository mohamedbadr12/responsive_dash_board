import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.color, required this.title, this.textColor});
  final Color color;
  final String title;
  final Color? textColor;


  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
          backgroundColor: color
        ),
          onPressed: (){}, child: Text(title,style: Styles.styleSemiBold18(context).copyWith(
        color: textColor
      ),)),
    );
  }
}
