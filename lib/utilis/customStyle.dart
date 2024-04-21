import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../customwidget/projecrColor.dart';
import 'fontstyleModel.dart';

class CustomTheme {
  static Color primaryColor = black;
  static const theamColorOld = const Color(0xffF29931);
  static Color theamColor = black;
  static const loginTopText = const Color(0xff925610);
  static const BottomBarColor = const Color(0xffF29931);
  static const secondaryColor = Color(0xFF595959);
  static Color pageBackgroundColor = white;
  static const logoColorYellow = Color(0xFFF8D02B);
  static const mostviewcolor = Color(0xFFC6A244);
  static Color buttoncolor = teal;
  static Color graybutton = grey;
  static Color appBarBackgroundColor = white;
  static const double hexagonGridMaxWidth = 600;
  static const profileColor = Color.fromARGB(255, 211, 210, 210);
  static var imageBorderRadius = BorderRadius.circular(15);
  static var imageOpacity = primaryColor.withOpacity(0.15);
  static double appBarElevation = 0;

  static var mostviewtitle = TextStyle(
    color: CustomTheme.primaryColor,
    fontSize: 18,
    fontFamily: FontStyles.Bold,
    fontWeight: FontWeight.w500,
  );

  static TextStyle homepagePopularLoaction = TextStyle(fontSize: 25, color: CustomTheme.theamColor, fontWeight: FontWeight.w600, fontFamily: FontStyles.Bold);
  static const appbarTitle = TextStyle(fontWeight: FontWeight.w800, fontSize: 18, color: Colors.black);

  static TextStyle homepageRecommended = TextStyle(fontSize: 25, color: CustomTheme.theamColor, fontWeight: FontWeight.w600, fontFamily: FontStyles.Medium);

  static TextStyle homepageMostView = TextStyle(fontSize: 25, color: CustomTheme.theamColor, fontWeight: FontWeight.w600, fontFamily: FontStyles.Bold);
  static const homepageimagefirstline = TextStyle(color: CustomTheme.theamColorOld, fontFamily: FontStyles.Bold, fontSize: 30, fontWeight: FontWeight.w600);

  static const homepageimagesecondhalf = TextStyle(fontFamily: FontStyles.Bold, color: CustomTheme.theamColorOld, fontSize: 30, fontWeight: FontWeight.w600);

  static TextStyle homepageimagesecondlast = TextStyle(color: white, fontFamily: FontStyles.Medium, fontSize: 25, fontWeight: FontWeight.w400);
  static const homepageimagethirdline = TextStyle(color: Colors.white, fontFamily: FontStyles.Medium, fontSize: 25, fontWeight: FontWeight.w400);
  static TextStyle mostviewtitle1 = TextStyle(fontFamily: FontStyles.Black, fontSize: 20, fontWeight: FontWeight.w700, color: CustomTheme.theamColor);
  static var mostviewnight = TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: CustomTheme.theamColor, fontFamily: FontStyles.Medium);
  static var mostviewrating = TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: CustomTheme.theamColor, fontFamily: FontStyles.Medium);
  static var mostviewdescription = TextStyle(fontSize: 15, fontWeight: FontWeight.w600, fontFamily: FontStyles.Medium);
  static const mostviewhome = TextStyle(fontSize: 13, fontWeight: FontWeight.w600, fontFamily: FontStyles.Medium);
  static const mostviewbeds = TextStyle(fontSize: 13, fontWeight: FontWeight.w600, fontFamily: FontStyles.Medium);
  static var featuredslidertitle = TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: CustomTheme.theamColor, fontFamily: FontStyles.Black);
  static var featuredslidernight = TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: CustomTheme.theamColor, fontFamily: FontStyles.Black);
  static var featuredsliderrating = TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: CustomTheme.theamColor, fontFamily: FontStyles.Black);
  static var featuredsliderdescription = TextStyle(fontSize: 15, fontWeight: FontWeight.w600, fontFamily: FontStyles.Medium);
  static var featuredsliderhome = TextStyle(fontSize: 10, fontWeight: FontWeight.w400, fontFamily: FontStyles.Medium);
  static var featuredsliderbeds = TextStyle(fontSize: 12, fontWeight: FontWeight.w600, fontFamily: FontStyles.Medium);

  static TextStyle smallPrimaryTextStyle = TextStyle(color: black, fontFamily: FontStyles.Black, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 16);

  static TextStyle smallCrousalTextStyle = TextStyle(color: black, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 12, fontFamily: FontStyles.Black);

  static const smallSecondaryTextStyle = TextStyle(color: secondaryColor, fontStyle: FontStyle.normal, fontFamily: FontStyles.Black, fontWeight: FontWeight.normal, fontSize: 16);

  static const afforableSecondaryTextStyle = TextStyle(color: secondaryColor, fontStyle: FontStyle.normal, fontFamily: FontStyles.Black, fontWeight: FontWeight.normal, fontSize: 12);

  static var normalPrimaryTextStyle = TextStyle(color: primaryColor, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontFamily: FontStyles.Black, fontSize: 20);
  static const normalSecondaryTextStyle = TextStyle(color: secondaryColor, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 20, fontFamily: FontStyles.Black);

  static var regularPrimaryTextStyle = TextStyle(color: primaryColor, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 24, fontFamily: FontStyles.Bold);
  static const regularSecondaryColorTextStyle = TextStyle(color: secondaryColor, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 24, fontFamily: FontStyles.Bold);

  static var bigPrimaryTextStyle = TextStyle(color: primaryColor, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontFamily: FontStyles.Heavy, fontSize: 30);
  static const bigSecondaryTextStyle = TextStyle(color: secondaryColor, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontFamily: FontStyles.Heavy, fontSize: 30);

  static var extraBigPrimaryTextStyle = TextStyle(color: primaryColor, fontSize: 36);
  static const extraBigSecondaryTextStyle = TextStyle(color: secondaryColor, fontSize: 36);

  static TextStyle amountTextStyle = TextStyle(
    color: black,
    fontWeight: FontWeight.w500,
    fontFamily: FontStyles.Black,
    fontSize: 21,
  );

  static const affamountTextStyle = TextStyle(
    color: Colors.green,
    fontWeight: FontWeight.w500,
    fontSize: 21,
  );

  static const nonaffamountTextStyle = TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.w500,
    fontSize: 21,
  );

  static var amountTextStyleWithUnderline = TextStyle(color: primaryColor, fontWeight: FontWeight.w400, fontSize: 21, decoration: TextDecoration.underline);

  static var MainProfileScreenHeading = TextStyle(fontFamily: FontStyles.gilroyMedium, color: CustomTheme.theamColor, fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: 1);
  static var MainProfileScreenLogout = TextStyle(
    fontFamily: FontStyles.gilroyMedium,
    color: CustomTheme.theamColor,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    letterSpacing: 1,
  );
  static const InboxScreenDescription = TextStyle(
    fontFamily: FontStyles.Medium,
  );
  static var InboxScreenchatname = TextStyle(fontSize: 18, fontWeight: FontWeight.w700, fontFamily: FontStyles.Medium, color: CustomTheme.theamColor);

  static var secondaryElevatedButtonTextStyle = ElevatedButton.styleFrom(
    foregroundColor: white,
    backgroundColor: const Color(0xFF969696),
    elevation: 1,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    textStyle: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
  );

  static var elevatedButtonTextStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: primaryColor,
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    textStyle: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
  );

  static var primaryElevatedButtonTextStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: primaryColor,
    elevation: 1,
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    textStyle: const TextStyle(color: Colors.white, fontSize: 20),
  );

  static var scheduleTourButtonTextStyle = ElevatedButton.styleFrom(
      foregroundColor: const Color(0xFFFFFFFF),
      backgroundColor: primaryColor,
      elevation: 1,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      textStyle: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 18, fontWeight: FontWeight.w500));

  static var outlinedButtonStyle = OutlinedButton.styleFrom(
      foregroundColor: Colors.black87,
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      textStyle: const TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w400));

  static var containerBoxDecorationWithBorder = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: pageBackgroundColor,
    border: Border.all(color: hexagonBackgroundColor),
  );

  static const pagePadding = EdgeInsets.all(16);
  static const cuousalMargin = EdgeInsets.all(25);
  static const rowPadding = EdgeInsets.all(5);
  static const cardPadding = EdgeInsets.symmetric(horizontal: 15, vertical: 0);
  static const hexaheadingPadding = EdgeInsets.symmetric(horizontal: 15, vertical: 2);
  static const mapPadding = EdgeInsets.all(50);
  static const mapCustomPadding = EdgeInsets.all(10);
  static const horizontalPagePadding = EdgeInsets.symmetric(horizontal: 0);
  static const verticalPagePadding = EdgeInsets.symmetric(vertical: 15);
  static const hexaPageMargin = EdgeInsets.symmetric(vertical: 0);
  static const hexaPagePadding = EdgeInsets.symmetric(vertical: 0);
  static const hexaPagePaddingg = EdgeInsets.symmetric(vertical: 0);
  static const verticalPagePaddingMortgage = EdgeInsets.symmetric(vertical: 10);

  static var topLeftRightBoxDecoration = BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)), color: CustomTheme.pageBackgroundColor, boxShadow: boxShadow);

  static var containerBoxDecoration = BoxDecoration(borderRadius: BorderRadius.circular(15), color: CustomTheme.pageBackgroundColor, boxShadow: boxShadow);

  static var containerBoxDecorationWithColorBorderRed = BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: CustomTheme.pageBackgroundColor,
      border: Border.all(
        color: Colors.red,
        style: BorderStyle.solid,
      ),
      boxShadow: boxShadow);

  static var containerBoxDecorationWithColorBorderGreen = BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: CustomTheme.pageBackgroundColor,
      border: Border.all(
        color: Colors.green,
        style: BorderStyle.solid,
      ),
      boxShadow: boxShadow);

  static var containerBoxDecorationWithBlackColor = BoxDecoration(borderRadius: BorderRadius.circular(15), color: secondaryColor, boxShadow: boxShadow);

  static var bottomSheetDecoration = BoxDecoration(color: CustomTheme.pageBackgroundColor, borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)));

  static const boxShadow = [
    BoxShadow(color: Colors.black26, offset: Offset(0, 1), blurRadius: 5, spreadRadius: 0)
  ];

  static final selectedBoxDecoration = BoxDecoration(
    color: primaryColor,
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    border: Border.all(
      color: secondaryColor,
      style: BorderStyle.solid,
    ),
  );
  static final unSelectedBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    border: Border.all(
      color: secondaryColor,
      style: BorderStyle.solid,
    ),
  );
  static const selectedTextStyle = TextStyle(color: Colors.white, height: 1.2, fontWeight: FontWeight.w400, fontSize: 18);
  static var unSelectedTextStyle = TextStyle(color: primaryColor, height: 1.2, fontWeight: FontWeight.w400, fontSize: 18);
  static var checkBoxTextStype = TextStyle(color: primaryColor, height: 1.2, fontFamily: FontStyles.Medium, fontWeight: FontWeight.w400, fontSize: 16);

  static double hexagonElevation = 2;
  static const hexagonBackgroundColor = Color(0xFFE3E3E3);
  static var hexagonSelectedBackgroundColor = primaryColor;
  static const hexagonDarkGreyColor = Color(0xFFC4C4C4);
  static const hexagonSkipColor = Colors.transparent;
  static TextStyle hexagonTitleTextStyle = smallPrimaryTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w600);
  static TextStyle hexagonSelectedTitleTextStyle = smallPrimaryTextStyle.copyWith(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600);
  static TextStyle hexagonTextStyle = smallPrimaryTextStyle.copyWith(fontSize: 14);
  static TextStyle hexagonSelectedTextStyle = smallPrimaryTextStyle.copyWith(color: logoColorYellow, fontSize: 14);
  static double hexagonCornerRadius = 8;

  static const bottomNavBarActiveColor = Color(0xFFF8D02B);
  static const bottomNavBarInactiveColor = Colors.white;
  static var loginscreentext = TextStyle(color: theamColor, fontSize: 25);

  static var welcomeScreenHeaderText = TextStyle(color: theamColor, fontSize: 25, fontFamily: "Gilroy", fontWeight: FontWeight.bold);
  static var welcomeScreenDescText = TextStyle(color: theamColor, fontSize: 16, fontFamily: "Gilroy");
  static const ExploreScreenText = TextStyle(color: Color(0xFFF29931), fontSize: 25, fontWeight: FontWeight.w600, fontFamily: FontStyles.gilroyBold);

  static const AirbnbCereal_W_Bd = TextStyle(
    color: Color(0xFF000000),
    fontFamily: 'AirbnbCereal_W_Bd',
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  );
  static const AirbnbCereal_W_Md = TextStyle(
    color: Color(0xFF000000),
    fontFamily: 'AirbnbCereal_W_Md',
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );
  static const AirbnbCereal_W_Bk = TextStyle(
    color: Color(0xFF000000),
    fontFamily: 'AirbnbCereal_W_Bk',
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );
  static const Home_Location = TextStyle(
    color: Color(0xFFFFFFFF),
    fontFamily: 'AirbnbCereal_W_Bd',
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    shadows: [
      Shadow(
        offset: Offset(0, 0),
        blurRadius: 5.0,
        color: Color(0xFF000000),
      ),
    ],
  );

  static const AirbnbCereal_W_Lt = TextStyle(
    color: Color(0xFF000000),
    fontFamily: 'AirbnbCereal_W_Lt',
    fontSize: 16.0,
    fontWeight: FontWeight.w300,
  );
  static Decoration MostViewdecoration = BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: [
    BoxShadow(blurRadius: 10, color: Colors.grey.shade400)
  ]);
  static Decoration Mostdecoration = BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [
    BoxShadow(blurRadius: 5, color: Colors.grey.shade400)
  ]);
}
