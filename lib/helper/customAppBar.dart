import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../customwidget/projecrColor.dart';
import '../utilis/customStyle.dart';

class CustomAppBars extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? titleColor;
  final VoidCallback? onBackButtonPressed;
  final List<Widget>? actions;
  final double? elevation;
  final bool? centerTitle;
  final IconButton? leadding;

  CustomAppBars(
      {required this.title,
        this.backgroundColor,
        this.iconColor,
        this.titleColor,
        this.onBackButtonPressed,
        this.actions,
        this.elevation = 0.0,
        this.centerTitle,
      this.leadding});

  @override
  Widget build(BuildContext context) {
    final notifires=Provider.of<ColorNotifires>(context);
    return AppBar(
      iconTheme: IconThemeData(color: notifires.getgreycolor),
      scrolledUnderElevation: 0,
      centerTitle: centerTitle,
      backgroundColor: notifires.boxBackgroundcolor,
      surfaceTintColor: backgroundColor,
      elevation: elevation,
      leading: leadding.isNull?IconButton(
        icon: Icon(Icons.arrow_back, color: notifires.getboxcolor),
        onPressed: onBackButtonPressed ??
                () {
              Navigator.of(context).pop();
            },
      ):leadding,
      title: Text(title.toString().tr, style: CustomTheme.mostviewtitle.copyWith(color: notifires.getwhiteblackcolor)),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
