import 'package:flutter/material.dart';
import 'package:hous_project_dashbord/components/constants/app_them.dart';

class DayNameWidget extends StatelessWidget {
  const DayNameWidget({
    super.key,
    this.name,
  });
  final name;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppThem.primaryColor,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        // the name of day
        child: Text(
          name,
          style: TextStyle(fontSize: 16, color: AppThem.white),
        ),
      ),
    );
  }
}
