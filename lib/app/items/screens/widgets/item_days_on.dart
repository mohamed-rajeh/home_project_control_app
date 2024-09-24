import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hous_project_dashbord/app/items/screens/widgets/day_widget.dart';
import 'package:hous_project_dashbord/components/constants/app_them.dart';

class ItemDaysOn extends StatelessWidget {
  const ItemDaysOn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> days = [
      'السبت',
      'الأحد',
      'الاثنين',
      'الثلثاء',
      'الأريعاء',
      'الخميس',
      'الجمعة'
    ];
    Get.put(DaysController());
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            "الأيام المتوفر فيها",
            style: TextStyle(color: AppThem.grey, fontSize: 16),
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 20,
          runSpacing: 16,
          children: List.generate(days.length,
              (index) => DayWidget(day: days[index], index: index)),
        ),
      ],
    );
  }
}

class DaysController extends GetxController {
  var days = <bool>[false, false, false, false, true, false, false].obs;

  void toggleDay(int index) {
    days[index] = !days[index];
  }
}
