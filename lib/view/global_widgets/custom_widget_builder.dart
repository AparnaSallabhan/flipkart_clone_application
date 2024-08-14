import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flutter/material.dart';

class CustomWidgetBuilder extends StatelessWidget {
  const CustomWidgetBuilder({
    super.key,
    this.height = 130,
    this.width = 80,
    this.isCircle = false,
    this.imageHeight = 80,
    this.itemCount = 10,
    this.titleVisible = false,
    this.title ="",
    this.isPriceVisible = false,
    //required this.name,
    //required this.image, 
    required this.customWidgetDataList,
  });

  final double height;
  final double width;
  final bool isCircle;
  final double imageHeight;
  final int itemCount;
  final bool titleVisible;
  final String title;
  final bool isPriceVisible;
 // final String name;
  //final String image;
  final List customWidgetDataList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only( left: 10 ,bottom:titleVisible? 10:0),
          child: Text(titleVisible? title:"",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: height,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 10),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: isCircle ? width : height,
                    width: width,
                    decoration: BoxDecoration(
    
                        //color: Colors.blue,
                        borderRadius:
                            isCircle ? null : BorderRadius.circular(10),
                        border: isCircle
                            ? null
                            : Border.all(
                                color: ColorConstants.greyShade4, width: 2)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          
                          height: imageHeight,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              shape: isCircle
                                  ? BoxShape.circle
                                  : BoxShape.rectangle,
                              image:
                                  DecorationImage(image: NetworkImage(customWidgetDataList[index]["url"],),fit: BoxFit.cover),
                              borderRadius: isCircle
                                  ? null
                                  : BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                        ),
                        Text(customWidgetDataList[index]["prdctName"],
                        textAlign:TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),),
                        isPriceVisible? Text(customWidgetDataList[index]["price"]) :SizedBox()
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: itemCount),
          ),
        ),
      ],
    );
  }
}
