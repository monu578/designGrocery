import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customWidget/topSlider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/bottomnavbar/laundry/cetagoryLaundry.dart';
import 'package:unimart/view/bottomnavbar/laundry/homeViewLaundry.dart';
import 'package:unimart/view/bottomnavbar/laundry/myProfileLaundry.dart';
import 'package:unimart/view/cart/laundry/checkOutLaundry.dart';
import 'package:unimart/view/shop/laundry/services.dart';

import '../../../controller/homeController.dart';

class HomeLaundry extends StatefulWidget {
  const HomeLaundry({super.key});

  @override
  State<HomeLaundry> createState() => _HomeLaundryState();
}

class _HomeLaundryState extends State<HomeLaundry> {
  List items=[{"link":"https://cdn2.iconfinder.com/data/icons/hygiene-routine-outline/64/Hand-soap-wash-two_1-1024.png","name":"Washing"},
    {"link":"https://cdn0.iconfinder.com/data/icons/home-appliances-16/100/iron-512.png","name":"Steam Presss"},
    {"link":"https://cdn0.iconfinder.com/data/icons/cleaning-services-1-0/1024/dry_cleaning-256.png","name":"Dry Cleaning"},
    {"link":"https://icon-library.com/images/washing-icon/washing-icon-17.jpg","name":"Formal Wash"},
    {"link":"https://cdn0.iconfinder.com/data/icons/housekeeping-editable-stroke-line-1/68/Housekeeping-23-1024.png","name":"Deep Cleaning"},
    {"link":"https://cdn1.iconfinder.com/data/icons/cleaning-129/64/clothes-fabrics-hand-wash-clean-shirt-512.png","name":"Powder Wash"},
  ];
  List sliderImage=[{"image_path":"assets/images/laundry1.webp"},
    {"image_path":"assets/images/laundry2.jpg"},
    {"image_path":"assets/images/laundry3.webp"},
    {"image_path":"assets/images/laundry4.jpg"},
    {"image_path":"assets/images/laundry5.jpg"},

  ];
  int currentIndex=0;
  late List viewsOfPages=[
    HomePageLaundry(),
    CategoryLaundry(),
    MyProfileLaundry(),
    CheckOutLaundry(IconButton(onPressed: (){
      setState(() {
        currentIndex=0;
      });
    }, icon: Icon
      (Icons.arrow_back,))),
    MyProfileLaundry()
  ];
  HomeController controller=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    var modeClick=controller.modeClick.value;
    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      // extendBody: true,
     
      body: viewsOfPages.elementAt(currentIndex),
      floatingActionButton: Visibility(
        visible: currentIndex==3?false:true,

        child: FloatingActionButton(onPressed: () {
          setState(() {
            currentIndex=0;
          });
        },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset("assets/images/unimartlogo.png"),
          ),
          backgroundColor: greyShade300,

          shape: CircleBorder(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Visibility(
        visible: currentIndex==3?false:true,
        child: BottomAppBar(
          elevation: 5,
          height: 70,//bottom navigation bar on scaffold
          color:notifires.boxBackgroundcolor,
          shape: CircularNotchedRectangle(), //shape of notch
          notchMargin: 6, //notche margin between floating button and bottom appbar
          child: Row( //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildTabItem(icon:FontAwesomeIcons.solidCreditCard, index: 1,option: "Payment".tr),
              buildTabItem(icon: Icons.shopping_cart, index: 3,option: "Cart".tr),

              SizedBox(width:8 ,),
              buildTabItem(icon: Icons.category_rounded, index: 2,option: "Category".tr),
              buildTabItem(icon: Icons.person, index: 4,option: "Profile".tr),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildTabItem({required IconData icon, required int index,required String option}) {
    final notifires=Provider.of<ColorNotifires>(context);

    return GestureDetector(
      onTap: (){
        setState(() {
          currentIndex = index;

        });

      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: currentIndex == index ? notifires.getredYellow : notifires.getgreycolor),
          SizedBox(height: 5,),
          Text(option.tr,style: CustomTheme.checkBoxTextStype.copyWith(
              color: currentIndex == index ? notifires.getredYellow : notifires.getgreycolor,fontSize: 14,fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}
