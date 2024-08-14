// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flipkart_clone_application/dummy_db.dart';
import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flipkart_clone_application/utils/image_constants.dart';
import 'package:flipkart_clone_application/view/global_widgets/custom_widget_builder.dart';
import 'package:flipkart_clone_application/view/global_widgets/horizontal_grid.dart';
import 'package:flipkart_clone_application/view/home_screen/widgets/custom_ads.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(ImageConstants.flipLogoText),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      "Brand Mall",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(right: 6, top: 3, bottom: 3, left: 3),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.white,
                          ),
                          Text(
                            " OFF",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextFormField(
                    showCursor: true,
                    decoration: InputDecoration(
                        hintText: "Search products brands and more",
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.mic_none_rounded, color: Colors.grey),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                  ),
                ),
                SizedBox(
                  width: 15,
                )
              ],
            ),
            //#1
            CustomAds(
              imagesList: DummyDb.ads1,
            ),
            //#2
            HorizontalGrid(
              isCircle: true,
              itemCount: 10,
              crossAxisCount: 5,
              isPriceVisible: false,
              //url: "assets/images/smart gadgets.jpeg",
              datalist: DummyDb.circleGridData,
             
            ),

            SizedBox(
              height: 10,
            ),
            //#3
            CustomWidgetBuilder(
              width: 100,
              title: "Recently Viewed Stores",
              titleVisible: true, 
              customWidgetDataList: DummyDb.recentViewedData,
             
            ),
           
            //#4
            HorizontalGrid(
              height: 150,
               datalist: DummyDb.list4,

            ),
            //#5
            _shortlistMethod(),

            //#6
            Padding(
                padding:  EdgeInsets.only(left: 10,top: 10,),
                child: Text("Sponsored",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),),
              ),
            CustomAds(
              imagesList: DummyDb.sposordAds,
              height: 250,
              sidePadding:true ,
            ),
            //#7
            CustomWidgetBuilder(
              isCircle: true,
              width: 70, 
              customWidgetDataList: DummyDb.brandData,
             itemCount: DummyDb.brandData.length,
            ),
            //#8
            // GridView.builder(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
            //   itemBuilder: (context, index) =>Column(

            //   ),),
            

            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }

  Column _shortlistMethod() {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 10,top: 10,),
                child: Text("Recently Shortlisted by You",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600
                ),),
              ),
              Divider(),
              SizedBox(
                height: 350,
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Row(
                          children: [
                            Image.network(
                              DummyDb.shortListData[index]["imageUrl"],
                              height: 100,
                              width: 80,
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(DummyDb.shortListData[index]["name"],style: TextStyle(fontSize: 18),),
                                Text(DummyDb.shortListData[index]["price"],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                Text(DummyDb.shortListData[index]["discount"],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.green),),
                            ],)
                          ],
                        ),
                    separatorBuilder: (context, index) => Divider(),
                    itemCount: 3),
              ),

              Divider()
            ],
          );
  }
}
