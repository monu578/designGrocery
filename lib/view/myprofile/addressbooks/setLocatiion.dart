import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customWidget/commonWidgets.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/auth/login.dart';

import '../../../customwidget/serchBottomSheet.dart';


class SetLocation extends StatefulWidget {
  const SetLocation({super.key});

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {

  TextEditingController serch=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      body:  Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://cdni.iconscout.com/illustration/premium/thumb/search-result-not-found-2130355-1800920.png"),
            Text("Not available".tr,style: CustomTheme.mostviewtitle.copyWith(fontSize: 23,color: notifires.getwhiteblackcolor),),
            Text("Sorry!,UniMart is not available at your current locatoin yet.We will be there soon - hang on tight!".tr,textAlign: TextAlign.center,style: CustomTheme.mostviewbeds.copyWith(color: notifires.getgreycolor,),),
            // Text("".tr,style: CustomTheme.mostviewbeds.copyWith(color: notifires.getgreycolor)),
            SizedBox(height: 20,),
            ButtonsCustom("Set location manually", () {
              showModalBottomSheet(context: context, builder: (builder){
                return SerchBottomSheet();
              },isScrollControlled: true,backgroundColor: Colors.transparent);
              // Get.to(SearchScreen());
            }),
            SizedBox(height: 10,),
            TextButton(onPressed: (){
              Get.to(Login());
            }, child: Text("Skip this",style: CustomTheme.mostviewnight.copyWith(color: notifires.secondrycolor),))

          ],
        ),
      ),
    );
  }
}
