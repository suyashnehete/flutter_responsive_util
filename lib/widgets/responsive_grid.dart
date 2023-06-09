import 'package:flutter/material.dart';

/// A widget that displays a responsive grid layout with a specified number of columns and spacing.
class ResponsiveGrid extends StatelessWidget {
  /// The number of columns in the grid.
  final int columns;

  /// The spacing between items in the grid.
  final double spacing;

  /// The list of widgets to display in the grid.
  final List<Widget> children;

  /// Constructs a `ResponsiveGrid` widget with the given number of [columns], [spacing], and [children].
  const ResponsiveGrid({
    Key? key,
    required this.columns,
    required this.spacing,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate the total spacing between items in the grid
        final totalSpacing = (columns - 1) * spacing;

        // Calculate the available width for each item in the grid
        final availableWidth = constraints.maxWidth - totalSpacing;
        final itemWidth = availableWidth / columns;

        // Build the grid using Wrap widget, applying spacing and width to each item
        return Wrap(
          spacing: spacing,
          children: children.map((child) {
            return SizedBox(
              width: itemWidth,
              child: child,
            );
          }).toList(),
        );
      },
    );
  }
}
