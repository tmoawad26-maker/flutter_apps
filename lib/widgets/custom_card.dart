import 'package:flutter/material.dart';

import '../constants.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 80,
      child:  Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ) ,
        elevation: 10,
        color: kColorSignupButton,
      ),
    );
  }
}
