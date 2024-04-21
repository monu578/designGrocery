import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customWidget/specialDealsContainer.dart';
import 'package:unimart/customwidget/commonWidgets.dart';
import 'package:unimart/view/auth/login.dart';
import 'package:unimart/view/bottomnavbar/grocery/category.dart';
import 'package:unimart/view/payments/paymentManage.dart';
import 'package:unimart/view/shop/grocery/search/searchScreen.dart';
import '../../../customWidget/shopByStore.dart';
import '../../../customWidget/topSlider.dart';
import '../../../customwidget/projecrColor.dart';
import '../../../utilis/customStyle.dart';
import '../../bottomnavbar/grocery/homeView.dart';
import '../../bottomnavbar/grocery/myProfileDetails.dart';
import '../../cart/grocery/checkOutCart.dart';


class HomePage extends StatefulWidget {
   HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int currentIndex=0;
  final List<Widget> _pages = [
    Home(),
    PaymentPage(),
    ShopByCategoryScreen(),
    CheckOutPage(),
    MyProfile()

  ];
  bool visibleBottomBar=true;

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    final Size size=MediaQuery.of(context).size;
    final FocusNode _focusNode = FocusNode();
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: notifires.boxBackgroundcolor,
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   elevation: 0,
        //   scrolledUnderElevation: 0,
        //   backgroundColor: white,
        //   title: Text("Delivery In 8 minutes".tr,style: CustomTheme.mostviewtitle.copyWith(color: black,fontSize: 25),),
        //  actions: [
        //    Padding(
        //      padding: const EdgeInsets.only(left: 10,right: 20,top: 10,bottom: 5),
        //      child: InkWell(
        //        onTap: (){
        //          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfile()));
        //        },
        //          child: ImageIcon(NetworkImage("http://cdn.onlinewebfonts.com/svg/img_206976.png",),size: 50,color: teal,)),
        //    )
        //  ],
        //   bottom:AppBar(
        //     scrolledUnderElevation: 0,
        //   automaticallyImplyLeading: false,
        //   elevation: 0,
        //     title:  CustomSearchBoxWithScreen("Search For Ata,Dal,Coke and More...",(){
        //       Get.to(SearchScreen());
        //       _focusNode.unfocus();
        //
        //     },_focusNode),
        //   )
        //
        // ),
          body: _pages.elementAt(currentIndex),
         floatingActionButton: Visibility(
           visible:currentIndex==3?false:visibleBottomBar ,
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
          visible:currentIndex==3?false:visibleBottomBar,
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


