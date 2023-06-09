import 'package:flutter/material.dart';
import 'package:flutter_responsive_util/utils/enums.dart';
import 'package:flutter_responsive_util/utils/media.dart';

/// A container widget that adapts its child based on the current device type.
class AdaptiveContainer extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  /// Constructs an `AdaptiveContainer` widget with the given child widgets for different device types.
  ///
  /// The [mobile] parameter is the widget to be displayed on mobile devices.
  /// The [tablet] parameter is the widget to be displayed on tablet devices.
  /// The [desktop] parameter is the widget to be displayed on desktop devices.
  const AdaptiveContainer({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget child;

    // Determine the appropriate child widget based on the current device type
    switch (Media.deviceType) {
      case DeviceType.mobile:
        child = mobile;
        break;
      case DeviceType.tablet:
        child = tablet;
        break;
      case DeviceType.desktop:
        child = desktop;
        break;
    }

    return child;
  }
}
