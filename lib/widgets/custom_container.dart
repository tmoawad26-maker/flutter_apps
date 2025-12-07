import 'package:flutter/material.dart';
import 'package:flutter_apps/models/path_model.dart';
import 'package:flutter_apps/screens/signup_screen.dart';

import '../constants.dart';
import '../screens/login_screen.dart';
import 'custom_text_field.dart';
class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.pathOrginizationModel
  });
   final PathOrginizationModel pathOrginizationModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child:  Column(
        children: [
           Text( pathOrginizationModel.title ,
            style: const TextStyle(
              color: kTextColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10,),
           Text(pathOrginizationModel.subTitle,
            style:  TextStyle(
                color: pathOrginizationModel.colors,
                fontSize: 20
            ),
          ),
          const SizedBox(height: 10,),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomTextField(hintText: 'تسجيل الدخول',
                  onTap: ()
              {
               Navigator.pushNamed(context, LoginScreen.id);
              },
                  textStyle: kPrimaryColor,
              readOnly: true,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20,),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomTextField(hintText: 'انشاء حساب',
              onTap: ()
              {
                Navigator.pushNamed(context, SignupScreen.id);
              },
              textStyle: kPrimaryColor,
              readOnly: true,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
