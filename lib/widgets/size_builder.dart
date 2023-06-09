import 'package:flutter/material.dart';
import 'package:flutter_responsive_util/utils/enums.dart';
import 'package:flutter_responsive_util/utils/media.dart';

/// A widget that builds a different widget based on the device type and orientation.
class SizeBuilder extends StatelessWidget {
  /// The builder function for the mobile layout.
  final Widget Function() mobileBuilder;

  /// The builder function for the tablet layout.
  final Widget Function() tabletBuilder;

  /// The builder function for the desktop layout.
  final Widget Function() desktopBuilder;

  /// Constructs a `SizeBuilder` widget.
  ///
  /// The [mobileBuilder] function is called when the device type is mobile and the orientation is portrait.
  ///
  /// The [tabletBuilder] function is called when the device type is tablet and the orientation is portrait.
  ///
  /// The [desktopBuilder] function is called for all other cases.
  const SizeBuilder({
    Key? key,
    required this.mobileBuilder,
    required this.tabletBuilder,
    required this.desktopBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Check the device type and orientation to determine which builder function to use
    if (Media.deviceType == DeviceType.mobile && Media.orientation == OrientationType.portrait) {
      return mobileBuilder(); // Call the mobile builder function
    } else if (Media.deviceType == DeviceType.tablet && Media.orientation == OrientationType.portrait) {
      return tabletBuilder(); // Call the tablet builder function
    } else {
      return desktopBuilder(); // Call the desktop builder function
    }
  }
}
