import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.greyShade2,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("My Cart",style: TextStyle(fontSize: 18,color: ColorConstants.mainBlack,fontWeight: FontWeight.w500),),),

      body:  Column(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("deliver to : name ,Pincode",style: TextStyle(fontSize: 16),),
                    Text("address",style: TextStyle(fontSize: 16),)
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  decoration: BoxDecoration(border: Border.all(
                    color: ColorConstants.greyShade3
                  ),
                  borderRadius: BorderRadius.circular(5)),
                  child: Text("Change",style: TextStyle(fontSize: 16,color: ColorConstants.blueShade3)),
                ),
                SizedBox(width: 10,)
              ],
            ),
          )
        ],
      ),
    );
  }
}