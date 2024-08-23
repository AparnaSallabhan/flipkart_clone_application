import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flutter/material.dart';

class HorizontalGrid extends StatelessWidget {
  const HorizontalGrid({
    super.key,
    this.itemCount = 3,
    this.isCircle = false,
    this.crossAxisCount = 3,
    this.isPriceVisible = true,
    
    this.gridHeight =205,
    this.height = 75,
    required this.datalist
  });

  final int itemCount;
  final bool isCircle;
  final int crossAxisCount;
  final bool isPriceVisible;
  
  final double gridHeight;
  final double height;
  final List datalist;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isCircle ? gridHeight : (height+45),
      child: GridView.builder(
        padding: EdgeInsets.only(bottom: 10),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: itemCount,
        //padding: EdgeInsets.symmetric(horizontal: 5),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: isCircle ? 100 : (height+45),
            
            crossAxisCount: crossAxisCount),
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(            
            left: 10,
            right: 10,

          ),
          decoration: BoxDecoration(
              //color: Colors.blue,
              //shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
              border: isCircle
                  ? null
                  : Border.all(
                      color: ColorConstants.greyShade4,
                      width: 2,
                    ),
              borderRadius: isCircle ? null : BorderRadius.circular(5)),
          child: Column(
            children: [
              Container(
                height: height,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                    image: DecorationImage(image: NetworkImage(datalist[index]["image"]),fit: BoxFit.cover)),
              ),
              Text(
                datalist[index]["data"],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w600),
              ),
              isPriceVisible ? Text(datalist[index]["price"]) : SizedBox(),
              // SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
