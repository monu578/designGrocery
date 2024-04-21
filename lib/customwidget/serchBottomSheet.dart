import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';

import '../utilis/customStyle.dart';
import '../view/auth/login.dart';
import '../view/myprofile/addressbooks/goToConfirmLocation.dart';

class SerchBottomSheet extends StatefulWidget {
  const SerchBottomSheet({super.key});

  @override
  State<SerchBottomSheet> createState() => _SerchBottomSheetState();
}

class _SerchBottomSheetState extends State<SerchBottomSheet> {
  TextEditingController serach =TextEditingController();
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
    return Stack(
      children: [
        Positioned(
          top: 150,
          left: 0,right: 0,
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height*0.8,
            decoration: BoxDecoration(
                color: notifires.boxBackgroundcolor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15,))
            ),
            child:Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Select delivery location",style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
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
                        controller: serach,
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
                      title: Text("Go to current location",style: CustomTheme.mostviewrating.copyWith(color: notifires.primeryColor),),
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
          ),

        ),
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
    );
  }
}
