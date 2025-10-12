import 'package:chack_out_app/features/CheckOut/Presentation/view/My_Cart_View.dart';
import 'package:flutter/material.dart';
void main(){
  runApp( CheckOutApp());
}

class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCartView(),
    );
  }
}
