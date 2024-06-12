import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pcos_app/consts/colors.dart';
import 'package:pcos_app/consts/consts.dart';
import 'package:pcos_app/consts/images.dart';
import 'package:pcos_app/consts/strings.dart';
import 'package:pcos_app/controller/home_controller.dart';
import 'package:pcos_app/views/Diagnosis_screen/diagnosis_screen.dart';
import 'package:pcos_app/views/Symptomtracker_screen/symtrack_screen.dart';
import 'package:pcos_app/views/home_screen/home_screen1.dart';
import 'package:pcos_app/views/profile_screen/profile_screen.dart';
import 'package:pcos_app/views/resources_screen/resources_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
//get image => null;
  @override
  Widget build(BuildContext context) {
    //init home controller
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icsymptomsTracker, width: 26),
          label: symptomsTracker),
      BottomNavigationBarItem(
          icon: Image.asset(icdiagnosis, width: 26), label: diagnosis),
      BottomNavigationBarItem(
          icon: Image.asset(icresources, width: 26), label: resources),
      BottomNavigationBarItem(
          icon: Image.asset(icprofile, width: 26), label: profile),
    ];

    var navBody = [
      HomeScreen1(),
      SymtrackScreen(),
      DiagnosisScreen(),
      ResourcesScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
                child: navBody.elementAt(controller.currentNavIndex.value)),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
