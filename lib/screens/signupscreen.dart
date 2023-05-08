import 'package:ecommerceapp/const/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../const/list.dart';
import '../widgets/applogo.dart';
import '../widgets/bgwidget.dart';
import '../widgets/button.dart';
import '../widgets/customtextfield.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool? isCheck = false;
  @override
    Widget build(BuildContext context) {
      return bgWidget(Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                (context.screenHeight * 0.1).heightBox,
                applogoWidget(),
                10.heightBox,
                "Login to $appname".text.fontFamily(bold).white.size(18).make(),
                10.heightBox,
                SizedBox(height: 15,),
                Column(
                  children: [
                    customfield(title: name, hint: nameHint),
                    customfield(title: email, hint: emailHint),
                    customfield(title: password, hint: passwordHint),
                    customfield(title: retype, hint: passwordHint),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(onPressed: (){}, child: forgetpass.text.make(),),
                    ),


                    Row(
                      children: [
                        Checkbox(value: isCheck,checkColor: Colors.white, onChanged: (newValue){
                          setState(() {
                            isCheck = newValue;
                          });
                        },
                        ),

                        10.widthBox,
                        Expanded(
                          child: RichText(text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'I agree to the',
                                    style: TextStyle(
                                        fontFamily: regular,
                                        color: fontGrey
                                    )
                                ),

                                TextSpan(
                                    text: ' Terms & Condtition & ',
                                    style: TextStyle(
                                      fontFamily: regular,
                                      color: Colors.cyan,
                                    )
                                ),

                                TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(
                                      fontFamily: regular,
                                      color: Colors.cyan,
                                    )
                                ),
                              ]
                          )),
                        )
                      ],
                    ),
                    /*
                  sign up button
                   */
                    button(color: isCheck == true?Colors.cyan : Colors.grey, textColor: whiteColor, title: signup, onpresss: () {}).box.width(context.screenWidth-50).make(),

                    RichText(text: const TextSpan(
                        children: [
                          TextSpan(
                              text: alreadyaccount,
                              style: TextStyle(
                                fontFamily: bold,
                                color: fontGrey,
                              )
                          ),

                          TextSpan(
                              text: login,
                              style: TextStyle(
                                fontFamily: bold,
                                color: Colors.cyan,
                              )
                          ),
                        ]
                    )).onTap(() {Get.back();
                    }),
                  ],
                ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth - 70).make(),
                10.heightBox,
              ],
            ),
          ),
        ),
      ));
    }
  }

