import 'package:flutter/material.dart';

/// A widget that builds a child widget with a specific aspect ratio.
class AspectRatioBuilder extends StatelessWidget {
  /// Constructs an `AspectRatioBuilder` widget with the given aspect ratio and builder function.
  ///
  /// The [aspectRatio] parameter specifies the desired aspect ratio of the child widget.
  /// The [builder] parameter is a function that builds the child widget and takes the `BuildContext`, width, and height as arguments.
  const AspectRatioBuilder({
    Key? key,
    required this.aspectRatio,
    required this.builder,
  }) : super(key: key);

  final double aspectRatio;
  final Widget Function(BuildContext context, double width, double height) builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate the width based on the maximum width available in the constraints
        final width = constraints.maxWidth;

        // Calculate the height based on the width and the specified aspect ratio
        final height = width / aspectRatio;

        // Build the child widget using the builder function and pass the context, width, and height as arguments
        return builder(context, width, height);
      },
    );
  }
}
