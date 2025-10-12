import 'package:flutter/material.dart';

import '../Utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title});
  final String title ;
  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      height: 73,
      decoration: ShapeDecoration(
        color: Color(0xFF34A853),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.style22,
        ),
      ),
    );
  }
}