
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customWidget/topSlider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/utilis/customStyle.dart';

import '../view/shop/grocery/productdetails/seeAllProduct.dart';
import 'commonWidgets.dart';

class ProdoctsDetails extends StatefulWidget {
  ProdoctsDetails(this.productslist);
  List productslist=[];

  @override
  State<ProdoctsDetails> createState() => _ProdoctsDetailsState();
}

class _ProdoctsDetailsState extends State<ProdoctsDetails> {
  // Lists containing data for the product details page
  List imageList=[{"id":1,"image_path":"assets/images/munchies.png"},
    {"id":2,"image_path":"assets/images/munchies2.webp"},
    {"id":3,"image_path":"assets/images/munchies.png"},
    {"id":4,"image_path":"assets/images/munchies2.webp"},
    {"id":5,"image_path":"assets/images/munchies2.webp"},
    {"id":6,"image_path":"assets/images/munchies2.webp"}];
  List unitsOfProduct=[
    {"unitValue":"100 g","price":"25"},
    {"unitValue":"150 g","price":"35"},
    {"unitValue":"200 g","price":"49"},
    {"unitValue":"250 g","price":"64"},
    {"unitValue":"500 g","price":"110"},
  ];
  List productslist=[
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/munchies",
      "waight":"600 ml",
      "price":"149",
      "lessPrice":"249",
      "less":"42"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/munchies.png",
      "waight":"800 ml",
      "price":"349",
      "lessPrice":"699",
      "less":"48"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/munchies.png",
      "waight":"300 ml",
      "price":"149",
      "lessPrice":"299",
      "less":"50"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/munchies.png",
      "waight":"600 ml",
      "price":"149",
      "lessPrice":"249",
      "less":"42"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/munchies.png",
      "waight":"700 ml",
      "price":"199",
      "lessPrice":"299",
      "less":"45"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/munchies.png",
      "waight":"200 ml",
      "price":"49",
      "lessPrice":"109",
      "less":"52"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/munchies.png",
      "waight":"700 ml",
      "price":"599",
      "lessPrice":"1249",
      "less":"65"
    },
  ];
  final ScrollController _scrollController = ScrollController();

  // Index of the selected unit
  int selectedIndex = 0;
  bool clickMoredescription=false;

  // Default unit and price
  String unit = "50 g", price = "100";

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    final Size size = MediaQuery.of(context).size;

    // Main container with a stack for overlapping elements
    return SizedBox(
      height: double.infinity,
      child: Stack(
        children: [
          // Container for the main content
          Positioned(
            top: 150,left: 0,right: 0,bottom: 0,
            child: Container(
              padding: EdgeInsets.only(top: 8),
              height: 710,
              decoration: CustomTheme.topLeftRightBoxDecoration.copyWith(color: notifires.boxBackgroundcolor),
              child: Stack(
                children: [
                  // ListView containing various sections of the product details
                  ListView(
                    controller: _scrollController,
                    padding: EdgeInsets.only(bottom: 80),
                    children: [
                      // TopSlider widget for displaying product images
                      Container(
                        margin: EdgeInsets.only(top: 40, right: 10, left: 10),
                        height: 240,
                        width: size.width,
                        child: TopSlider(imageList, BoxFit.contain),
                      ),
                      // Product title
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 20,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(
                          "Doritos Cheese Nachos",
                          style: CustomTheme.hexagonTitleTextStyle.copyWith(
                            color: notifires.getwhiteblackcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      // Divider for separating sections
                      Divider(
                        thickness: 2,
                        height: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                      // Select Units section
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 20,
                          right: 15,
                          bottom: 8,
                        ),
                        child: Text(
                          "Select Units",
                          style: CustomTheme.hexagonTitleTextStyle.copyWith(
                            color: notifires.getwhiteblackcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          bottom: 15,
                        ),
                        child: Container(
                          height: 80,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 70,
                                  width: 110,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      // Set the selected index and update unit and price
                                      setState(() {
                                        selectedIndex = index;
                                        price = unitsOfProduct[index]["price"];
                                        unit = unitsOfProduct[index]["unitValue"];
                                      });
                                    },
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          unitsOfProduct[index]["unitValue"],
                                          style: CustomTheme.smallSecondaryTextStyle.copyWith(
                                            color: selectedIndex == index
                                                ? notifires.getblack
                                                : notifires.getwhiteblackcolor,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          unitsOfProduct[index]["price"] + " ₹",
                                          style: CustomTheme.smallSecondaryTextStyle.copyWith(
                                            color: selectedIndex == index
                                                ? notifires.getblack
                                                : notifires.getwhiteblackcolor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: selectedIndex == index
                                          ? notifires.secondrycolor
                                          : notifires.getbgcolor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        side: BorderSide(
                                          color:selectedIndex == index
                                              ? notifires.secondrycolor
                                              :Colors.grey,
                                          width: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            itemCount: unitsOfProduct.length ,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                      // Divider for separating sections
                      Divider(
                        thickness: 2,
                        height: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                      // Similar Products section
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 20,
                          right: 15,
                          bottom: 8,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Similar Products",
                              style: CustomTheme.hexagonTitleTextStyle.copyWith(
                                color: notifires.getwhiteblackcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeAllProduct(widget.productslist,"Similar Products")));

                              },
                              child: Text(
                                "See All",
                                style: CustomTheme.hexagonTitleTextStyle.copyWith(
                                  color: notifires.primeryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          bottom: 30,
                          top: 10,
                        ),
                        child: Container(
                          height: 300,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                  right: 5,
                                ),
                                child: ProductCard(
                                  widget.productslist[index]["image_path"],
                                  widget.productslist[index]["title"],
                                  widget.productslist[index]["waight"],
                                  widget.productslist[index]["price"],
                                  widget.productslist[index]["lessPrice"],
                                ),
                              );
                            },
                            itemCount: productslist.length - 1,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                      // Divider for separating sections
                      Divider(
                        thickness: 2,
                        height: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                      // People also bought section
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 20,
                          right: 15,
                          bottom: 8,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "People also bought",
                              style: CustomTheme.hexagonTitleTextStyle.copyWith(
                                color: notifires.getwhiteblackcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeAllProduct(widget.productslist,"People also bought")));
                              },
                              child: Text(
                                "See All",
                                style: CustomTheme.hexagonTitleTextStyle.copyWith(
                                  color: notifires.primeryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          bottom: 30,
                          top: 10,
                        ),
                        child: Container(
                          height: 300,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                  right: 5,
                                ),
                                child: ProductCard(
                                  widget.productslist[index]["image_path"],
                                  widget.productslist[index]["title"],
                                  widget.productslist[index]["waight"],
                                  widget.productslist[index]["price"],
                                  widget.productslist[index]["lessPrice"],
                                ),
                              );
                            },
                            itemCount: productslist.length - 1,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                        height: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 20,
                          right: 15,
                          bottom: 8,
                        ),
                        child: Text(
                          "Product Details",
                          style: CustomTheme.hexagonTitleTextStyle.copyWith(
                            color:notifires.getwhiteblackcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      DescriptionText("Description"),
                      Visibility(
                        visible: clickMoredescription,
                        child: Container(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              SubDescriptionText("Haldi's punjabi namkeen kdkjd iertt keerw qwenmdfk Msfkokef Wtyxkl Haldi's punjabi namkeen xjkvmmfid  ksdjfu e  ksdnsdfn"),
                              DescriptionText("Key Features"),
                              SubDescriptionText("Hot and Spicy Exrrenf patato snack\nTrans fat free\nZero cholesterol"),
                              DescriptionText("Unit"),
                              SubDescriptionText(unit),
                              DescriptionText("Indgredients"),
                              SubDescriptionText("Namkeen is a popular term used in South Asian countries to describe a diverse range of savory snacks. These snacks come in various forms and flavors, offering a delightful crunch and a burst of spices. Common ingredients found in namkeen include gram flour (besan), potatoes, rice flour, a mix of spices like cumin, coriander, black pepper, and chili powder, as well as essential elements like salt and oil for frying or roasting."),
                              DescriptionText("Shelf Life"),
                              SubDescriptionText("5 months"),
                              DescriptionText("FASSAI License"),
                              SubDescriptionText("10001323230000910"),
                              DescriptionText("Disclaimer"),
                              SubDescriptionText("Nuts and seeds, such as peanuts, cashews, or sesame seeds, are often incorporated for added texture and flavor. Additionally, fresh or dried herbs like curry leaves or cilantro may be used to enhance the overall taste. It's important to note that the specific ingredients can vary significantly based on regional preferences and individual recipes, resulting in a wide array of delicious namkeen varieties enjoyed across different cultures."),
                              DescriptionText("Country of Origin"),
                              SubDescriptionText("India"),
                              DescriptionText("Customer Care Details"),
                              SubDescriptionText("Email : info@unimart.com")
                            ],),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                        child: InkWell(
                          onTap: (){

                            setState(() {
                              clickMoredescription=!clickMoredescription;
                            });
                            if(clickMoredescription!){
                              _scrollController.animateTo(
                                size.height / .68, // Assuming each ListTile has a height of 100.0
                                duration: Duration(milliseconds: 700),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                            child: clickMoredescription?Row(
                              children: [
                                Text("View less details..",style: CustomTheme.smallSecondaryTextStyle.copyWith(color: notifires.primeryColor,fontSize: 14),),
                                Icon(Icons.arrow_drop_up,color: notifires.primeryColor,)
                              ],
                            ):Row(
                              children: [
                                Text("View more details...",style: CustomTheme.smallSecondaryTextStyle.copyWith(color: notifires.primeryColor,fontSize: 14),),
                                Icon(Icons.arrow_drop_down,color: notifires.primeryColor,)
                              ],
                            )),
                      )
                    ],
                  ),
                  // Positioned widget for the bottom bar containing unit and price
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 60,
                      color: notifires.boxBackgroundcolor,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  unit,
                                  style: CustomTheme.smallSecondaryTextStyle.copyWith(
                                    color: notifires.getwhiteblackcolor,
                                    fontSize: 14,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "MRP ₹" + price,
                                      style: CustomTheme.smallSecondaryTextStyle.copyWith(
                                        color: notifires.getwhiteblackcolor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Text("MRP ₹" + price+0.toString(),
                                      style: CustomTheme.smallSecondaryTextStyle.copyWith(
                                        color: notifires.primeryColor,
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),)
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            // AddButton widget
                            AddButton("Add to cart",notifires.primeryColor),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Positioned widget for the close button in the top-right corner
         Positioned(
        top: 100,right: 0,left: 0,
          child: CircleAvatar(
            backgroundColor: CupertinoColors.black,
        child: InkWell(
          onTap: (){
            setState(() {
             Navigator.pop(context);
            });
          },
            child: Center(
              child:
                Icon(Icons.close_rounded,size: 25,color: white),
            )),
      ))
        ],
      ),
    );

  }
}
class DescriptionText extends StatelessWidget{
  String? value;

  DescriptionText(this.value);

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
      child: Text(value!,style: CustomTheme.smallSecondaryTextStyle.copyWith(color: notifires.getwhiteblackcolor,fontWeight: FontWeight.w600)),
    );
  }
  
}
class SubDescriptionText extends StatelessWidget{
  String? value;

  SubDescriptionText(this.value);

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 3,left: 20,right: 20),
      child: Text(value!,style: CustomTheme.featuredsliderbeds.copyWith(color: notifires.getwhiteblackcolor),),
    );
  }

}

