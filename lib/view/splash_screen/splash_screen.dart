// ignore_for_file: prefer_const_constructors

import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flipkart_clone_application/utils/image_constants.dart';
import 'package:flipkart_clone_application/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:flipkart_clone_application/view/home_screen/home_screen.dart';
import 'package:flipkart_clone_application/view/language_list_screen/language_list_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LanguageListScreen(),));
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlue,
      body: Center(
        child:Image.asset(ImageConstants.flipLogoF) ,),
    );
  }
}