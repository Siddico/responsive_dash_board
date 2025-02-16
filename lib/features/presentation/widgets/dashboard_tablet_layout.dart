import 'package:flutter/material.dart';
import 'custom_drawer.dart';
import 'dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        SizedBox(
          width: 12,
        ),
        Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 24),
              child: DashboardMobileLayout(),
            )),
        // SizedBox(
        //   width: 12,
        // ),
        // Expanded(
        //   flex: 3,
        //   child: AllHistoryTransactionAndIncomeSection(),
        //   // IncomeSection(),
        // ),
      ],
    );
  }
}
