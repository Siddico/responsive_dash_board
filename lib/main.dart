import 'package:dashapp/features/presentation/views/responsive_home_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: true, builder: (context) => ResponsiveDashBoard()));
}

class ResponsiveDashBoard extends StatelessWidget {
  ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xfff7f9fa)),
      debugShowCheckedModeBanner: false,
      home: ResponsiveHomeView(),
    );
  }
}
