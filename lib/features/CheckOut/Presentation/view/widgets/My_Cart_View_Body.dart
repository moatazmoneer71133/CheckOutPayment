import 'package:flutter/material.dart';

import '../../../../../core/Utils/styles.dart';
import '../../../../../core/constant.dart';
import '../../../../../core/widgets/CustomButton.dart';
import 'Cart_Info_Item.dart';
import 'Total_Price.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
         // Image.asset('assets/images/rani.webp'),
          SizedBox(height: 18,),
          Expanded(child: Image.network(Constant.mraee)),
          OrderInfoItem(title: 'Order Subtotal',value: '\$42.55',),
          SizedBox(height: 5,),
          OrderInfoItem(title: 'Discount',value: '\$0',),
          SizedBox(height: 5,),
          OrderInfoItem(title: 'Shipping',value: '\$4',),
          SizedBox(height: 8,),
          Divider(
            thickness: 2,
            height: 34,
            color: Color(0xFFC6C6C6),
          ),
          TotalPrice(title: 'Total', value: '\$42.55',),
          SizedBox(height: 16,),
          CustomButton(title: 'Complete Payment',),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}






