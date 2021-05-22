import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';

class ProfileInput extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType? type;
  const ProfileInput({
    Key? key,
    required this.label,
    required this.hint,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Styles.styleW600S19.copyWith(
            fontWeight: FontWeight.normal,
            color: AppColors.profileLabel,
          ),
        ),
        const SizedBox(height: 10.0),
        TextField(
          keyboardType: type ?? TextInputType.text,
          style: Styles.styleW600S21.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.profileName,
          ),
          cursorColor: AppColors.profileName,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: Styles.styleW500S15.copyWith(
              color: AppColors.profileLabel,
            ),
            isCollapsed: true,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
          ),
        ),
        const SizedBox(height: 35.0),
      ],
    );
  }
}
