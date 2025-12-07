import 'package:flutter/material.dart';

import '../constants.dart';
class NavigationBottom extends StatelessWidget {
  const NavigationBottom({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.home_outlined, color: kPrimaryColor,),
        Spacer(),
        Icon(Icons.notifications_outlined , color: kHintTextColor,),
        Spacer(),
        Icon(Icons.calendar_today_outlined , color: kHintTextColor,),
        Spacer(),
        Icon(Icons.person_2_outlined , color: kHintTextColor,)
      ],
    );
  }
}

