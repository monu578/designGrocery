import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';

import '../../../customWidget/commonWidgets.dart';
import '../../../customWidget/confirmAddressContainer.dart';

class MapSample extends StatefulWidget {
  @override
  State createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(28.5922924, 77.3055459); // San Francisco coordinates

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    notifires=Provider.of<ColorNotifires>(context);
    return
      Container(
        child: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 17.0,
        ),
      ))
    ;
  }
}

class AddLocation extends StatefulWidget {
  const AddLocation({super.key});

  @override
  State<AddLocation> createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {
  TextEditingController serch=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: notifires.boxBackgroundcolor,
        appBar: CustomAppBars(
          title: "Add Addresses".tr
        ),
        body: Stack(
          children: [
            MapSample(),
            Positioned(
              top: 20,left: 20,right: 20,
                child: CustomSearchBox("Search for new area".tr+"...",serch)),
            Positioned(
              bottom: 0,left: 0,right: 0,
              child: Container(
                color: notifires.boxBackgroundcolor,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Delivering your order to".tr,style: CustomTheme.mostviewhome.copyWith(fontSize: 17,color: notifires.getwhiteblackcolor),),
                      SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: notifires.getblueyellow.withOpacity(.1)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: Image.asset("assets/icons/pin_loc_icon.png"),
                              title: Text("D-Block",style: CustomTheme.selectedTextStyle.copyWith(color: notifires.getwhiteblackcolor,fontWeight: FontWeight.w700),),
                              subtitle: Text("sector 2, Noida",style: CustomTheme.smallCrousalTextStyle.copyWith(color: notifires.getgreycolor,fontWeight: FontWeight.w700),),
                              trailing: InkWell(
                                onTap: (){
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Demo()));
                                },
                                  child: TabItemContainer("Change".tr)),
                            ),
                            Divider(thickness: 1,color: grey,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                              child: Text("Pin location is".tr+" 22244.26km "+"away from your location".tr,style: CustomTheme.smallCrousalTextStyle.copyWith(color: notifires.getblueyellow),),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      ButtonsCustom("Confirm Location & proceed", () {
                        showModalBottomSheet(context: context, builder: (builder){
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                              color: notifires.boxBackgroundcolor
                            ),
                            child: ConfirmLocation(),
                          );
                        },
                            isScrollControlled: true);
                      })
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

