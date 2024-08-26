import 'package:flipkart_clone_application/dummy_db.dart';
import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flipkart_clone_application/view/global_widgets/custom_widget_builder.dart';
import 'package:flipkart_clone_application/view/global_widgets/horizontal_grid.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Categories"),
        actions: [
          Icon(
            Icons.search,
            color: ColorConstants.mainBlack,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(
            Icons.mic,
            color: ColorConstants.mainBlack,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.amber,
                  backgroundImage: NetworkImage("https://i.pinimg.com/564x/71/e5/63/71e563b3c2839eafd3bad0eae1694b48.jpg"),
                ),
                Text("For You"),
                Container(
                  // height: double.infinity,
                  width: 100,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      color: ColorConstants.greyShade1,
                      borderRadius: BorderRadius.circular(10)),
                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.amber,
                                backgroundImage: NetworkImage(DummyDb.categoriesScreenData4[index]["image"]),
                              ),
                              Text(DummyDb.categoriesScreenData4[index]["data"])
                            ],
                          ),
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: DummyDb.categoriesScreenData4.length),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 280,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Popular Store",
                    style: TextStyle(
                        fontSize: 20,
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10,),
                  HorizontalGrid(
                    datalist: DummyDb.categoriesScreenData1,
                    isCircle: true,
                    itemCount: 4,
                    crossAxisCount: 3,
                    isPriceVisible: false,),
            
                     CustomWidgetBuilder(
                         width: 100,
                         title: "Recently Viewed Stores",
                         titleVisible: true, 
                         customWidgetDataList: DummyDb.recentViewedData,              
                       ),

                      SizedBox(height: 15,),
                      Text("More on flipkart", style: TextStyle(
                        fontSize: 20,
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                      HorizontalGrid(
                        datalist: DummyDb.categoriesScreenData2,
                      isCircle: true,
                      isPriceVisible: false,
                      itemCount: DummyDb.categoriesScreenData2.length,
                      gridHeight: 305,
                      ),

                       SizedBox(height: 15,),
                      Text("Have you tried?", style: TextStyle(
                        fontSize: 20,
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                      HorizontalGrid(
                        datalist: DummyDb.categoriesScreenData3,
                      isCircle: true,
                      isPriceVisible: false,
                      itemCount: DummyDb.categoriesScreenData3.length,
                      gridHeight: 400,
                      )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
