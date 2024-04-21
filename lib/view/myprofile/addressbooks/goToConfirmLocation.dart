import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/commonWidgets.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/customwidget/serchBottomSheet.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/myprofile/addressbooks/addNewAddress.dart';

import '../../auth/login.dart';

class GoToConfirmLocation extends StatefulWidget {
  const GoToConfirmLocation({super.key});

  @override
  State<GoToConfirmLocation> createState() => _GoToConfirmLocationState();
}

class _GoToConfirmLocationState extends State<GoToConfirmLocation> {
  TextEditingController search=TextEditingController();
  TextEditingController serchofBottom=TextEditingController();
  List<String> items = [
    'Delhi',
    'Goa',
    'Meerut',
    'Muzaffarnager',
    'Noida',
    'Shamli',
    'New Ashok Nagar'
    // Add more items as needed
  ];
  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    // filteredItems = items;
  }

  void filterSearchResults(String query) {
    List<String> searchList = [];
    searchList.addAll(items);

    if (query.isNotEmpty) {
      List<String> filteredList = [];
      searchList.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          filteredList.add(item);
        }
      });
      setState(() {
        filteredItems = filteredList;
      });
      return;
    } else {
      setState(() {
        filteredItems = items;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Scaffold(
      appBar: CustomAppBars(title: "Confirm Location"
      ),
      body: Stack(
        children: [
          Positioned(bottom: MediaQuery.of(context).size.height*.3-10,left: 0,right: 0,top: 0,
              child: MapSample()),
          Positioned(
            left: 15,right: 15,top: 15,
              child: CustomSearchBox(("Search Area,City and Street..."), search)),
          Positioned(
            bottom: MediaQuery.of(context).size.height*.3+10,left: 100,right: 100,
            child: InkWell(
              onTap: (){
               // Get.bottomSheet(isScrollControlled: true,);
              },
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: notifires.boxBackgroundcolor.withOpacity(.8),
                  border: Border.all(color: notifires.primeryColor,width: 2),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  children: [
                    Icon(Icons.my_location,color: notifires.primeryColor,),
                    SizedBox(width: 10,),
                    Text("Go to Currentt Location".tr,style: CustomTheme.mostviewhome.copyWith(color: notifires.primeryColor),)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,right: 0,bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height*.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20) ),
              color: notifires.boxBackgroundcolor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,blurRadius: 10
                  )
                ]
    ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text("Oops!",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
                    Text("Unimart is not availabe at this location at the moment . Please select a diffrent location",style: CustomTheme.mostviewbeds.copyWith(color: notifires.getgreycolor),textAlign: TextAlign.center,),
                    SizedBox(height: 15,),
                    ButtonsCustom("Go to Current location", () { }),
                    SizedBox(height: 15,),
                    TextButton(onPressed: (){
                      Get.bottomSheet(Container(
                        height: MediaQuery.of(context).size.height*0.4,
                        decoration: BoxDecoration(
                            color: notifires.boxBackgroundcolor,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15,))
                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Select delivery location".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
                              SizedBox(height: 10,),
                              Container(
                                height: 40,
                                width:MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(12),
                                  // boxShadow: CustomTheme.boxShadow
                                ),
                                child: Center(
                                  child: TextField(
                                    controller: serchofBottom,
                                    onChanged: (value){
                                      filterSearchResults(value);
                                    },
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            color: grey
                                        ),
                                        prefixIcon: Icon(CupertinoIcons.search),
                                        hintText: "Search for area,street...".tr,
                                        contentPadding: EdgeInsets.all(10),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(color: grey,width: 2),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(color: grey,width: 2),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(color: grey,width: 2),
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Card(
                                color: notifires.getbgcolor.withOpacity(.9),
                                borderOnForeground: true,
                                child: ListTile(
                                  onTap: (){
                                    Get.to(GoToConfirmLocation());
                                  },
                                  contentPadding: EdgeInsets.only(left: 10,right: 10),
                                  title: Text("Go to current location".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.primeryColor),),
                                  leading: Icon(Icons.my_location_rounded,color: notifires.primeryColor,),
                                  trailing: Icon(Icons.arrow_forward_ios,color: notifires.primeryColor,),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: ListView.builder(itemBuilder: (context,index){
                                    return InkWell(
                                      onTap: (){
                                        Get.to(Login());
                                      },
                                      child: ListTile(
                                        title: Text(filteredItems[index],style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
                                        leading: Icon(CupertinoIcons.location_solid,color: notifires.secondrycolor,),
                                      ),
                                    );
                                  },scrollDirection: Axis.vertical,itemCount: filteredItems.length,),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),isScrollControlled: true);
                    }, child: Text("Select location Manually ",style: CustomTheme.mostviewtitle.copyWith(color: notifires.primeryColor),))
                  
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
