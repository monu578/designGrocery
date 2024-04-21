import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/utilis/customStyle.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});
  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text("Otp Verifacation".tr,style: CustomTheme.mostviewtitle,),

      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Text("we've sent a verification code to".tr,style: TextStyle(fontFamily: 'Gilroy-Medium',fontSize: 16),),
            Text("+917445893030".tr,style: CustomTheme.mostviewtitle),
            SizedBox(height: 40,),
            Container(
              child: PinCodeTextField(
                appContext: context,
                controller: controller,
                length: 4,
                mainAxisAlignment: MainAxisAlignment.center,
                cursorHeight: 19,
                // enableActiveFill: true,
                keyboardType: TextInputType.number,
                textStyle: TextStyle(fontSize: 20),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    fieldHeight:55,
                    fieldWidth: 50,
                    fieldOuterPadding: EdgeInsets.all(5),
                    inactiveBorderWidth: 3.0,
                    inactiveColor: greyShade500,
                    activeColor: black,
                    selectedColor: black,
                    selectedBorderWidth: 3.0,
                    borderRadius: BorderRadius.circular(8)
                ),
                onChanged: ((value) {}),)),
            SizedBox(height: 40,),
            Text("Resend OTP in 15".tr,style: CustomTheme.mostviewnight.copyWith(color: greyShade500),)



          ],
        ),
      ),
    );
  }

}
