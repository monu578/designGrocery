import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: CustomAppBars(
        title: "About Us",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*.75,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Text("About Us".tr,style: CustomTheme.homepageimagesecondhalf.copyWith(color: notifires.getwhiteblackcolor),),
                      SizedBox(width: 20,),
                      Text("v15.712.2",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("Welcome to UniMart, your one-stop shopping destination redefining convenience in the digital age. At UniMart, we pride ourselves on delivering an unparalleled shopping experience through our innovative mobile application. Our platform seamlessly connects you with a diverse array of high-quality products, ranging from everyday essentials to the latest trends in fashion and technology. With a user-friendly interface and cutting-edge features, UniMart ensures a hassle-free and personalized shopping journey for each customer.\nAt the heart of UniMart is a commitment to customer satisfaction and a dedication to making your shopping experience enjoyable and efficient. Our team tirelessly curates a vast selection of products to cater to your unique needs and preferences. Whether you're looking for household items, fashion accessories, or the latest gadgets, UniMart has it all at your fingertips.\nWith secure payment options and swift delivery services, UniMart is designed to make your life easier. We believe in fostering a sense of community by creating a platform that not only meets your shopping needs but also provides a space for discovery and connection. UniMart is more than just an app; it's a lifestyle that embraces convenience, quality, and innovation.\nJoin us on this exciting journey of modernized shopping. Download the UniMart app today and experience the future of retail at your convenience.",style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
                ],
              ),
            ),
          ),
          Divider(color: greyShade300,thickness: 2,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Privacy Policy".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
          ),
          Divider(color: greyShade300,thickness: 2,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Trems And Conditions".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
          ),



        ],
      ),
    );
  }
}
