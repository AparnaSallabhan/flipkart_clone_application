import 'package:flipkart_clone_application/dummy_db.dart';
import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flipkart_clone_application/view/cart_screen/widgets/cart_card.dart';
import 'package:flipkart_clone_application/view/global_widgets/custom_widget_builder.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.greyShade2,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "My Cart",
          style: TextStyle(
              fontSize: 18,
              color: ColorConstants.mainBlack,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "deliver to : name ,Pincode",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "address",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConstants.greyShade3),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text("Change",
                        style: TextStyle(
                            fontSize: 16, color: ColorConstants.blueShade3)),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
           SizedBox(
             height: 1450,
             child: ListView.builder(
              shrinkWrap: true,
              itemCount: DummyDb.cartScreenData.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => CartCard(
                starCount: DummyDb.cartScreenData[index]["rating"], 
                image: DummyDb.cartScreenData[index]["imageUrl"], 
                prdctName: DummyDb.cartScreenData[index]["productName"], 
                size: DummyDb.cartScreenData[index]["size"], 
                discount: DummyDb.cartScreenData[index]["discount"], 
                prevPrice: DummyDb.cartScreenData[index]["prevPrice"], 
                newPrice: DummyDb.cartScreenData[index]["newPrice"]),),
           ),
           _priceDetails(),
           SizedBox(height: 10,),
           Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("₹2,142",style: TextStyle(
                  fontSize: 20,color: ColorConstants.mainBlack,
                  fontWeight: FontWeight.bold
                ),),
                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("Place Order",style: TextStyle(
                    fontSize: 18,
                    color: ColorConstants.mainBlack,
                    fontWeight: FontWeight.bold
                  ),),
                 )
                ],
            ),
           ),
           SizedBox(height: 10,),
                CustomWidgetBuilder(
                width: 100,
                title: "Recently Viewed Stores",
                titleVisible: true, 
                customWidgetDataList: DummyDb.recentViewedData,              
              ),
              SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }

  Container _priceDetails() {
    return Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Price Details",style: TextStyle(
                color: ColorConstants.mainBlack,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
            //1  
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Price (5 items)",
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.greyShade5
                  ),
                  ),
                  Text("₹10,494",
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.greyShade5
                  ),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              //2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discount",
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.greyShade5
                  ),
                  ),
                  Text("-₹8,254",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green
                  ),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              //3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Coupons for you",
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.greyShade5
                  ),
                  ),
                  Text("-₹140",
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.greyShade5
                  ),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              //4
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Platform fee",
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.greyShade5
                  ),
                  ),
                  Text("₹3",
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.greyShade5
                  ),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              //5
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Charges",
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.greyShade5
                  ),
                  ),
                  Text("FREE Deleivery",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green
                  ),
                  ),
                ],
              ),
              Divider(),
             // SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Amount",
                  style: TextStyle(
                    fontSize: 18,
                    color: ColorConstants.mainBlack,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text("₹2,142",
                  style: TextStyle(
                    fontSize: 18,
                    color: ColorConstants.mainBlack,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
              Divider(),
               Text("You will save ₹8,352 on this order",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold
                  ),
                  ),
            ],
          ),
         );
  }
}

