import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pcos_app/consts/consts.dart';
import 'package:pcos_app/consts/lists.dart';
import 'package:pcos_app/views/auth_screen/signup_screen.dart';
import 'package:pcos_app/views/home_screen/home_screen.dart';
import 'package:pcos_app/widgets_common/applogo_widget.dart';
import 'package:pcos_app/widgets_common/bg_widget.dart';
import 'package:pcos_app/widgets_common/custom_textfield.dart';
import 'package:pcos_app/widgets_common/our_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: context.screenHeight * 0.1),
              applogoWidget(),
              SizedBox(height: 15),
              Text(
                "Log in to $appname",
                style: TextStyle(
                  fontFamily: bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 15),
              Column(
                children: [
                  customTextField(hint: emailHint, title: email),
                  customTextField(hint: passwordHint, title: password),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(forgetPass),
                    ),
                  ),
                  SizedBox(height: 5),
                  ourButton(
                    color: redColor,
                    title: login,
                    textColor: whiteColor,
                    onPress: () {
                      Get.to(() => const HomeScreen());
                    },
                  ).box.width(context.screenWidth - 50).make(),
                  SizedBox(height: 5),
                  Text(
                    createnewAccount,
                    style: TextStyle(color: fontGrey),
                  ),
                  SizedBox(height: 5),
                  ourButton(
                    color: lightGolden,
                    title: signup,
                    textColor: redColor,
                    onPress: () {
                      Get.to(() => SignupScreen());
                    },
                  ).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  loginWidth.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: EdgeInsets.all(
                                  8.0), // You can adjust the padding value as needed
                              child: CircleAvatar(
                                backgroundColor: lightGrey,
                                radius: 25,
                                child: Image.asset(
                                  socialIconList[index],
                                  width: 30,
                                ),
                              ),
                            )),
                  ),
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
