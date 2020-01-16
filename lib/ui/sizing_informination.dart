import 'package:flutter/cupertino.dart';
import 'package:flutter_app_splashscreen/enum/device_screentype.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceScreentype deviceScreentype;
  final Size screenSize;
  final Size localWidgetSize;

  
  SizingInformation(
      {this.orientation,
      this.deviceScreentype,
      this.screenSize,
      this.localWidgetSize});

      
}
