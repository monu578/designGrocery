

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customWidget/commonWidgets.dart';
import 'package:unimart/customwidget/fromElement.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/helper/customAppBar.dart';
import 'package:unimart/utilis/customStyle.dart';

import '../../customwidget/fromValidatior.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({super.key});
  TextEditingController passController=TextEditingController();
  TextEditingController confirmPassController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Scaffold(
      backgroundColor: notifires.boxBackgroundcolor,
      appBar: CustomAppBars(
        title:"Change Password".tr,),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("New password".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.getwhiteblackcolor),),
            SizedBox(height: 10,),
            PasswordInputField("New Password".tr, Icon(Icons.lock,color: notifires.getgreycolor),(value){
              return validatesPassword(value!);
            },passController),
            SizedBox(height: 20,),
            Text("Confirm password".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.getwhiteblackcolor),),
            SizedBox(height: 10,),
            PasswordInputField("Confirm Password".tr, Icon(Icons.lock,color: notifires.getgreycolor,),(value){
              return validatesPassword(value!);
            },confirmPassController),
            SizedBox(height: 40,),
            ButtonsCustom("Continue".tr, () { })
          ],
        ),
      ),
    );
  }
}
