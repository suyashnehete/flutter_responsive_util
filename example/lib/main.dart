import 'package:flutter/material.dart';
import 'package:flutter_responsive_util/flutter_responsive_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
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
    );
  }
}

class MobileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Mobile Layout', style: TextStyle(fontSize: 2.t),),
    );
  }
}

class TabletWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tablet Layout', style: TextStyle(fontSize: 3.t),),
    );
  }
}

class DesktopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Desktop Layout', style: TextStyle(fontSize: 4.t),),
    );
  }
}