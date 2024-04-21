
import 'package:flutter/material.dart';
 Color  mostviewcolor=Color(0xFFC6A244);
 Color  white=Colors.white;
 Color  teal=Colors.teal;
 Color  grey=Colors.grey;
 Color  black=Colors.black;
 Color  red=Colors.red.shade300;
 Color  green=Colors.green;
 Color  greenAccent=Colors.greenAccent;
 Color greenShade900=Colors.green.shade900;
 Color greenShade400=Colors.green.shade400;
 Color greenShade200=Colors.green.shade200;
 Color lightgreenShade900=Colors.lightGreen.shade900;
 Color redShade900=Colors.red.shade900;
 Color greyShade300=Colors.grey.shade300;
 Color blueShade400=Colors.blue.shade400;
 Color greyShade500=Colors.grey.shade500;
 Color blue=Colors.blue;




class ColorNotifires with ChangeNotifier {
  bool isDark = false;
  // set setIsDark(value) {
  //   isDark = value;
  //   notifyListeners();
  // }
  void switchs(bool values) {
    isDark = values;
    notifyListeners();
  }
  get getIsDark => isDark;
  get mostviewcolor => isDark?red:Color(0xFFC6A244);
  get getbgcolor => isDark ?Color.fromARGB(115, 74, 70, 70): white; //background color
  get getboxcolor => isDark ? white : grey; //containar color
  get getwhiteblackcolor =>
      isDark ? white : black; //text defultsystemicon imageicon color
  get getgreycolor => isDark ? greyShade300 : grey;
  get getblack=>isDark?black:white;
  get hintColor=>isDark?Colors.grey.shade700:greyShade500;
  get primeryColor=>isDark?red:teal;
  get boxBackgroundcolor=>isDark?Colors.grey.shade900:white;
  get secondrycolor=>isDark?teal:red;
  get getblueyellow=>isDark?Colors.yellow:Colors.blueAccent;
  get getredYellow=>isDark?Colors.yellow:redShade900;


}
late ColorNotifires notifires;









