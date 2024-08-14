import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hey! User",style: TextStyle(
          fontSize: 20,
          color: ColorConstants.mainBlack,
          fontWeight: FontWeight.w600
        ),),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 60,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2), 
              itemBuilder: (context, index) =>  Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorConstants.greyShade2
                  )
                ),
                child: Row(
                  children: [
                   // Icon(Icons)
                  ],
                ),
              )),
          )
        ],
      ),
    );
  }
}