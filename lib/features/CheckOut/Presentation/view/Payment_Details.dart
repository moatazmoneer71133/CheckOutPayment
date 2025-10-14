import 'package:chack_out_app/core/widgets/buildAppBar.dart';
import 'package:chack_out_app/features/CheckOut/Presentation/view/widgets/Payment_Details_Body.dart';
import 'package:flutter/material.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: PaymentDetailsViewBody(),
    );
  }
}
