import 'package:pcos_app/consts/consts.dart';
import 'package:pcos_app/consts/strings.dart';

Widget suggestionButton({String? title, icon}) {
  return Row(
    children: [
      Image.asset(icon, width: 60, fit: BoxFit.fill),
      SizedBox(width: 10), // Using SizedBox for consistent spacing
      title!.text.fontFamily(semibold).color(darkfontGrey).make(),
    ],
  )
      .box
      .width(200) // Adjust the width to fit the contents properly
      .margin(EdgeInsets.symmetric(horizontal: 4))
      .white
      .padding(EdgeInsets.all(4))
      .roundedSM
      .outerShadowSm
      .make();
}
