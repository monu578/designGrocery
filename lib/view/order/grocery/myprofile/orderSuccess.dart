

import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/utilis/customStyle.dart';
import '../../../bottomnavbar/grocery/myProfileDetails.dart';
import '../../../myprofile/addressbooks/addNewAddress.dart';
import '../../../shop/grocery/productdetails/productView.dart';

class OrderSuccess extends StatefulWidget {
  const OrderSuccess ({super.key});

  @override
  State<OrderSuccess> createState() => _OrderSuccessState();
}

class _OrderSuccessState extends State<OrderSuccess> {
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: notifires.boxBackgroundcolor,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          elevation: 0,
          backgroundColor: notifires.primeryColor,
          centerTitle: true,
          iconTheme: IconThemeData(color: white),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text("Express store".tr,style: CustomTheme.mostviewhome.copyWith(color: white),),
             Text("Naharpur",style: CustomTheme.mostviewtitle.copyWith(color: white),)
            ],
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              left: 0,right: 0,
              child: Container(
                color: notifires.primeryColor,
                height: 120,
                child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Text("Order is On the way".tr,style: CustomTheme.homepageMostView.copyWith(color: white,fontSize: 28),),
                      SizedBox(height: 10,),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: notifires.secondrycolor.withOpacity(.3)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 8,top: 5),
                          child: Text("Arriving".tr+" "+"in".tr+" "+"9"+" "+"minutes".tr,style: CustomTheme.mostviewnight.copyWith(color: white),),
                        ),
                      )
                    ]
                ),
              ),
            ),

            Positioned(
              left: 0,right: 0,top: 120,bottom: 0,
                child: ListView(

                  children: [
                    Container(height: 300,
                      child: MapSample(),
                    ),
                    Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: notifires.boxBackgroundcolor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: notifires.getgreycolor,blurRadius: 3
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage("assets/icons/deliveryman.png"),
                            ),
                            title: Text("I'm".tr+"Nakul,"+"your delivery partner".tr,style: CustomTheme.mostviewtitle.copyWith(fontSize: 17,color: notifires.getwhiteblackcolor),),
                            trailing: Icon(Icons.phone_in_talk_rounded,color: notifires.primeryColor,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 20,bottom: 10),
                            child: ClipPath(
                              clipper: UpperNipMessageClipper(MessageType.receive,bubbleRadius: 16,sizeRatio: 4,sizeOfNip: 10),
                              child:Container(
                                height: 60,
                                color: notifires.primeryColor.withOpacity(.2),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 10,right: 10,),
                                  child: Center(child: Text("I have picked up your order, and I am on the way to your location".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.primeryColor),)),
                                ),
                              ) ,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,right: 20,bottom: 10),
                            child: Row(children: [
                              SizedBox(
                                height: 30,width: 25,
                                child: CircleAvatar(
                                  backgroundColor: notifires.mostviewcolor.withOpacity(.2),
                                  child: Center(
                                      child: Image.network("https://icon-library.com/images/thermostat-icon-png/thermostat-icon-png-16.jpg",color: notifires.primeryColor,height: 30,)
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Wrap(children: [Text("I sanitised my hands before picking up your order".tr,style:CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)]),
                            ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                            child: Container(
                              height: 45,
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 2,color: notifires.primeryColor),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                color: notifires.boxBackgroundcolor,
                              ),
                              child:Row(children: [
                                  SizedBox(width: 5,),
                                  ImageIcon(AssetImage("assets/icons/safe.png"),color: notifires.primeryColor,),
                                  Text("Helping delivery partners stay safe".tr,style: CustomTheme.mostviewnight.copyWith(fontSize: 13,color: notifires.getwhiteblackcolor),),
                                  Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Know more".tr,style: CustomTheme.mostviewhome.copyWith(color:notifires.primeryColor,fontSize: 12),),
                                    SizedBox(height: 3), // Adjust space between text and line
                                    Container(
                                      width: 70, // Adjust width of the line
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            width: 1.0,
                                            color: notifires.primeryColor, // Color of the dotted line
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 15,)
                              ],)

                            ),
                          ),
                          Divider(thickness: 1.5,color: greyShade300,),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  height: 170,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width:2,color: greyShade300,),
                                      borderRadius: BorderRadius.circular(12),
                                    )
                                  ),
                                ),
                              ),
                              Positioned(
                                  right: 20,bottom: 80,top: 20,left: 210,
                                  child: Image.network("https://www.pngall.com/wp-content/uploads/12/Delivery-PNG-HD-Image.png")),
                              Positioned(
                                left: 25,right: 140,top: 25,
                                  child: Text("Delivery happiness at your doorstep!".tr,style: CustomTheme.homepageMostView.copyWith(fontSize: 18,color: notifires.getwhiteblackcolor),)),
                              Positioned(
                                left: 25,top: 85,
                                  child: Text("thank them by leaving a tip".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)),
                              Positioned(
                                left: 20,right: 20,bottom: 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TabCustomOfTip(Icon(Icons.emoji_emotions,color: Colors.yellow.shade700,), "₹15"),
                                    TabCustomOfTip(Icon(Icons.emoji_emotions_outlined,color: Colors.yellow.shade700,), "₹20"),
                                    TabCustomOfTip(Icon(Icons.emoji_emotions_sharp,color: Colors.yellow.shade700,), "₹30"),
                                    TabCustomOfTip(Icon(Icons.clean_hands_outlined,color: Colors.yellow.shade700,), "others".tr),

                                  ],
                                ),
                              )
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                    SizedBox(height: 10,),
                    Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: notifires.boxBackgroundcolor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: notifires.getgreycolor,blurRadius: 3
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 10,right: 8),
                            titleAlignment: ListTileTitleAlignment.top,
                            horizontalTitleGap: 5,
                            leading: SizedBox(
                              width: 60,
                              height: 60,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/e-wallet-digital-payment-online-transaction-with-woman-standing-holding-mobile-phone-concept-illustration_270158-446.jpg"),
                              ),
                            ),
                            title: Text("Pay".tr+"₹58"+"before or on delivery".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
                            subtitle: Text("Please keep a change of".tr+"₹58"+"handy or avoid the hassle by paying online".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                          ),
                          Divider(thickness: 1.5,color: greyShade300,),
                          Text("Pay Online".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.primeryColor,fontSize: 16),),
                          SizedBox(height: 10,)
                        ],
                      ),
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: notifires.boxBackgroundcolor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: notifires.getgreycolor,blurRadius: 3
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                              child: Text("Need help with your order?".tr,style: CustomTheme.mostviewtitle.copyWith(fontSize: 18,color: notifires.getwhiteblackcolor),),
                            ),
                            Divider(thickness: 1.5,color: greyShade300,),
                            ListTile(

                              horizontalTitleGap: 10,
                              contentPadding: EdgeInsets.only(left: 10,right: 8),
                              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/deliveryman.png"),),
                              title: Text("Chat with us".tr,style: CustomTheme.mostviewnight.copyWith(fontSize: 17,fontWeight: FontWeight.bold,color: notifires.getwhiteblackcolor),),
                              subtitle: Text("About any issues related to your order".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                              trailing: IconContainer(Icon(Icons.chat,color: notifires.getgreycolor,)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration:BoxDecoration(
                            color: notifires.boxBackgroundcolor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: notifires.getgreycolor,blurRadius: 3
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: notifires.mostviewcolor.withOpacity(.2),
                                backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/previews/011/501/603/original/approved-package-3d-illustration-png.png"),
                              ),
                              title: Text("Order Summary".tr,style: CustomTheme.mostviewtitle.copyWith(fontSize: 18,color: notifires.getwhiteblackcolor)),
                              subtitle: Text("Order Id".tr+" - #ORD324754",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor)),
                            ),
                            Row(children: [
                              Expanded(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductView()));
                                  },
                                    child: OrderContainer("Amul Taza Toned Fresh Milk","500ml x1","assets/images/constant/majano.png")),
                              )),
                              Expanded(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductView()));
                                  },
                                    child: OrderContainer("Amul Gold full Cream Fresh Milk","500ml x1","assets/images/constant/majano2.png")),
                              ))
                            ],)

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: notifires.boxBackgroundcolor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: notifires.getgreycolor,blurRadius: 3
                              )
                            ]
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.only(left: 10,right: 8),
                          leading: CircleAvatar(
                            backgroundColor: notifires.mostviewcolor.withOpacity(.2),
                            backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/512/3595/3595587.png"),

                          ),
                          title: Text("Delivery Address".tr,style: CustomTheme.mostviewtitle.copyWith(fontSize: 18,color: notifires.getwhiteblackcolor),),
                          subtitle: Text("New AshokNagar",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: notifires.boxBackgroundcolor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: notifires.getgreycolor,blurRadius: 3
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.only(left: 10,right: 8),
                              // titleAlignment: ListTileTitleAlignment.top,
                              horizontalTitleGap: 10,
                              leading: SizedBox(
                                width: 60,
                                height: 60,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage("https://www.nicepng.com/png/detail/980-9803933_emoji-emoji-pray-thankyou-thanks-praying-hands-emoji.png"),
                                ),
                              ),
                              title: Text("Do you like our services".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
                              subtitle: Text("Do rate us on the play Store if you are enjoying our services. You can rate again if you have already rated us.".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor),),
                            ),
                            Divider(thickness: 1.5,color: greyShade300,),
                            Text("Rate UniMart".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.primeryColor,fontSize: 16),),
                            SizedBox(height: 10,)
                          ],
                        ),
                      ),
                    ),
                ],
              ))
          ],
        ),
      ),
    );
  }
  Widget TabCustomOfTip(Icon icon,String text){
    final notifire=Provider.of<ColorNotifires>(context);
    return Container(height: 35,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 2,color: notifire.getgreycolor),
              borderRadius: BorderRadius.circular(10)
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(width: 5,),
            Text(text.toString(),style: CustomTheme.mostviewnight.copyWith(color: notifire.getwhiteblackcolor),)
          ],
        ),
      ),
    );
  }
  Widget OrderContainer(String text,String value,String path){
    final notifier=Provider.of<ColorNotifires>(context);
    return Container(
      decoration: ShapeDecoration(
        color: notifier.getbgcolor.withOpacity(.9),
        shadows: [
          BoxShadow(
            blurRadius: 3,color: notifier.getgreycolor
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(width: 2,color: notifier.getgreycolor)
        )
      ),
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.top,
        contentPadding: EdgeInsets.only(left: 5,right: 0,),
        leading: Image.asset(path,height: 50,),
        title: Text(text,style: CustomTheme.mostviewhome.copyWith(fontSize: 12,color: notifier.getwhiteblackcolor),),
        subtitle: Text(value,style: CustomTheme.mostviewhome.copyWith(color: notifier.getgreycolor),),
      ),
    );
  }
}
