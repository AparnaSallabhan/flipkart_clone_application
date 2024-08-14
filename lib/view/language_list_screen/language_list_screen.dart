// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flipkart_clone_application/dummy_db.dart';
import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flipkart_clone_application/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:flipkart_clone_application/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class LanguageListScreen extends StatefulWidget {
  const LanguageListScreen({super.key});

  @override
  State<LanguageListScreen> createState() => _LanguageListScreenState();
}

class _LanguageListScreenState extends State<LanguageListScreen> {

  bool languageDataPressed = false;
  Color unSelectedColor = Colors.grey;
  int? selectedIndex;
  int ?index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlue,
        title: Text(
          "Choose Language",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(

        children: [
          Expanded(
            child: ListView.separated(
                
                padding: EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  
                  return InkWell(
                  onTap: () {
                    selectedIndex =index;
                    if(selectedIndex ==index ){
                      setState(() {
                      // languageDataPressed =!languageDataPressed;
                      unSelectedColor = Colors.blue;
                    });
                    }
                    
                  },

                  child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color:selectedIndex==index ? Colors.blue : Colors.grey, 
                              width: 2),
                            borderRadius: BorderRadius.circular(5)
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Icon(selectedIndex==index?Icons.check_circle :  Icons.circle_outlined  ),
                                SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Text(DummyDb.languageData[index]["language"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                                    Text(DummyDb.languageData[index]["translate"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.grey),),
                                    
                                  ],
                                ),
                                Spacer(),
                                SizedBox(
                                  height: 90,
                                  width: 150,
                                  child: Image.asset(
                                    fit: BoxFit.cover,
                                    DummyDb.languageData[index]["image"]),
                                  ),
                                SizedBox(width: 10,),
                              ],
                            ),
                      ),
                );},
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: DummyDb.languageData.length),
          ),

          InkWell(
            onTap: () {
              
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavbarScreen(),));
            },
            child: Container(
              height: 50,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color:selectedIndex==index? Colors.grey: ColorConstants.blueShade3 ,
              ),
              child: Center(child: Text("CONTINUE",style: TextStyle(color: Colors.white),),),
            ),
          )
        ],
      ),
    );
  }
}
