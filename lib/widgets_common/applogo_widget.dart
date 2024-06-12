import 'package:pcos_app/consts/consts.dart';

Widget applogoWidget() {
  //using velocity x here
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(EdgeInsets.all(8))
      .rounded
      .make();
}
