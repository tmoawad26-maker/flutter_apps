import 'package:flutter/material.dart';
import 'package:flutter_apps/screens/otp_screen.dart';

import '../constants.dart';
import '../widgets/custom_checkbox.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/navigation_bottom.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static String id = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/6f794684-6e29-43c1-8c78-74c2e8fb6bb2.jfif',
            width: double.infinity,
            fit: BoxFit.cover,
            height: 150,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 450,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  const SizedBox(height: 25,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                      hintText: 'الاسم الكامل',
                      textAlign: TextAlign.right,
                      suffixIcon: Icon(Icons.person_2_rounded,
                          color: kIconColorSignup),
                      textStyle: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                      hintText: 'البريد الالكترونى',
                      textAlign: TextAlign.right,
                      textStyle: Colors.grey,
                      suffixIcon: Icon(
                        Icons.message,
                        color: kIconColorSignup,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                      textStyle: kHintTextColor,
                      textAlign: TextAlign.right,
                      hintText: 'رقم الموبايل بدون رمز الدولة(+)',
                      suffixIcon: Icon(Icons.phone_bluetooth_speaker_sharp,
                        color: kIconColorSignup,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                      textStyle: kHintTextColor,
                      hintText: 'كلمة المرور',
                      textAlign: TextAlign.right,
                      suffixIcon: Icon(
                        Icons.lock,
                        color: kIconColorSignup,
                      ),
                      obscureText: true,
                      prefixIcon: Icon(
                        Icons.remove_red_eye,
                        color: kIconColorSignup,
                      ),
                    ),
                  ),
                 const SizedBox(height: 10,),
                  const CustomCheckBox(),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55),
                    child: CustomTextField(
                        hintText: 'انشاء حساب',
                        textStyle: kIconColorSignup,

                      onTap: ()
                      {
                        Navigator.pushNamed(context, OTPScreen.id);
                      },
                      readOnly: true,
                      fillColor: kColorSignupButton,
                      textAlign: TextAlign.center,
                    ),
                  ),
                 const  SizedBox(height: 12,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('تسجيل الدخول',
                      style: TextStyle(
                        color: kTextColor
                      ),
                      ),
                      SizedBox(width: 10,),
                      Text('لديك حساب؟',
                      style: TextStyle(
                        color: kHintTextColor
                      ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const NavigationBottom(),
    );
  }
}

