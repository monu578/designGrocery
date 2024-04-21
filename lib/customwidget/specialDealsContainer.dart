import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/utilis/customStyle.dart';

// Importing the bottom sheet widget
import 'commonWidgets.dart';
import 'customProductDetails.dart';

class SpecialDeals extends StatelessWidget {
  // List of products with their details
  List productslist=[
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/constant/majano.png",
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
      "image_path":"assets/images/constant/haldiram.png",
      "waight":"300 ml",
      "price":"149",
      "lessPrice":"299",
      "less":"50"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/constant/priniti.png",
      "waight":"600 ml",
      "price":"149",
      "lessPrice":"249",
      "less":"42"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/constant/majano2.png",
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
      "image_path":"assets/images/constant/dimonds.png",
      "waight":"700 ml",
      "price":"599",
      "lessPrice":"1249",
      "less":"65"
    },
    {
      "title":"Vaseline Intensive Care Deep Moisture Body Lotion(Long Moisturization For Healthy,Glowing Skin-600 ml",
      "image_path":"assets/images/munchies.png",
      "waight":"200 ml",
      "price":"49",
      "lessPrice":"109",
      "less":"52"
    },
  ];
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    // Widget to display a horizontal list of special deals
    return ListView.builder(
      itemBuilder: (context, index) {
        // InkWell to make the product card tappable
        return GestureDetector(
          onTap: () {
            // Show the bottom sheet when a product is tapped
            showModalBottomSheet(
              context: context,
              backgroundColor: Colors.transparent,
              builder: (builder) {
                return ProdoctsDetails(productslist); // Custom bottom sheet widget
              },
              isScrollControlled: true, // Enable scroll in the bottom sheet
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Stack(
              children: [
                // ProductCard widget to display product details
                ProductCard(
                  productslist[index]["image_path"],
                  productslist[index]["title"],
                  productslist[index]["waight"],
                  productslist[index]["price"],
                  productslist[index]["lessPrice"],
                ),

                // Positioned widget to overlay a badge on the top-left corner
                Positioned(
                  left: 5,
                  top: 0,
                  child: Image.asset(
                    "assets/images/banner2.png",
                    width: 50,
                    height: 50,
                  ),
                ),

                // Positioned widget to display discount percentage
                Positioned(
                  left: 18,
                  top: 3,
                  child: Column(
                    children: [
                      Text(
                        productslist[index]["less"] + "%",
                        style: CustomTheme.bigSecondaryTextStyle.copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color:white,
                        ),
                      ),
                      Text(
                        "OFF",
                        style: CustomTheme.bigSecondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      scrollDirection: Axis.horizontal,
      itemCount: productslist.length - 1,
    );
  }
}
