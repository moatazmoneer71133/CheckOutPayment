import 'package:chack_out_app/core/constant.dart';
import 'package:chack_out_app/core/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Custom_Credit_Card.dart';
import 'Payment_Method_Item.dart';
import 'Payment_Methods_List_View.dart';

class PaymentDetailsViewBody extends StatefulWidget {
   PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers:[
        SliverToBoxAdapter(child:  PaymentMethodsListView(),),
        SliverToBoxAdapter(
          child: CustomCreditCard(
              formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),

        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12.0,left:16 ,right: 16),
                child: CustomButton(
                    onTap: (){
                      if(formKey.currentState!.validate()){
                          formKey.currentState!.save();
                      }else{
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {

                        });
                      }
                    },
                    title: "Pay",
                ),
              ),
          ),
        ),
        // SliverToBoxAdapter(child: CustomButton(title: "Pay")),
        ],
    );
  }
}





