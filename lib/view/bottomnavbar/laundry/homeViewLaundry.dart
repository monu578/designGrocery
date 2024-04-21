import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../../../controller/homeController.dart';
import '../../../customWidget/topSlider.dart';
import '../../../customwidget/projecrColor.dart';
import '../../../utilis/customStyle.dart';
import '../../home/grocery/home.dart';
import '../../home/laundry/homeLaundry.dart';
import '../../shop/laundry/services.dart';

class HomePageLaundry extends StatefulWidget {
  const HomePageLaundry({super.key});

  @override
  State<HomePageLaundry> createState() => _HomePageLaundryState();
}

class _HomePageLaundryState extends State<HomePageLaundry> {
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
  HomeController controller=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    var modeClick=controller.modeClick.value;
    return Scaffold(
      extendBody: true,
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: notifires.getbgcolor,
        leading: Icon(
          Icons.dry_cleaning,size: 30,color: notifires.getredYellow,
        ),
        title: Text("LAUNDRY",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
        actions: [
          Text(modeClick?"Light Mode":"Dark Mode",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
          SizedBox(width: 10,),
          Obx(() => IconButton(onPressed: (){
            final colorNotifires=Provider.of<ColorNotifires>(context,listen: false);
            controller.changeBoolValue();
            notifires.switchs(controller.modeClick.value);

          }, icon: Icon(controller.modeClick.value?Icons.light_mode_rounded:Icons.dark_mode,color: notifires.getgreycolor,)),)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 0),
        child: ListView(
          children: [
            TopSlider(sliderImage, BoxFit.fill),
            SizedBox(height: 5,),
            Text("Laundry Services",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),

            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height-320,
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 160,
                  mainAxisSpacing: 10
              ), itemBuilder: (itemBuilder,index){
                return GestureDetector(
                  onTap: (){
                    Get.to(ServicesOfItems(items[index]["name"]));
                  },
                  child: Card(
                    color: notifires.getbgcolor,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.network(items[index]["link"],height: 90,color: notifires.getredYellow.withOpacity(.6),),
                          SizedBox(height: 10,),
                          Text(items[index]["name"],style: CustomTheme.mostviewnight.copyWith(color: notifires.getwhiteblackcolor),)
                        ],
                      ),
                    ),
                  ),
                );
              },itemCount: 6,scrollDirection: Axis.vertical,physics: NeverScrollableScrollPhysics(),),
            ),
            Text("Special Offer",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
            Container(
              height: 160,
              child: ListView.builder(itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network("https://theleatherlaundry.com/blog/wp-content/uploads/2021/06/shoe-laundry-500x500-1.jpg",fit: BoxFit.fill,width: MediaQuery.of(context).size.width-60,),
                      ),
                      Positioned(
                        left: 0,right: 0,bottom: 0,top: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: notifires.getwhiteblackcolor.withOpacity(.5),

                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("20% OFF",style: CustomTheme.homepageimagesecondhalf.copyWith(color: notifires.getblack,fontSize: 40),),
                                Text("All Shose Laundry",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getblack),)
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },itemCount: 4,scrollDirection: Axis.horizontal,),
            )
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.start,
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
    );
  }
}
