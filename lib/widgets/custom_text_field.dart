import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextInputType? type;
  final bool isPassword;

  const CustomTextField({
    Key? key,
    required this.hint,
    this.type,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: AppColors.inputWhite,
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowBlack,
            offset: Offset(7, 7),
            blurRadius: 10,
          ),
        ],
      ),
      child: TextField(
        obscureText: isPassword,
        keyboardType: type ?? TextInputType.text,
        cursorColor: AppColors.darkBlue,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            color: AppColors.grey,
            fontSize: 14.0,
          ),
          hintText: 'Введите ${hint.toLowerCase()}',
          contentPadding: const EdgeInsets.all(15.0).copyWith(left: 25.0),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
