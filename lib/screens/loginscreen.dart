import 'package:ecommerceapp/const/consts.dart';
import 'package:ecommerceapp/screens/home.dart';
import 'package:ecommerceapp/screens/signupscreen.dart';
import 'package:ecommerceapp/widgets/applogo.dart';
import 'package:ecommerceapp/widgets/bgwidget.dart';
import 'package:ecommerceapp/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/list.dart';
import '../widgets/button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                  customfield(title: email, hint: emailHint),
                  customfield(title: password, hint: passwordHint),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgetpass.text.make(),),
                  ),
                  5.heightBox,
                  //
                  button(color: Colors.cyan, textColor: whiteColor, title: login, onpresss: () {
                    Get.to(()=>Home());
                  }).box.width(context.screenWidth-50).make(),
                  7.heightBox,
                  createAcc.text.color(fontGrey).make(),
                  button(color: lightGrey, textColor: Colors.black, title: signup, onpresss: () {
                    Get.to(()=> Signup());
                  }).box.width(context.screenWidth-50).make(),

                  10.heightBox,
                  loginwith.text.color(fontGrey).make(),
                  5.heightBox,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                      List.generate(
                        3,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 25,
                              child: Image.asset(socialicon[index],width: 30,),
                            ),
                          ),
                      ),
                  ),
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
