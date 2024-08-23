import 'package:flipkart_clone_application/dummy_db.dart';
import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flipkart_clone_application/view/account_screen/widgets/account_screen_card.dart';
import 'package:flipkart_clone_application/view/global_widgets/custom_widget_builder.dart';
import 'package:flipkart_clone_application/view/global_widgets/horizontal_grid.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.greyShade1,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Hey! User",
          style: TextStyle(
              fontSize: 20,
              color: ColorConstants.mainBlack,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#1
            Container(
              height: 130,
              decoration: BoxDecoration(color: Colors.white),
              child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 50,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: ColorConstants.greyShade2, width: 2)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            FaIcon(
                              DummyDb.accountData1[index]["icon"],
                              color: ColorConstants.blueShade3,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              DummyDb.accountData1[index]["text"],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )),
            ),
           
            SizedBox(
              height: 10,
            ),
            //#2
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.mail_outline,
                    color: Colors.orange[700],
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add/Verify your Email",
                        style: TextStyle(
                            color: ColorConstants.mainBlack,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Get latest updates of your orders",
                        style: TextStyle(
                            color: ColorConstants.mainBlack, fontSize: 14),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    decoration: BoxDecoration(
                        color: ColorConstants.blueShade3,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Update",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            
            SizedBox(
              height: 10,
            ),
            //#3
            AccountScreenCard(
              itemNumber: 2,
              itemCount: 2,
              title: "Credit Options",
              dataList: DummyDb.creditdata,            
              creditDataVisible: true,            
            ),
           
            SizedBox(height: 10,),
            //#4
            AccountScreenCard(
              title: "Credit Score", 
              itemCount: 1, 
              itemNumber: 1,
              data1: "Free Credit Score Check",
              data2: "Get detailed credit report instantly.",
              icon: Icons.file_copy_outlined,
              creditDataVisible: true,
              ),
              SizedBox(height: 10,),
              //#5
               CustomWidgetBuilder(
                width: 100,
                title: "Recently Viewed Stores",
                titleVisible: true, 
                customWidgetDataList: DummyDb.recentViewedData,              
              ),
        
            SizedBox(height: 10,),
            //#6
            AccountScreenCard(
            title: "Notifications", 
            itemCount: 1, 
            itemNumber: 1,
            icon: Icons.notifications_none_outlined,
            data1: "Tap for latest updates and offers",
            creditDataVisible: false,
            ),
            SizedBox(height: 10,),
            //#7
            AccountScreenCard(
              title: "Account Settings", 
              itemCount: 6, 
              itemNumber: 6,
              dataList: DummyDb.settingsData,
              creditDataVisible: false,
              ),  

              SizedBox(height: 10,),
              //#8
              AccountScreenCard(
                title: "My Activity", 
                itemCount: 2, 
                itemNumber: 2,
                dataList: DummyDb.activityData,
                //creditDataVisible: false,
                ),

                SizedBox(height: 10,),
                //#9
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      Text("Featured Offerings",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.mainBlack
                      ),),
                      Divider(),
                      HorizontalGrid(
                        datalist: DummyDb.offeringData),  
                    ],
                  ),
                ),
                  SizedBox(height: 10,),
                  //#10
                   AccountScreenCard(
                  title: "Earn with Flipkart", 
                   itemCount: 1, 
                        itemNumber: 1,
                        icon: Icons.storefront_outlined,
                        data1: "Sell on Flipkart",
                        ),
                  SizedBox(height: 10,),
                  //#11
                  AccountScreenCard(
                    title: "Feedback & Information", 
                    itemCount: 2, 
                    itemNumber: 2,
                    dataList: DummyDb.feedbackData,
                    ),
                    //#12
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: ColorConstants.greyShade3
                        )
                      ),
                      alignment: Alignment.center,
                      child: Text("Log out",style: TextStyle(fontSize: 18,color: ColorConstants.blueShade3,fontWeight: FontWeight.w500),),
                    )

          ],
        ),
      ),
    );
  }
}

