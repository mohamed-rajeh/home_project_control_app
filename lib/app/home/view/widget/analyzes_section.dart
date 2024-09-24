import 'package:flutter/material.dart';
import 'package:hous_project_dashbord/app/home/view/widget/material_widget.dart';

class Analyzes extends StatelessWidget {
  const Analyzes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ///
            ///counts of all orders
            ///
            MaterialWidget(
              title: "الكل",
              subTitle: "661",
              color: Color(0xff4793AF),
              elevation: 4,
            ),

            ///
            ///

            ///
            /// Canceled orders
            ///
            MaterialWidget(
              title: "الغي",
              subTitle: "661",
              color: Color(0xffFF8B8B),
              elevation: 4,
            ),
          ],
        ),

        ///
        ///

        ///
        /// orders have done
        ///
        MaterialWidget(
          title: "تم",
          subTitle: "661",
          color: Color(0xff36AE7C),
          elevation: 8,
        ),

        ///
        ///
      ],
    );
  }
}
