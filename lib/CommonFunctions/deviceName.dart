import 'package:portfolio/TextsConstants.dart';

String getDeviceType(double width) {
  if (width <= TextsConstants.MaximumTabletWidth) {
    return 'Tablet';
  } else {
    return 'Desktop';
  }
}