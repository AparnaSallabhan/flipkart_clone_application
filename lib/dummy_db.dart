

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DummyDb{
  static const List languageData =[
    {
      "language" : "हिंदी " ,
      "translate" : "Hindi" ,
      "image" : "assets/images/hindi.jpg"
    },
     {
      "language" : "తెలుగు " ,
      "translate" : "Telugu" ,
      "image" : "assets/images/telugu.jpg"
    },
     {
      "language" : "தமிழ்" ,
      "translate" : "Tamil" ,
      "image" : "assets/images/tamil.jpg"
    },
     {
      "language" : "English " ,
      "translate" : "English" ,
      "image" : "assets/images/english.jpg"
    },
     {
      "language" : "বাংলা " ,
      "translate" : "Bangali" ,
      "image" : "assets/images/bengali.jpg"
    }, {
      "language" : "मराठी " ,
      "translate" : "Marathi" ,
      "image" : "assets/images/marathi.jpg"
    },
     {
      "language" : "ಕನ್ನಡ " ,
      "translate" : "Kannada" ,
      "image" : "assets/images/kannada.jpg"
    },
     {
      "language" : "ଓଡିଆ " ,
      "translate" : "Odia" ,
      "image" : "assets/images/odia.jpg"
    },
     {
      "language" : "മലയാളം" ,
      "translate" : "Malayalam" ,
      "image" : "assets/images/malayalam.jpg"
    },
     {
      "language" : "ગુજરાતી " ,
      "translate" : "Gujarati" ,
      "image" : "assets/images/gujarati.jpg"
    },
     {
      "language" : "ਪੰਜਾਬੀ " ,
      "translate" : "Punjabi" ,
      "image" : "assets/images/punjabi.jpg"
    },
     {
      "language" : "অসমীয়া " ,
      "translate" : "Assamese" ,
      "image" : "assets/images/assamese.jpg"
    },
   
  ];

//#1
static const List ads1 =[
  "https://i.pinimg.com/564x/ed/a9/6d/eda96d6ca9be768c51ac0452fdcd913d.jpg",
  "https://i.pinimg.com/564x/eb/7e/c6/eb7ec6677c9e7f769787d781d26027fe.jpg",
  "https://i.pinimg.com/564x/17/00/79/170079bfcd96898580d854b1205ec041.jpg",
  "https://i.pinimg.com/564x/9c/3b/81/9c3b8185dba2b8dbff7c3572cd62efbd.jpg",
  "https://i.pinimg.com/564x/eb/7e/76/eb7e768c74b0725a0f997766b0a5a071.jpg",
  "https://i.pinimg.com/564x/f1/a4/64/f1a464af9b51cdc04af14be162c8a058.jpg"
];

  //#2
  static const List circleGridData = [
     {
      "image" : "https://i.pinimg.com/564x/de/b9/f7/deb9f7395d248c6b9b989d07d65b2005.jpg" ,
      "data" : "Scan & Pay" 
    },
     {
      "image" : "https://i.pinimg.com/564x/94/b5/86/94b586a1c97ced61348cb263afa6661b.jpg" ,
      "data" : "Mobiles" 
    },
     {
      "image" : "https://i.pinimg.com/564x/16/98/91/169891d21c1f8786e08c83b7fa0bcf91.jpg" ,
      "data" : "Fashion" 
    },
     {
      "image" : "https://i.pinimg.com/564x/3b/9b/8e/3b9b8e9f4f20fa5b9e9b0391f98f4ad6.jpg" ,
      "data" : "Electronics" 
    },
     {
      "image" : "https://i.pinimg.com/564x/59/bf/8d/59bf8d064d6f781c51f5ca2454df9bd5.jpg" ,
      "data" : "Beauty" 
    },
     {
      "image" : "https://i.pinimg.com/564x/33/8c/00/338c00d9dc7397aab1a52974c9303322.jpg" ,
      "data" : "TV & Appliances" 
    },
     {
      "image" : "https://i.pinimg.com/564x/0c/5a/d7/0c5ad73c792517a266eabb46930be950.jpg" ,
      "data" : "Home Essentials" 
    },
     {
      "image" : "https://i.pinimg.com/564x/04/0c/91/040c914be983c69e814c03a226d8ac5d.jpg" ,
      "data" : "Smart Gadgets" 
    },
     {
      "image" : "https://i.pinimg.com/564x/ae/8a/4b/ae8a4bda5d8385b87e1bd3ccf57cfcdb.jpg" ,
      "data" : "Flights, Hotels & Buses " 
    },
     {
      "image" : "https://i.pinimg.com/564x/ad/cc/58/adcc58575b830f8f01832b016ac2a3c3.jpg" ,
      "data" : "Bikes & Scooters" 
    },
  ];
//#3
  static const List recentViewedData =[
    {
      "prdctName" : "mens checkshirt" ,
      "url" : "https://i.pinimg.com/736x/b8/f6/d2/b8f6d27288390caded990978e25d708c.jpg"
    },
     {
      "prdctName" : "mens shirt",
      "url" : "https://i.pinimg.com/564x/5a/b1/3a/5ab13abc66e7781c85ec5606c91503a8.jpg"

    },
        {
      "prdctName" : "mens shirt" ,
      "url" : "https://i.pinimg.com/736x/b8/f6/d2/b8f6d27288390caded990978e25d708c.jpg"

    },
     {
      "prdctName" : "mens shirt",
      "url" : "https://i.pinimg.com/564x/5a/b1/3a/5ab13abc66e7781c85ec5606c91503a8.jpg"

    },
        {
      "prdctName" : "mens shirt",
      "url" : "https://i.pinimg.com/736x/b8/f6/d2/b8f6d27288390caded990978e25d708c.jpg"

    },
     {
      "url" : "https://i.pinimg.com/564x/5a/b1/3a/5ab13abc66e7781c85ec5606c91503a8.jpg",
      "prdctName" : "mens shirt"

    },
        {
      "prdctName" : "mens shirt" ,
      "url" : "https://i.pinimg.com/736x/b8/f6/d2/b8f6d27288390caded990978e25d708c.jpg"

      
    },
     {
      "prdctName" : "mens shirt",
      "url" : "https://i.pinimg.com/564x/5a/b1/3a/5ab13abc66e7781c85ec5606c91503a8.jpg"

    },


  ];
  //#4
  static const List list4 = [
    {
      "image": "https://i.pinimg.com/564x/f7/5b/c1/f75bc1013b70b588df6d2c3375e08194.jpg" ,
      "data" : "Shirt" ,
      "price" : "1000" 
    },
     {
      "image": "https://i.pinimg.com/736x/89/7b/dd/897bdd51d704e8ae3a14d3b4a63a1c3d.jpg" ,
      "data" : "Pants" ,
      "price" : "1500" 
    },
     {
      "image": "https://i.pinimg.com/564x/c2/02/2b/c2022b4e12325afd6540223853708b5d.jpg" ,
      "data" : "Frock" ,
      "price" : "1999" 
    },
    
  ];
  //#5
  static const List shortListData = [
    {
      "imageUrl" : "https://i.pinimg.com/564x/a2/ad/33/a2ad330ab1bb4f6c5616b48d88a3ba2e.jpg",
      "name" : "Mens Block button Casual shirt",
      "price" : "1999",
      "discount" : "37 % Off"
    },
     {
      "imageUrl" : "https://i.pinimg.com/564x/39/45/dc/3945dc9e33d280d8ed2792a9cc3173bf.jpg",
      "name" : "Denim Basic Ripped Jeans ",
      "price" : "1299",
      "discount" : "70 % Off"
    },
     {
      "imageUrl" : "https://i.pinimg.com/564x/1a/86/55/1a865575555f635dd6acc6cfb7251517.jpg",
      "name" : "Mens Vintage Outwear Shirt",
      "price" : "1000",
      "discount" : "40 % Off"
    },

  ];
  //#6
  static const List sposordAds = [
    "https://i.pinimg.com/564x/a9/f5/be/a9f5beb78fedb30f9f28bba607f553c4.jpg",
    "https://i.pinimg.com/564x/60/19/66/6019667920adb4d0c1fa71e87d69029d.jpg",
    "https://i.pinimg.com/564x/13/01/02/1301021edc3bb6a4bcd8e8b4bf0378a5.jpg",
    "https://i.pinimg.com/736x/65/ee/3e/65ee3e466a7bfa9a3e7fc542be7509ad.jpg",
    "https://i.pinimg.com/564x/39/36/19/3936192ac87210aea5a90ce82897183c.jpg",
    "https://i.pinimg.com/564x/87/4a/63/874a6317d4e6d1c52107176094702f63.jpg",
  ];

  //#7
  static const List brandData = [
    {
      "prdctName" : "Super Coin" ,
      "url" : " https://i.pinimg.com/236x/36/89/cb/3689cba86df1ff7404b33a8be1520d89.jpg"
    },
    {
      "prdctName" : "Express store" ,
      "url" : "https://i.pinimg.com/564x/40/60/bf/4060bf7ee3ca7637a713562ae13f1038.jpg"
    },
    {
      "prdctName" : "Pocket Bazaar" ,
      "url" : "https://i.pinimg.com/564x/f5/e9/1c/f5e91c9901b63d1c65b1d93311b5e117.jpg "
    },
    {
      "prdctName" : "Spoyl Fashion" ,
      "url" : "https://i.pinimg.com/736x/05/05/fd/0505fd53e22be17b63eefa75cbe872b8.jpg "
    },
    {
      "prdctName" : "flipkart Pay" ,
      "url" : " https://i.pinimg.com/564x/04/de/1f/04de1f4f599353783598ed5fafb9fb13.jpg"
    },
    {
      "prdctName" : "Personal Loan" ,
      "url" : " https://i.pinimg.com/736x/e0/b0/18/e0b0187177abae643d52cd217b765b04.jpg"
    },
  ];
//explore screen
  static const List explorescreenData = [
    {
      "imageUrl" : "https://i.pinimg.com/564x/32/55/ca/3255ca7eac99cd1c5da7921d1fa3276b.jpg" ,
      "brandName" : "Dream Beauty Fashion" ,
      "productName" : "Casual Regular Sleeve Printed Shirt" ,
      "prevPrice" : "999" ,
      "newPrice" : "₹159" ,
      "discount" : "84 % off" ,
      "rating" : ""
    },

   { "imageUrl": "https://i.pinimg.com/564x/19/9c/b4/199cb4665c9a9b844a63cc589a0adfb7.jpg",
    "brandName": "H&M",
    "productName": "Floral Print Dress",
    "prevPrice": "199",
    "newPrice": "₹149",
    "discount": "25% off",
    "rating": "⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/0f/9f/08/0f9f086e1dc5de7a0475ff22a41e7a61.jpg",
    "brandName": "Zara",
    "productName": "Slim Fit White Shirt",
    "prevPrice": "299",
    "newPrice": "₹249",
    "discount": "17% off",
    "rating": "⭐⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/736x/58/66/3f/58663f7cede72ff5f68092c8dfe95d5f.jpg",
    "brandName": "Levi's",
    "productName": "501 Original Fit Jeans",
    "prevPrice": "499",
    "newPrice": "₹399",
    "discount": "20% off",
    "rating": "⭐⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/39/aa/70/39aa70a6c9e37bf4c5544421cb33e655.jpg",
    "brandName": "The North Face",
    "productName": "Thermoball Jacket",
    "prevPrice": "1299",
    "newPrice": "₹999",
    "discount": "23% off",
    "rating": "⭐⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/89/ef/25/89ef25aca75bad6ed7b918a1742d9abd.jpg",
    "brandName": "Adidas",
    "productName": "Trefoil Hoodie",
    "prevPrice": "499",
    "newPrice": "₹399",
    "discount": "20% off",
    "rating": "⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/3a/e3/c8/3ae3c84a99f19655630fa7129afd45b2.jpg",
    "brandName": "Burberry",
    "productName": "Wool Blend Trench Coat",
    "prevPrice": "7999",
    "newPrice": "₹7499",
    "discount": "6% off",
    "rating": "⭐⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/3a/3b/57/3a3b57be143e1df4f79d62888328b743.jpg",
    "brandName": "Uniqlo",
    "productName": "Cashmere Crewneck Sweater",
    "prevPrice": "999",
    "newPrice": "₹799",
    "discount": "20% off",
    "rating": "⭐⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/8a/c7/6b/8ac76b7e8eec6e974376f4892820d22b.jpg",
    "brandName": "Tommy Hilfiger",
    "productName": "Logo Graphic Tee",
    "prevPrice": "299",
    "newPrice": "₹199",
    "discount": "33% off",
    "rating": "⭐⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/38/31/09/38310946c6444e9aa607f35166661cab.jpg",
    "brandName": "Wrangler",
    "productName": "Slim Fit Stretch Jeans",
    "prevPrice": "399",
    "newPrice": "₹299",
    "discount": "25% off",
    "rating": "⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/49/b6/58/49b658452d318789733a62c7adb44d01.jpg",
    "brandName": "Puma",
    "productName": "Athletic Shorts",
    "prevPrice": "249",
    "newPrice": "₹199",
    "discount": "20% off",
    "rating": "⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/5f/a9/86/5fa9862d4beba4e7cc7de090e1ff2741.jpg",
    "brandName": "Mango",
    "productName": "Pleated Midi Skirt",
    "prevPrice": "3499",
    "newPrice": "₹2799",
    "discount": "20% off",
    "rating": "⭐⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/75/dc/13/75dc1369145f1647d167119ebdf942e7.jpg",
    "brandName": "Forever 21",
    "productName": "Chiffon Blouse",
    "prevPrice": "1999",
    "newPrice": "₹1499",
    "discount": "25% off",
    "rating": "⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/3b/b7/8d/3bb78db3c72cdff4a9038daec030e44d.jpg",
    "brandName": "Calvin Klein",
    "productName": "Modern Fit Suit",
    "prevPrice": "2499",
    "newPrice": "₹1999",
    "discount": "20% off",
    "rating": "⭐⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/25/48/b7/2548b71975f843b6290da3be0e60c9b7.jpg",
    "brandName": "GAP",
    "productName": "Denim Shirt Dress",
    "prevPrice": "2999",
    "newPrice": "₹2299",
    "discount": "23% off",
    "rating": "⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/13/c3/32/13c33277086d89bb49d47deea3dd7ff1.jpg",
    
    "productName": "Reverse Weave Hoodie",
    "brandName": "Champion",
    "prevPrice": "4499",
    "newPrice": "₹3499",
    "discount": "22% off",
    "rating": "⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/11/96/24/1196240aa7eb22a067fcf732af298f0e.jpg",
    
    "productName": "Double Breasted Wool Coat",
    "brandName": "Hugo Boss",
    "prevPrice": "6999",
    "newPrice": "₹5999",
    "discount": "14% off",
    "rating": "⭐⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/4f/49/01/4f490178bf9d3c111b0ded43b0abd5f7.jpg",
   
    "productName": "Oxford Button-Down Shirt",
     "brandName": "Ralph Lauren",
    "prevPrice": "5999",
    "newPrice": "₹4999",
    "discount": "17% off",
    "rating": "⭐⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/e6/ae/8d/e6ae8d4522d44d70ba54c3c330d3f756.jpg",
  
    "productName": "Merino Wool V-Neck Sweater",
      "brandName": "Banana Republic",
    "prevPrice": "799",
    "newPrice": "₹599",
    "discount": "25% off",
    "rating": "⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/e6/ae/8d/e6ae8d4522d44d70ba54c3c330d3f756.jpg",
    "brandName": "Express",
    "productName": "Slim Fit Stretch Blazer",
    "prevPrice": "999",
    "newPrice": "₹849",
    "discount": "15% off",
    "rating": "⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/e6/ae/8d/e6ae8d4522d44d70ba54c3c330d3f756.jpg",
    "brandName": "H&M",
    "productName": "A-Line Mini Skirt",
    "prevPrice": "1999",
    "newPrice": "₹1499",
    "discount": "25% off",
    "rating": "⭐⭐⭐⭐"
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/e6/ae/8d/e6ae8d4522d44d70ba54c3c330d3f756.jpg",
    "brandName": "ASOS",
    "productName": "Ruffle Detail Midi Dress",
    "prevPrice": "3499",
    "newPrice": "₹2499",
    "discount": "29% off",
    "rating": "⭐⭐⭐⭐⭐"
  }

  ];

  //account screen
  static const List accountData1 = [
    {
      "icon" : FontAwesomeIcons.box,
      "text" : "Orders"
    },
     {
      "icon" : FontAwesomeIcons.heart,
      "text" : "Wishlist"
    },
     {
      "icon" : FontAwesomeIcons.gift,
      "text" : "Coupons"
    },
     {
      "icon" : FontAwesomeIcons.headset,
      "text" : "Help Center"
    },

  ];
  static const List creditdata = [
    {
      "icon" : Icons.payments_outlined,
      "data1" : "Personal Loan",
      "data2" : "Quick cash up to ₹10,00,000."
    },
      {
      "icon" : Icons.currency_rupee_outlined,
      "data1" : "Flipkart Pay Later",
      "data2" : "instant credit up to ₹1 Lakh. Apply Now"
    }
  ];

  static const List settingsData = [
    {
      "icon" :Icons.crop_square ,
      "data1" : "Flipkart Plus" ,
      
    },
    {
      "icon" :Icons.person_2_outlined ,
      "data1" : "Edit Profile" ,
     
    },
    {
      "icon" :Icons.wallet_sharp ,
      "data1" : "Saved Credit / Debit & gift Cards" ,
      
    },
    {
      "icon" :Icons.location_on_outlined ,
      "data1" : "Saved Addresses" ,
   
    },
    {
      "icon" :Icons.language_rounded,
      "data1" : "Select Language" ,
      
    },
    {
      "icon" :Icons.edit_notifications_outlined ,
      "data1" : "Notification Settings" ,
      
    },
  ];

  static const List activityData = [
    {
      "icon" :Icons.edit_document,
      "data1" : "Reviews"
    },
     {
      "icon" :Icons.question_answer_outlined,
      "data1" : "Question & Answer"
    }
  ];
  static const List offeringData = [
    {
      "image" : "https://i.pinimg.com/564x/3d/67/c6/3d67c6708b8fd9aba351cc74395d0284.jpg" ,
      "data" : "10X Reward points",
      "price" : "Apply Now"
    },
    {
      "image" : "https://i.pinimg.com/564x/b7/97/b0/b797b0c9e025aaa6e7485ba2911cfbe0.jpg" ,
      "data" : "Exciting Rewards",
      "price" : "Apply Now"
    },
    {
      "image" : "https://i.pinimg.com/564x/9f/f5/b7/9ff5b74cc8d63abceeee2c65c5a9c8d6.jpg" ,
      "data" : "No Const EMIs",
      "price" : "Apply Now"
    }
  ];

  static const List feedbackData = [
    {
      "icon" : Icons.description_outlined,
      "data1" : "Terms, Policies and Licenses"
    },
     {
      "icon" : Icons.help_outline,
      "data1" : "Browse FAQs"
    }
  ];

  //Categories screen

  static const List categoriesScreenData1 = [
    {
      "image" : "https://i.pinimg.com/564x/dc/6b/d0/dc6bd0280d5e242f421997468479abe5.jpg",
      "data" : "Offer Zone"
    },
    {
      "image" : "https://i.pinimg.com/564x/4f/47/92/4f479200831ea5a7594cdfeda453e68c.jpg",
      "data" : "Rakhi Special Deals"
    },
    {
      "image" : "https://i.pinimg.com/564x/40/60/bf/4060bf7ee3ca7637a713562ae13f1038.jpg",
      "data" : "Express Store"
    },
    {
      "image" : "https://i.pinimg.com/564x/fb/94/3d/fb943ddb9c40083a58bed06c4c674e7f.jpg",
      "data" : "Pocket bazaar"
    },
    
  ];
  static const List categoriesScreenData2 = [
    {
      "image" : "https://i.pinimg.com/564x/da/eb/ea/daebea65ab879ea849ebb6d060cfd0ce.jpg",
      "data" : "Flipkart green"
    }, 
      {
      "image" : "https://i.pinimg.com/564x/1a/27/96/1a2796019f9dfd5a418b1bddfd16d457.jpg",
      "data" : "International Brands"
    }, 
      {
      "image" : "https://i.pinimg.com/564x/70/ff/71/70ff71118a485b9503ae7ea2a42bc29c.jpg",
      "data" : "Luggagae & Accessories"
    }, 
      {
      "image" : "https://i.pinimg.com/564x/ec/31/99/ec3199872e69229fd47a090b01946351.jpg",
      "data" : "flipkart samarth"
    }, 
      {
      "image" : "https://i.pinimg.com/564x/eb/d8/4a/ebd84aee9bd1feddce359d9803236f4b.jpg",
      "data" : "Best deal on FK originals"
    }, 
      {
      "image" : "https://i.pinimg.com/564x/23/2b/12/232b126bcea9ffcb09d9276c54f34a37.jpg",
      "data" : "smart living"
    }, 
      {
      "image" : "https://i.pinimg.com/564x/54/78/1d/54781db8f3c77b949c081998178e10cc.jpg",
      "data" : "next gen brands"
    }, 
     
  ];

static const List categoriesScreenData3 = [
   {
      "image" : "https://i.pinimg.com/564x/fe/80/20/fe802018e74754e485334b29a1d4ff4d.jpg",
      "data" : "Scan & pay"
    }, 
      {
      "image" : "https://i.pinimg.com/736x/40/2b/96/402b96ea42ffbbaf124d0b9dd13592e9.jpg",
      "data" : "SuperCoin"
    }, 
      {
      "image" : "https://i.pinimg.com/564x/1c/96/24/1c962494caa827f03c5666edf9371f8d.jpg",
      "data" : "Coupons"
    }, 
      {
      "image" : "https://i.pinimg.com/736x/e8/f9/05/e8f905d5f5d7f84abf1eabbeaa8fc191.jpg",
      "data" : "Bills & Recharges"
    }, 
      {
      "image" : "https://i.pinimg.com/236x/0d/72/a3/0d72a38e8e0b4ab38dc6db1879e51422.jpg",
      "data" : "Flipkart Pay"
    }, 
      {
      "image" : "https://i.pinimg.com/564x/e0/b0/18/e0b0187177abae643d52cd217b765b04.jpg",
      "data" : "Personal Loan"
    }, 
      {
      "image" : "https://i.pinimg.com/564x/b4/3c/b7/b43cb756ce00634dd01081522d83a685.jpg",
      "data" : "Free credit score"
    }, 
      {
      "image" : "https://i.pinimg.com/564x/7f/7f/ee/7f7fee82c263ca7538e810db7f0c00c5.jpg",
      "data" : "fire drops"
    }, 
      {
      "image" : "https://i.pinimg.com/564x/24/62/09/24620905f2c00040b9cae8d8e1dbd97e.jpg",
      "data" : "become a seller"
    }, 
      {
      "image" : "https://i.pinimg.com/564x/01/fe/f7/01fef796eaecb8d9ff41790ace32d88b.jpg",
      "data" : "Live shop+"
    }, 
      {
      "image" : "https://i.pinimg.com/564x/74/91/43/74914352aae274e66bb2b43023e99d53.jpg",
      "data" : "view all"
    }, 

    
];
static const List data = [
 {
   "imageUrl": "https://i.pinimg.com/564x/11/96/24/1196240aa7eb22a067fcf732af298f0e.jpg",
    
    "productName": "Double Breasted Wool Coat",
 },
 { "imageUrl": "https://i.pinimg.com/564x/e6/ae/8d/e6ae8d4522d44d70ba54c3c330d3f756.jpg",
  
    "productName": "Merino Wool V-Neck Sweater",},
    {
      "imageUrl": "https://i.pinimg.com/564x/11/96/24/1196240aa7eb22a067fcf732af298f0e.jpg",
    
    "productName": "Double Breasted Wool Coat",
    },
    {
      "imageUrl": "https://i.pinimg.com/564x/13/c3/32/13c33277086d89bb49d47deea3dd7ff1.jpg",
    
    "productName": "Reverse Weave Hoodie",
    },
     {
      "imageUrl": "https://i.pinimg.com/564x/11/96/24/1196240aa7eb22a067fcf732af298f0e.jpg",
    
    "productName": "Double Breasted Wool Coat",
    },
    {
      "imageUrl": "https://i.pinimg.com/564x/13/c3/32/13c33277086d89bb49d47deea3dd7ff1.jpg",
    
    "productName": "Reverse Weave Hoodie",
    }
];

static const List cartScreenData =[
  {
    "imageUrl": "https://i.pinimg.com/564x/11/96/24/1196240aa7eb22a067fcf732af298f0e.jpg",
    
    "productName": "Double Breasted Wool Coat",
    "size" : "30",
    "prevPrice": "6999",
    "newPrice": "₹5999",
    "discount": "14% off",
    "rating": 3
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/4f/49/01/4f490178bf9d3c111b0ded43b0abd5f7.jpg",
   
    "productName": "Oxford Button-Down Shirt",
    "size" : "32",
    "prevPrice": "5999",
    "newPrice": "₹4999",
    "discount": "17% off",
    "rating": 4
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/e6/ae/8d/e6ae8d4522d44d70ba54c3c330d3f756.jpg",
  
    "productName": "Merino Wool V-Neck Sweater",
    "size" : "30",
    "prevPrice": "799",
    "newPrice": "₹599",
    "discount": "25% off",
    "rating": 5
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/a1/75/1a/a1751a68d755b44e96feb2418f266db1.jpg",
    "productName": "Slim Fit Stretch Blazer",
    "size" : "30",
    "prevPrice": "999",
    "newPrice": "₹849",
    "discount": "15% off",
    "rating": 4
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/68/0a/51/680a5191fbc1ddb9345e1db02d9dd4f7.jpg",
    "productName": "A-Line Mini Skirt",
    "size" : "30",
    "prevPrice": "1999",
    "newPrice": "₹1499",
    "discount": "25% off",
    "rating": 3
  },
  {
    "imageUrl": "https://i.pinimg.com/564x/ec/a9/2b/eca92bd11be18b6519399bb2c9e1086b.jpg",
    "productName": "Ruffle Detail Midi Dress",
    "size" : "30",
    "prevPrice": "3499",
    "newPrice": "₹2499",
    "discount": "29% off",
    "rating": 4
  }
];

}

 


















