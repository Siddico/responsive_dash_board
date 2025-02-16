import 'package:dashapp/features/presentation/widgets/custom_background_container.dart';
import 'package:dashapp/features/presentation/widgets/detailed_income_chart.dart';
import 'package:dashapp/features/presentation/widgets/income_chart.dart';
import 'package:dashapp/features/presentation/widgets/income_details.dart';
import 'package:dashapp/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthOfPage = MediaQuery.sizeOf(context)
        .width; // responsible for do rebuild for ui to update changes happened without it we willnot can do rebuild with class sizeconfig
    return CustomBackGroundContainer(
      widget: Column(
        children: [
          IncomeHeader(),
          Divider(
            height: 40,
          ),
          widthOfPage > SizeConfig.desktopBreakPoint && widthOfPage < 1890
              ?
              // Padding(
              //     padding: const EdgeInsets.all(32.0),
              //     child:
              // AspectRatio(
              //     aspectRatio: 1,
              //     child: Expanded(
              //         child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [

              //         ],
              //       ))),
              // )
              Expanded(
                  child:
                      DetailedIncomeChart()) // solved width error with expanded
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(flex: 3, child: IncomeChart()),
                    Expanded(flex: 5, child: IncomeDetails())
                  ],
                )
        ],
      ),
    );
  }
}
