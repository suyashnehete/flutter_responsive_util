import 'package:flutter/material.dart';
import 'package:flutter_responsive_util/flutter_responsive.dart';
import 'package:flutter_responsive_util/utils/media.dart';

/// A widget that builds different layouts based on the device type and orientation.
class ResponsiveBuilder extends StatelessWidget {
  /// The builder function that constructs the layout based on the device type, orientation, and constraints.
  final Widget Function(BuildContext context, BoxConstraints constraints, Orientation orientation) builder;

  /// The breakpoint value for mobile devices.
  final double breakpointMobile;

  /// The breakpoint value for tablet devices.
  final double breakpointTablet;

  /// Constructs a `ResponsiveBuilder` widget.
  ///
  /// The [builder] function is called to build the layout based on the device type, orientation, and constraints.
  ///
  /// The [breakpointMobile] is the maximum width at which the device is considered a mobile device.
  ///
  /// The [breakpointTablet] is the maximum width at which the device is considered a tablet device.
  const ResponsiveBuilder({
    Key? key,
    required this.builder,
    this.breakpointMobile = 600,
    this.breakpointTablet = 992,
  }) : super(key: key);

  /// Returns the current orientation type based on the device.
  static OrientationType get orientation => Media.orientation;

  /// Returns the current device type.
  static DeviceType get device => Media.deviceType;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            // Initialize the media properties based on the constraints and orientation
            Media.init(constraints, orientation, breakpointMobile, breakpointTablet);
            // Call the builder function to build the layout
            return builder(context, constraints, orientation);
          },
        );
      },
    );
  }
}
