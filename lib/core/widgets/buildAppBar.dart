
import 'package:chack_out_app/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Utils/styles.dart';

AppBar buildAppBar({required String title}) {
  return AppBar(
      leading: Center(child: SvgPicture.asset("assets/images/arrow.svg")),
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style:Styles.style25,

    ),
  );
}