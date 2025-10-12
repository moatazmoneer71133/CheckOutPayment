import 'package:chack_out_app/core/Utils/styles.dart';
import 'package:chack_out_app/features/CheckOut/Presentation/view/widgets/My_Cart_View_Body.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: Icon(
            Icons.arrow_back_outlined,
          color: Colors.black,

          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
            'My Cart',
          textAlign: TextAlign.center,
          style:Styles.style25,

        ),
      ),
      body: MyCartViewBody(),
    );
  }
}


