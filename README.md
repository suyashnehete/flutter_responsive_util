# flutter_responsive_util

`flutter_responsive_util` is a Flutter package that provides utilities for creating responsive layouts in your Flutter applications. It allows you to adapt widgets and dimensions based on the current device type and orientation, providing a consistent user experience across different devices.

## Features
 - Responsive dimensions: Easily calculate dimensions based on the current device's screen size.
 - `AdaptiveContainer`: A container widget that adapts its child based on the current device type.
 - `AspectRatioBuilder`: A widget that builds a child widget with a specific aspect ratio.
 - `ResponsiveBuilder`: A widget that builds different layouts based on the device type and orientation.
 - `ResponsiveGrid`: A widget that displays a responsive grid layout with a specified number of columns and spacing.
 - `SizeBuilder`: A widget that builds a different widget based on the device type and orientation.

## Getting Started
To use `flutter_responsive_util`, you need to add the package to your `pubspec.yaml` file:

```yaml
dependencies:
flutter_responsive_util: ^x.x.x  # Replace with the latest version
```

Import the package in your Dart file:
```dart
import 'package:flutter_responsive_util/flutter_responsive_util.dart';
```

## Usage
To utilize the features of `flutter_responsive_util`, you need to wrap your app with a `ResponsiveBuilder` widget and place the `MaterialApp` widget as its child. The `MaterialApp` widget is essential as it provides all the raw data for the package to work correctly.

Here's an example:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_responsive_util/flutter_responsive_util.dart';

void main() {
  runApp(
    ResponsiveBuilder(
      builder: (context, constraints, orientation) {
        return MaterialApp(
          title: 'My Responsive App',
          theme: ThemeData(
            // Your app theme
          ),
          home: MyHomePage(),
        );
      },
    ),
  );
}

```
The `ResponsiveBuilder` widget should be the root widget of your application, as it initializes the media properties based on the constraints and orientation. The `MaterialApp` widget is placed as its child to provide the necessary data for the package.

## Dimensions Extension
The package provides extensions for `double` and `int` data types to calculate dimensions based on the media size. Here's an example:

```dart
double width = 2.w;    // Calculate width based on Media.width
double height = 3.h;   // Calculate height based on Media.height
double textSize = 20.t;   // Calculate text size based on Media.text
double imageSize = 100.i;   // Calculate image size based on Media.image
```

## AdaptiveContainer Widget
The `AdaptiveContainer` widget is a container that adapts its child based on the current device type. It takes three child widgets: `mobile`, `tablet`, and `desktop`, which define the widget to be displayed on different device types.

```dart
AdaptiveContainer(
  mobile: MobileWidget(),
  tablet: TabletWidget(),
  desktop: DesktopWidget(),
)
```

## AspectRatioBuilder Widget
The `AspectRatioBuilder` widget builds a child widget with a specific aspect ratio. It takes the `aspectRatio` and a `builder` function as parameters, which constructs the child widget.

```dart
AspectRatioBuilder(
  aspectRatio: 16 / 9,
  builder: (context, width, height) {
    return Container(
      width: width,
      height: height,
      child: MyWidget(),
    );
  },
)
```

## ResponsiveGrid Widget
The `ResponsiveGrid` widget displays a responsive grid layout with a specified number of columns and spacing. It takes the `columns`, `spacing`, and `children` as parameters.

```dart
ResponsiveGrid(
  columns: 3,
  spacing: 16.0,
  children: [
    GridItem(),
    GridItem(),
    GridItem(),
    // Add more grid items
  ],
)
```

## SizeBuilder Widget
The `SizeBuilder` widget builds a different widget based on the device type and orientation. It takes three builder functions: `mobileBuilder`, `tabletBuilder`, and `desktopBuilder`.

```dart
SizeBuilder(
    mobileBuilder: () {
      return MobileLayout();
    },
    tabletBuilder: () {
      return TabletLayout();
    },
    desktopBuilder: () {
      return DesktopLayout();
    },
)
```

## Example

Here's a simple example of using `flutter_responsive_util` to create a responsive layout:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_responsive_util/flutter_responsive_util.dart';

void main() {
  runApp(
    ResponsiveBuilder(
      builder: (context, constraints, orientation) {
        return MaterialApp(
          title: 'My Responsive App',
          theme: ThemeData(
            // Your app theme
          ),
          home: Scaffold(
            appBar: AppBar(
              title: Text('Responsive App'),
            ),
            body: AdaptiveContainer(
              mobile: MobileWidget(),
              tablet: TabletWidget(),
              desktop: DesktopWidget(),
            ),
          ),
        );
      },
    ),
  );
}

class MobileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Mobile Layout'),
    );
  }
}

class TabletWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Tablet Layout'),
    );
  }
}

class DesktopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Desktop Layout'),
    );
  }
}
```

In this example, the `ResponsiveBuilder` is used to wrap the `MaterialApp` widget, and the `AdaptiveContainer` widget is used to display different widgets based on the device type. The `MobileWidget`, `TabletWidget`, and `DesktopWidget` are used as the child widgets for different device types.

Make sure to import the required packages:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_responsive_util/flutter_responsive_util.dart';
```

## Contributions and Issues

Contributions, issues, and feature requests are welcome! Please feel free to contribute to the project by creating a pull request or submitting an issue on the [GitHub repository](https://github.com/suyashnehete/flutter_responsive_util/issues).
