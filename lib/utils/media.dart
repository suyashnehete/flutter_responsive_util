import 'package:flutter/material.dart';
import 'package:flutter_responsive_util/utils/enums.dart';

/// A class that provides information about the media and device dimensions.
class Media {
  static late double screenWidth;
  static late double screenHeight;
  static double _blockWidth = 0;
  static double _blockHeight = 0;

  static double text = 1;
  static double image = 1;
  static double height = 1;
  static double width = 1;
  static OrientationType orientation = OrientationType.portrait;
  static DeviceType deviceType = DeviceType.mobile;

  /// Initializes the Media class with the given constraints and orientation.
  /// Calculates the screen width, screen height, orientation, and device type based on the constraints and breakpoints.
  ///
  /// The [constraints] parameter represents the maximum constraints for the widget.
  /// The [orientation] parameter represents the current orientation of the device.
  /// The [breakpointMobile] parameter is the width breakpoint for mobile devices.
  /// The [breakpointTablet] parameter is the width breakpoint for tablet devices.
  static void init(BoxConstraints constraints, Orientation orientation, double breakpointMobile, double breakpointTablet) {
    screenWidth = constraints.maxWidth;
    screenHeight = constraints.maxHeight;

    // Determine the device type based on the screen width and breakpoints
    if (screenWidth <= breakpointMobile) {
      Media.deviceType = DeviceType.mobile;
    } else if (screenWidth <= breakpointTablet) {
      Media.deviceType = DeviceType.tablet;
    } else {
      Media.deviceType = DeviceType.desktop;
    }

    // Swap width and height values if the device is in landscape orientation
    if (orientation == Orientation.landscape) {
      double tempWidth = screenWidth;
      screenWidth = screenHeight;
      screenHeight = tempWidth;
      Media.orientation = OrientationType.landscape;
    } else {
      Media.orientation = OrientationType.portrait;
    }

    // Calculate the block width and block height for relative sizing
    _blockWidth = screenWidth / 100;
    _blockHeight = screenHeight / 100;

    // Set the default values for text, image, height, and width based on the block sizes
    text = _blockHeight;
    image = _blockWidth;
    height = _blockHeight;
    width = _blockWidth;
  }
}
