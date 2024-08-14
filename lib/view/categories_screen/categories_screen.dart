import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Categories"),
        actions: [
          Icon(Icons.search,color: ColorConstants.mainBlack,),
          SizedBox(width: 25,),
          Icon(Icons.mic,color: ColorConstants.mainBlack,),
          SizedBox(width: 15,)
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(radius: 30,backgroundColor: Colors.amber,),
                Text("For You"),
                Container(
                  // height: double.infinity,
                  width: 100,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(color: ColorConstants.greyShade1,borderRadius: BorderRadius.circular(10)),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Column(
                      children: [
                        CircleAvatar(radius: 30,backgroundColor: Colors.amber,),
          
                        Text("xcvbnm")
                      ],
                    ), 
                    separatorBuilder: (context, index) => Divider(), 
                    itemCount: 15),
                )
              ],
            ),
          ),
          SizedBox(width: 10,),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text("Popular Store",style: TextStyle(
                  fontSize: 20,
                  color: ColorConstants.mainBlack,
                  fontWeight: FontWeight.w400
                ),)
              ],
            ),
          ),
      ],),
    );
  }
}