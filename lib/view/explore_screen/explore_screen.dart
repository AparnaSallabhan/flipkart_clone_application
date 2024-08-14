import 'package:flipkart_clone_application/dummy_db.dart';
import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore",
          style: TextStyle(
              fontSize: 20,
              color: ColorConstants.mainBlack,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 28,
            color: ColorConstants.mainBlack,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.mic,
            size: 28,
            color: ColorConstants.mainBlack,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.camera_alt,
            size: 28,
            color: ColorConstants.mainBlack,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.shopping_cart,
            size: 28,
            color: ColorConstants.mainBlack,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: DummyDb.explorescreenData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 320,
          crossAxisCount: 2,
          mainAxisSpacing: 6,
        ),
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            border: Border.all(color: ColorConstants.greyShade2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.network(
                    DummyDb.explorescreenData[index]["imageUrl"],
                    height: 200,
                    alignment: Alignment.center,
                  ),
                ),
                Text(
                  DummyDb.explorescreenData[index]["brandName"],
                  overflow: TextOverflow.ellipsis,

                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  DummyDb.explorescreenData[index]["productName"],
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    //fontWeight: FontWeight.w500
                  ),
                ),
                Row(
                  children: [
                    Text(
                      DummyDb.explorescreenData[index]["prevPrice"],
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough,
                          color: ColorConstants.greyShade3),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      DummyDb.explorescreenData[index]["newPrice"],
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.mainBlack),
                    ),
                    SizedBox(width: 8,),
                    Text(
                      DummyDb.explorescreenData[index]["discount"],
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.green),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
