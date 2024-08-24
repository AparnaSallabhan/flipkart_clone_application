import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard ({
    super.key, 
  //  required this.cartList, 
    required this.starCount, 
    required this.image, 
    required this.prdctName, 
    required this.size, 
    required this.discount, 
    required this.prevPrice, 
    required this.newPrice,
  });
  //final List cartList ;
  final int starCount;
  final String image;
  final String prdctName;
  final String size;
  final String discount;
  final String prevPrice;
  final String newPrice;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //row of columns
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //column1
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                            color: ColorConstants.greyShade5)),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                            color: ColorConstants.greyShade5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Qty:1",
                          style: TextStyle(
                              color: ColorConstants.mainBlack,
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(Icons.arrow_drop_down_outlined)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              //column2
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    prdctName,
                    style: TextStyle(
                        fontSize: 20,
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    size,
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorConstants.greyShade4,
                        fontWeight: FontWeight.w400),
                  ),
                  //rating
                  Row(
                    children: List.generate(
                      5,
                      (index) => Icon(
                        Icons.star,
                       color:  index<=starCount-1 ?Colors.green:ColorConstants.greyShade3
                      ),
                    ),
                  ),
                  //price
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      Text(
                        discount,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.green),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        prevPrice,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.lineThrough,
                            color: ColorConstants.greyShade3),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        newPrice,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: ColorConstants.mainBlack),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Delivery in 2 days",
            style: TextStyle(
                fontSize: 16,
                color: ColorConstants.greyShade4,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: ColorConstants.greyShade5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.delete_outline_outlined,size: 18,),
                      Text("Remove",
                          style: TextStyle(
                              fontSize: 16,
                              color: ColorConstants.greyShade5,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: ColorConstants.greyShade5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.archive_outlined,
                        size: 18,
                      ),
                      Text("Save for later",
                          style: TextStyle(
                              fontSize: 16,
                              color: ColorConstants.greyShade5,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: ColorConstants.greyShade5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bolt_outlined,size: 18,),
                      Text("Buy this now",
                          style: TextStyle(
                              fontSize: 16,
                              color: ColorConstants.greyShade5,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
