import 'package:flipkart_clone_application/utils/color_constants.dart';
import 'package:flutter/material.dart';

class AccountScreenCard extends StatelessWidget {
  const AccountScreenCard(
      {super.key,
      this.creditDataVisible = false,
       this.icon =Icons.numbers,
       this.data1 = "",
      this.data2 = "", 
      required this.title, 
      required this.itemCount, 
      required this.itemNumber, 
       this.dataList = const[]});

  final bool creditDataVisible;
  final IconData icon;
  final String title;
  final String data1;
  final String data2;
  final int itemCount;
  final double itemNumber;
  final List dataList;
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
       color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                Text(
                    title,
                    style: TextStyle(
                        fontSize: 20,
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 65 * itemNumber,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: itemCount,
                      itemBuilder: (context, index) => 
                        Padding(
                             padding: const EdgeInsets.symmetric(vertical: 10),
                             child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                        Icon(
                          itemCount==1?icon:
                    dataList[index]["icon"],
                    color: ColorConstants.blueShade3,
                   ),
                     SizedBox(
                    width: 15,
                     ),
                    creditDataVisible? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(itemCount==1?data1: dataList[index]["data1"],
                          style: TextStyle(
                            fontSize: 18,
                            color: ColorConstants.mainBlack,
                          )),
                      
                          Text(
                            itemCount==1?data2:
                            dataList[index]["data2"],
                            style: TextStyle(
                            fontSize: 16,
                          color: ColorConstants.greyShade4,
                       ))
                    ],
                    ): 
                      Text(itemCount==1?data1: dataList[index]["data1"],
                          style: TextStyle(
                            fontSize: 18,
                            color: ColorConstants.mainBlack,
                          )),
                  
                                    Spacer(),
                                    Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                                    )
                       ],
                    ),
                 ),
              ),
           )
      
        ],
      ),
    );
  }
}
