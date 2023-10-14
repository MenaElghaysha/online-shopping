import 'package:flutter/material.dart';
Color colorBackground = const Color(0xff0e0e0e);
PageController controller =PageController();
Color activeColor =Color(0xffe6323e)!;
Color inactiveColor =Color(0xff2b2b2b)!;
String fontFamily = 'Audiowide';
late double rate ;
int counter=1 ;

bool favorite_isSelected = false;








// late bool isSmallSelected=false;
// late bool isMeduimSelected=false;
// late bool isLargeSelected=false;
// late bool isXlargeSelected=false;
// late bool isXXlargeSelected =false;


//selection(state){
//   if(state==1){
//     isSmallSelected=true;
//     isMediumSelected=false;
//     isLargeSelected=false;
//     isXlargeSelected=false;
//     isXXlargeSelected=false;
//   }else if (state==2){
//     isSmallSelected=false;
//     isMediumSelected=true;
//     isLargeSelected=false;
//     isXlargeSelected=false;
//     isXXlargeSelected=false;
//   }else if (state==3){
//     isSmallSelected=false;
//     isMediumSelected=false;
//     isLargeSelected=true;
//     isXlargeSelected=false;
//     isXXlargeSelected=false;
//   }else if (state==4){
//     isSmallSelected=false;
//     isMediumSelected=false;
//     isLargeSelected=false;
//     isXlargeSelected=true;
//     isXXlargeSelected=false;
//   }else if (state==5){
//     isSmallSelected=false;
//     isMediumSelected=false;
//     isLargeSelected=false;
//     isXlargeSelected=false;
//     isXXlargeSelected=true;
//
//   }
// }






