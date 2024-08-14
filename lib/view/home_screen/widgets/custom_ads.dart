import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomAds extends StatelessWidget {
  const CustomAds({
    super.key,
    this.height = 180,
    this.sidePadding = true, 
    required this.imagesList
    });
  
  final double height;
  final bool sidePadding;
  final List imagesList;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: List.generate(
        imagesList.length, 
        (index) =>Container(
            margin: EdgeInsets.symmetric(horizontal:sidePadding? 5 : 0,vertical: 10),
            height: height,
            decoration: BoxDecoration(
                color: Colors.red, 
                borderRadius: BorderRadius.circular(sidePadding ? 10 : 0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                  imagesList[index]))),
          ) ,), 
         options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          autoPlay: true,
          pauseAutoPlayOnTouch: true,

         ))
    
     
;
  }
}