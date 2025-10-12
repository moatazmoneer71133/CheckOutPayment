import 'package:chack_out_app/core/Utils/styles.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'My Cart',
          textAlign: TextAlign.center,
          style:Styles.style25,

        ),
      ),
    );
  }
}


