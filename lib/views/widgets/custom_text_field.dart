import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
final String hint;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        hintStyle: Styles.styleRegular16(context).copyWith(
          color: const Color(0xFFAAAAAA)
        ),
        hintText: hint,
        filled: true,
        fillColor: const Color(0xFFFAFAFA),
        enabledBorder:buildBorder(),
        border: buildBorder(),
        focusedBorder: buildBorder()
        

      ),

    );
  }
}
OutlineInputBorder buildBorder(){
  return OutlineInputBorder(borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFFAFAFA)));

}
