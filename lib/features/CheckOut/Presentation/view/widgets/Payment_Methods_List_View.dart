import 'package:flutter/material.dart';

import '../../../../../core/constant.dart';
import 'Payment_Method_Item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodItemsList = const [
    Constant.card,
    Constant.mastercard,
    Constant.paypal,
  ];
int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodItemsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: (){
                activeIndex = index;
                setState(() {});
              },
              child: PaymentMethodItem(
                  isActive: activeIndex == index ,
                  image: paymentMethodItemsList[index]
              ),
            ),
          );
        },
      ),
    );
  }
}