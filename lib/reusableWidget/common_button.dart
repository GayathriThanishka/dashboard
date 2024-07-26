import 'package:authendication/reusableWidget/pallets.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;
  const CommonButton(
      {super.key, required this.buttonName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          fixedSize: Size(150, 50),
          backgroundColor: Pallets.buttonColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      child: Text(
        buttonName,
        style: TextStyle(color: Pallets.whiteColor),
      ),
    );
  }
}
