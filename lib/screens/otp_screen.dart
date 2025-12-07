import 'package:flutter/material.dart';
import 'package:flutter_apps/widgets/navigation_bottom.dart';

import '../constants.dart';
import '../widgets/custom_card.dart';
import '../widgets/custom_text_field.dart';
class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});
  static String id = 'otp screen';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          children: [
            Image.asset(
                'assets/6f794684-6e29-43c1-8c78-74c2e8fb6bb2.jfif',
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 180,
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
                    const SizedBox(height: 35,),
                   const Text(' OTP ادخل رمز التحقق ',
                   style: TextStyle(
                     color: kTextColor
                   ),
                   ),
                    const SizedBox(height: 10,),
                    const Text('لقد ارسلنا الكود الخاص بك الى 010*****000',
                    style: TextStyle(
                      color: kTextColor
                    ),
                    ),
                    const SizedBox(height: 10,),
                    const Text('سينهى الكود فى 00:30',
                    style: TextStyle(
                      color: kTextColor
                    ),
                    ),
                    const SizedBox(height: 10,),
                   const Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       SizedBox(width: 10,),
                       CustomCard(),
                       SizedBox(width: 10),
                       CustomCard(),
                       SizedBox(width: 10,),
                       CustomCard(),
                       SizedBox(width: 10,),
                       CustomCard(),
                       SizedBox(width: 10,),
                       CustomCard(),
                       SizedBox(width: 10,),
                       CustomCard()
                     ],
                   ),
                    const SizedBox(height: 70,),
                    Padding(
                      padding:  const EdgeInsets.symmetric(horizontal: 55),
                      child: CustomTextField(
                        hintText: ' تأكيد الحساب ',
                        textStyle: kIconColorSignup,

                        onTap: ()
                        {

                        },
                        readOnly: true,
                        fillColor: kColorSignupButton,
                        textAlign: TextAlign.center,
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      bottomNavigationBar: const NavigationBottom()
    );
  }
}

