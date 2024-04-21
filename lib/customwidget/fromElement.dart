import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';
import 'package:unimart/customwidget/projecrColor.dart';
import 'package:unimart/utilis/customStyle.dart';

class CustomTextInputField extends StatefulWidget {
 CustomTextInputField(this.hintText,this.icon,this.validator,this.type,this.controller);
 String hintText;
 Icon icon;
 String? Function(String?)? validator;
 TextInputType type;
 TextEditingController controller;

  @override
  State<CustomTextInputField> createState() => _CustomTextInputFieldState();
}

class _CustomTextInputFieldState extends State<CustomTextInputField> {
  String _errorMessage = '';

  void validateInput(String value) {
    setState(() {
      if (value.isEmpty) {
        _errorMessage = 'Please enter something'.tr;
      } else {
        _errorMessage = '';
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return SizedBox(
      child:
      TextFormField(
        style: CustomTheme.mostviewrating.copyWith(color: notifires.getwhiteblackcolor),
        validator: widget.validator,
        controller: widget.controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: widget.hintText,
          errorText: _errorMessage.isNotEmpty ? _errorMessage : null,
          hintStyle: CustomTheme.mostviewhome.copyWith(color: notifires.hintColor,fontSize: 16),
          prefixIcon: widget.icon,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2,color: notifires.getgreycolor),
            borderRadius: BorderRadius.circular(12),
          ),
          border:OutlineInputBorder(
            borderSide: BorderSide(width: 2,color: notifires.getgreycolor),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: redShade900,width: 2)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2,color: teal),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onChanged: (value) {
          validateInput(widget.controller.text);
        },

      ),
    );
  }
}

class PasswordInputField extends StatefulWidget {
  PasswordInputField(this.hintText,this.icon,this.validator,this.controller);
  String hintText;
  Icon icon;
  TextEditingController controller;
  String? Function(String?)? validator;


  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _isObscure=true;
  String _errorMessage = '';
  void validateInput(String value) {
    setState(() {
      if (value.isEmpty) {
        _errorMessage = 'Please enter your password'.tr;
      } else {
        _errorMessage = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return SizedBox(
      child:
      TextFormField(
        style: CustomTheme.mostviewrating.copyWith(color: notifires.getwhiteblackcolor),
        obscureText: _isObscure,
        validator:widget.validator,
        controller: widget.controller,
        decoration: InputDecoration(
          errorText: _errorMessage.isNotEmpty ? _errorMessage : null,
          hintText: widget.hintText,
          hintStyle: CustomTheme.mostviewhome.copyWith(color: notifires.hintColor,fontSize: 16),
          prefixIcon: widget.icon,
          border:OutlineInputBorder(
            borderSide: BorderSide(width: 2,color: Colors.teal),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2,color: notifires.getgreycolor),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2,color: Colors.teal),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: redShade900,width: 2)),
          suffixIcon: IconButton(
              icon: Icon(
                _isObscure ? Icons.visibility : Icons.visibility_off,color:notifires.getgreycolor,),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              }),
        ),
        onChanged: (value) {
          validateInput(widget.controller.text);
        },

      ),
    );;
  }
}


class IntelPhoneInputField extends StatefulWidget {

   IntelPhoneInputField(this.controller);
  TextEditingController controller;

  @override
  State<IntelPhoneInputField> createState() => _IntelPhoneInputFieldState();
}

class _IntelPhoneInputFieldState extends State<IntelPhoneInputField> {
  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);

    return IntlPhoneField(
      style: CustomTheme.mostviewrating.copyWith(color: notifires.getwhiteblackcolor),
      keyboardType: TextInputType.number,
      languageCode: "IN",
      controller: widget.controller,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      dropdownIcon:Icon(Icons.arrow_drop_down_sharp,color: notifires.getgreycolor,) ,
      decoration: InputDecoration(
        hintText: "Phone".tr,
        hintStyle: CustomTheme.mostviewrating.copyWith(color: notifires.hintColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: notifires.getgreycolor,width: 2)
        ),
        focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: notifires.getgreycolor,width: 2)
        ),
        border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: notifires.getgreycolor,width: 2)
        )
      ),
    );
  }
}


