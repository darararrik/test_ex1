import 'package:flutter/widgets.dart';

class P extends EdgeInsets {
  const P({
    double? all,
    double? vertical,
    double? horizontal,
    double? top,
    double? right,
    double? bottom,
    double? left,
  }) : super.only(
         left:
             all ??
             vertical ??
             horizontal ??
             top ??
             right ??
             bottom ??
             left ??
             0,
         right:
             all ??
             vertical ??
             horizontal ??
             top ??
             right ??
             bottom ??
             left ??
             0,
         top:
             all ??
             vertical ??
             horizontal ??
             top ??
             right ??
             bottom ??
             left ??
             0,
         bottom:
             all ??
             vertical ??
             horizontal ??
             top ??
             right ??
             bottom ??
             left ??
             0,
       );
}
