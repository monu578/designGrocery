import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/commonWidgets.dart';
import 'package:unimart/customwidget/fromElement.dart';
import 'package:unimart/utilis/customStyle.dart';
import 'package:unimart/view/auth/emailVerificationCode.dart';

import '../../customwidget/fromValidatior.dart';
import '../../customwidget/projecrColor.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailControler=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return Scaffold(
      backgroundColor:notifires.boxBackgroundcolor,
      appBar: AppBar(
        backgroundColor: notifires.boxBackgroundcolor,
        automaticallyImplyLeading: false,
        leading:IconButton(onPressed: () {
          Get.back();
        }, icon: Icon(Icons.close,color: notifires.getgreycolor,),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Reset Password".tr,style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor),),
            SizedBox(height: 20,),
            Text("Enter the email address associated with your account,and we'll email you a link to reset your password.".tr,style: CustomTheme.mostviewrating.copyWith(color: notifires.getwhiteblackcolor),),
            SizedBox(height: 25,),
            CustomTextInputField("Email".tr, Icon(Icons.email,color: notifires.getgreycolor,),(value){
              return validateEmail(value!);
            },TextInputType.emailAddress,emailControler),
            SizedBox(height: 20,),
            ButtonsCustom("Send reset link".tr, (){ Get.to(EmailVerificationCode());})
          ],
        ),
      ),
    );
  }
}
