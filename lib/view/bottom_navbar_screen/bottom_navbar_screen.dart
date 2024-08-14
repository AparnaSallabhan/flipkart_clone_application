import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flipkart_clone_application/view/account_screen/account_screen.dart';
import 'package:flipkart_clone_application/view/cart_screen/cart_screen.dart';
import 'package:flipkart_clone_application/view/categories_screen/categories_screen.dart';
import 'package:flipkart_clone_application/view/explore_screen/explore_screen.dart';
import 'package:flipkart_clone_application/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
    int selectedIndex = 0;
    List<Widget> screens=[
      HomeScreen(),
      ExploreScreen(),
      CategoriesScreen(),
      AccountScreen(),
      CartScreen()
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: ColorConstants.mainBlue,
        unselectedItemColor: ColorConstants.greyShade5,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: "Explore"),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: "Categories"),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Account"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart"),
        ],
        onTap: (value) {
         setState(() {
           selectedIndex = value;
         }); 
        },
        ),
        body: screens[selectedIndex],
    );
  }
}