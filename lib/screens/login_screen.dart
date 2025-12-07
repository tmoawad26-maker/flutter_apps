import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_apps/models/path_model.dart';
import 'package:flutter_apps/widgets/custom_container.dart';
import 'package:flutter_apps/widgets/custom_text_field.dart';
import 'package:flutter_apps/widgets/navigation_bottom.dart';

import '../constants.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
    static String id = 'login screen';
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
    body: Column(
     children: [
       Image.asset('assets/6f794684-6e29-43c1-8c78-74c2e8fb6bb2.jfif',
         width: double.infinity,
         fit: BoxFit.cover,
         height: 230,
       ),
       Expanded(
         child: Container(
           width: double.infinity,
           height: 350,
           decoration: BoxDecoration(
              color: kPrimaryColor,
             borderRadius: BorderRadius.circular(20)
           ),
           child: const Column(
             children: [
               SizedBox(height: 10,),
               Text('اهلابك فى مؤسسة المسار',
                 style: TextStyle(
                   color: kTextColor,
                   fontSize: 25,
                   fontWeight: FontWeight.bold
                 ),
               ),
               SizedBox(height: 10,),
               Text('من فضللك قم بتسجيل الدخول',
                 style: TextStyle(
                   color: kTextColor,
                   fontSize: 20,
                 ),
               ),
               SizedBox(height: 10,),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20),
                 child: CustomTextField(
                   hintText: 'رقم الهاتف',
                    textAlign: TextAlign.right,
                    suffixIcon: Icon(Icons.person_2_rounded, color: kPrimaryColor,),
                   textStyle: Colors.grey,
                 ),
               ),
               SizedBox(height: 10,),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20),
                 child: CustomTextField(
                   hintText: 'كلمة المرور',
                   textAlign: TextAlign.right,
                   suffixIcon: Icon(Icons.lock_open,color: kPrimaryColor,),
                   textStyle: Colors.grey,
                   obscureText: true,
                   prefixIcon: Icon(
                       Icons.remove_red_eye,
                            color: kPrimaryColor,
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Padding(
                     padding: EdgeInsets.only(left: 22),
                     child: Text('هل نسيت كلمة المرور؟',
                     style: TextStyle(
                       color: kTextColor
                     ),
                     ),
                   ),
                 ],
               ),
              SizedBox(height: 10,),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20),
                 child: CustomTextField(textStyle: kPrimaryColor,hintText: 'تسجيل الدخول',
                 textAlign: TextAlign.center,
                   readOnly: true,
                 ),
               ),
               Expanded(child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('انشاء حساب',
                      style: TextStyle(
                        color: kTextColor
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text('ليس لديك حساب؟',
                    style: TextStyle(
                      color: Colors.black
                    ),
                    )
                  ],
                )
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
