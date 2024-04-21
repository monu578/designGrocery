

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/utilis/customStyle.dart';

import 'commonWidgets.dart';

class ConfirmLocation extends StatefulWidget {
  const ConfirmLocation({super.key});

  @override
  State<ConfirmLocation> createState() => _ConfirmLocationState();
}

class _ConfirmLocationState extends State<ConfirmLocation> {
  int selectedValue=1;
  int selectedIndex=0;
  List tabs=[{"icon":Icons.home_outlined,"name":"Home".tr},
    {"icon":Icons.work,"name":"Work".tr},
    {"icon":Icons.maps_home_work_outlined,"name":"Hotel".tr},
    {"icon":Icons.other_houses_outlined,"name":"Others".tr}];
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.7,
          child: ListView(
            children:[
              Padding(
                padding:  EdgeInsets.all(10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Enter Complete Address".tr,style: CustomTheme.mostviewtitle.copyWith(fontSize: 17,color: notifires.getwhiteblackcolor),),
                  Spacer(),
                  GestureDetector(
                      onTap:(){
                        Navigator.pop(context);
                      },child: Icon(Icons.close,color: notifires.getgreycolor,))
                ],
            ),
              ),
              Divider(thickness: 1,color: notifires.getgreycolor,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                child: Text("what you are ordring for ?".tr,style: CustomTheme.mostviewhome.copyWith(fontSize: 15,color: notifires.getwhiteblackcolor),),
              ),
              Row(children: [
                Radio(
                  activeColor: notifires.primeryColor,
                  value: 1,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as int;
                    });
                  },
                ),
                Text('My self'.tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),),
                Radio(
                  activeColor: notifires.primeryColor,
                  value: 2,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as int;
                    });
                  },
                ),
                Text('Someone Else',style: CustomTheme.mostviewhome.copyWith(color: notifires.getwhiteblackcolor),)
              ],),
              Padding(
                padding: const EdgeInsets.only(left: 10,bottom: 5),
                child: Text("save address as",style: CustomTheme.mostviewhome.copyWith(color: notifires.getgreycolor,fontSize: 15),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,bottom: 5,top: 5),
                child: Container(
                  height: 45,
                  child: ListView.builder(itemBuilder: (context,index){
                    return customTabWithIcon(tabs[index]["icon"], tabs[index]["name"],index);
                  },itemCount: tabs.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextfildCustom("Flat/House no/Bulding name".tr),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextfildCustom("Floor (optional)".tr),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextfildCustom("Area/Sector/Localty".tr),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextfildCustom("NearBy LandMark (optional)".tr),
              ),
              SizedBox(height: 30,),
              SizedBox(height: 300,)
            ]
          ),

        ),
        Positioned(left: 10,right: 10,bottom: 10,
            child: ButtonsCustom("Save Address".tr,(){}))
      ],
    );
  }
  customTabWithIcon(IconData icon,String text, int index){
    final notifires=Provider.of<ColorNotifires>(context);

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: (){
          setState(() {
            selectedIndex=index;
          });
        },
        child: Container(
          width: 80,
          height: 35,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
              color: selectedIndex==index?notifires.secondrycolor.withOpacity(.2):notifires.getbgcolor.withOpacity(.7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(width: 2,color: selectedIndex==index?notifires.secondrycolor.withOpacity(.2):notifires.getgreycolor)
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,color: notifires.primeryColor,),
              SizedBox(width: 5,),
              Text(text.toString(),style: CustomTheme.mostviewhome.copyWith(color: selectedIndex==index?white:notifires.getgreycolor),)
            ],
          ),
        ),
      ),
    );
  }
}

