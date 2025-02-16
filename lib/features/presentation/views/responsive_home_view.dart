import 'package:dashapp/features/presentation/widgets/adaptive_layout_widget.dart';
import 'package:dashapp/features/presentation/widgets/custom_drawer.dart';
import 'package:dashapp/features/presentation/widgets/dashboard_disktop_layout.dart';
import 'package:dashapp/features/presentation/widgets/dashboard_tablet_layout.dart';
import 'package:dashapp/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard_mobile_layout.dart';

class ResponsiveHomeView extends StatefulWidget {
  const ResponsiveHomeView({super.key});

  @override
  State<ResponsiveHomeView> createState() => _ResponsiveHomeViewState();
}

class _ResponsiveHomeViewState extends State<ResponsiveHomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width <= SizeConfig.tabletBreakPoint
          ? AppBar(
              backgroundColor: Color(0xfffafafa),
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  icon: (Icon(
                    Icons.menu,
                    color: Color(0xff4eb7f2),
                  ))),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width <= SizeConfig.tabletBreakPoint
          ? CustomDrawer()
          : null,
      body: AdaptiveLayoutWidget(mobileLayout: (context) {
        return DashboardMobileLayout();
      }, tabletLayout: (context) {
        return DashboardTabletLayout();
      }, desktopLayout: (context) {
        return DashboardDisktopLayout();
      }),
    );
  }
}
