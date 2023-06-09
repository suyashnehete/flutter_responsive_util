import 'package:flutter_responsive_util/utils/media.dart';

extension DoubleDimensionExtension on double {
  double get w => this * Media.width;  // Calculate width based on Media.width
  double get h => this * Media.height; // Calculate height based on Media.height
  double get t => this * Media.text; // Calculate text size based on Media.text
  double get i => this * Media.image; // Calculate image size based on Media.image
}

extension IntegerDimensionExtension on int {
  double get w => this * Media.width; // Calculate width based on Media.width
  double get h => this * Media.height; // Calculate height based on Media.height
  double get t => this * Media.text; // Calculate text size based on Media.text
  double get i => this * Media.image; // Calculate image size based on Media.image
}