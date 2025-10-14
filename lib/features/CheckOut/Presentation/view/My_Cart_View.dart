import 'package:chack_out_app/core/Utils/styles.dart';
import 'package:chack_out_app/features/CheckOut/Presentation/view/widgets/My_Cart_View_Body.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/buildAppBar.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar( title: 'My Cart'),
      body: MyCartViewBody(),
    );
  }


}


