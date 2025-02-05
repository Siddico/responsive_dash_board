import 'package:dashapp/features/presentation/views/responsive_home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: ResponsiveHomeView(),
    );
  }
}
