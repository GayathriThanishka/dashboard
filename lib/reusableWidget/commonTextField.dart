import 'package:authendication/reusableWidget/font_style.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String fieldname;
  
  final TextEditingController controller;
  const AppTextField(
      {super.key, required this.fieldname, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(fieldname, style: AppTextStyle.headlineMedium),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 500,
          child: TextFormField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              ),
              controller: controller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter $fieldname";
                }
                return null;
              }),
        ),
      ],
    );
  }
}
