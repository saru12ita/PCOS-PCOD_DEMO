import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pcos_app/consts/consts.dart';
import 'package:pcos_app/views/auth_screen/login_screen.dart';
import 'package:pcos_app/widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creating a method to change screen

  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      //using getx
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(220, 127, 9, 205),
      body: Center(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Image.asset(icSplashBg, width: 300)),

            10.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            appversion.text.white.make(),
            Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            20.heightBox,
            //our splash screen ui is completed!
          ],
        ),
      ),
    );
  }
}
