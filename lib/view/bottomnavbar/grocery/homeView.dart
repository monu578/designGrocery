import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/view/home/grocery/home.dart';

// Importing custom widgets and styles
import '../../../customWidget/commonWidgets.dart';
import '../../../customWidget/middleSlider.dart';
import '../../../customWidget/shopByCategoryContainer.dart';
import '../../../customWidget/shopByStore.dart';
import '../../../customWidget/specialDealsContainer.dart';
import '../../../customWidget/topSlider.dart';
import '../../../utilis/customStyle.dart';

import '../../home/laundry/homeLaundry.dart';
import '../../shop/grocery/search/searchScreen.dart';
import 'myProfileDetails.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List of images for the top slider
  List imageList = [
    {"id": 1, "image_path": "assets/images/img1.jpg"},
    {"id": 2, "image_path": "assets/images/img2.jpg"},
    {"id": 3, "image_path": "assets/images/img3.jpg"},
    {"id": 4, "image_path": "assets/images/img4.jpg"},
    {"id": 5, "image_path": "assets/images/img5.jpg"},
    {"id": 6, "image_path": "assets/images/img6.jpg"}
  ];
  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    // Get the screen size
    final Size size = MediaQuery.of(context).size;


    // Home widget structure
    return SafeArea(
      child: Scaffold(
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(200),
        //   child: AppBar(
        //       automaticallyImplyLeading: false,
        //       elevation: 0,
        //       scrolledUnderElevation: 0,
        //       backgroundColor: Colors.yellow.shade700,
        //       title: Text("Delivery In 8 minutes".tr,style: CustomTheme.mostviewtitle.copyWith(color: black,fontSize: 25),),
        //       actions: [
        //         Padding(
        //           padding: const EdgeInsets.only(left: 10,right: 20,top: 10,bottom: 5),
        //           child: InkWell(
        //               onTap: (){
        //                 Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfile()));
        //               },
        //               child: ImageIcon(NetworkImage("http://cdn.onlinewebfonts.com/svg/img_206976.png",),size: 50,color: teal,)),
        //         )
        //       ],
        //       bottom:AppBar(
        //         backgroundColor: Colors.yellow.shade700,
        //         scrolledUnderElevation: 0,
        //         automaticallyImplyLeading: false,
        //         elevation: 0,
        //         title:  CustomSearchBoxWithScreen("Search For Ata,Dal,Coke and More...",(){
        //           Get.to(SearchScreen());
        //           _focusNode.unfocus();
        //
        //         },_focusNode),
        //       )
        //
        //   ),
        // ),
        backgroundColor: notifires.boxBackgroundcolor,
        body:Stack(
          children: [
            // ListView containing various sections
            Padding(
              padding: EdgeInsets.only(top: 200),
              child: ListView(
                children: [
                  // TopSlider at the beginning of the screen
                  Container(
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                      width: size.width,
                      child: TopSlider(imageList, BoxFit.fill)),
                  SizedBox(height: 10),

                  // Heading for "Shop by category"
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Shop by category",
                      style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor)
                    ),
                  ),

                  // Container containing the ShopByCategory widget
                  Container(
                    margin: EdgeInsets.all(20),
                    width: size.width,
                    height: 680,
                    child: ShopByCategory(NeverScrollableScrollPhysics()),
                  ),

                  // MiddleSlider below "Shop by category"
                  Container(
                      margin: EdgeInsets.only(top: 0, left: 20, right: 20),
                      width: size.width,
                      child: MidSlider(imageList)),

                  // Heading for "Shop By Store"
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Text(
                      "Shop By Store".tr,
                      style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),
                    ),
                  ),

                  // ShopByStore widget
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 5, top: 10),
                    child: ShopByStore(),
                  ),

                  // Heading for "Special Deals"
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Text(
                      "Special Deals".tr,
                      style: CustomTheme.amountTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: notifires.getwhiteblackcolor
                      ),
                    ),
                  ),

                  // Container containing the SpecialDeals widget
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 290,
                      child: SpecialDeals(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,right:0,top:0,
              child: Container(
                height: 190,
                decoration: BoxDecoration(
                  color: notifires.secondrycolor,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 8,right: 8),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Delivery in",style: CustomTheme.mostviewnight.copyWith(fontWeight: FontWeight.bold),),
                            Text("16 minutes",style: CustomTheme.bigSecondaryTextStyle.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28,fontFamily: "Heavy"),),
                          ],
                        ),
                        trailing:  GestureDetector(
                                      onTap: (){
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeLaundry()));
                                      },
                                      child: ImageIcon(AssetImage("assets/icons/profileIcone.png"),size: 50,color: notifires.getredYellow,)),
                        subtitle: Row(
                          children: [
                            Text("OFFICE - ",style: CustomTheme.mostviewhome.copyWith(fontWeight: FontWeight.w800,color: notifires.getwhiteblackcolor),),
                            Text("D-52 Noida,Sector-2",style: CustomTheme.mostviewbeds.copyWith(color: notifires.getwhiteblackcolor),)
                          ],
                        ),
                                ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8),
                        child: CustomSearchBoxWithScreen("Search For Ata,Dal,Coke and More...",(){
                Get.to(SearchScreen());
                _focusNode.unfocus();

              },_focusNode),
                      ),
                      SizedBox(height: 10,),


                    ],
                  ),
                ),
              ),
            ),
          ],
        ) ,
        floatingActionButton: SpeedDial(
          overlayColor: notifires.boxBackgroundcolor,
          backgroundColor: notifires.primeryColor,
          child: Icon(Icons.change_circle_outlined,color: white,size: 30,),
          children: [
            SpeedDialChild(
              labelStyle: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),
              labelBackgroundColor: notifires.secondrycolor,
              backgroundColor: notifires.secondrycolor,
              child: Icon(Icons.local_laundry_service,color: notifires.getwhiteblackcolor,),
              label: 'Laundry',
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeLaundry())),
            ),
            SpeedDialChild(
              labelStyle: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),
              labelBackgroundColor: notifires.secondrycolor,
              backgroundColor: notifires.secondrycolor,
              child: Icon(Icons.shopping_cart,color: notifires.getwhiteblackcolor),
              label: 'Grocery',
              onTap: () =>   Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage()),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
