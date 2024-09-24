import 'package:flutter/material.dart';
import 'package:hous_project_dashbord/components/constants/app_them.dart';

class MaterialWidget extends StatelessWidget {
  const MaterialWidget({
    super.key,
    this.color,
    required this.title,
    required this.subTitle,
    this.elevation,
  });
  final Color? color;
  final String title;
  final String subTitle;
  final double? elevation;
  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      elevation: elevation ?? 8,
      borderRadius: BorderRadius.circular(100),
      color: Theme.of(context).colorScheme.background,
      child: SizedBox(
        height: 140,
        width: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: AppThem.tfontStyle.copyWith(color: color),
            ),
            Text(
              subTitle,
              style: AppThem.tfontStyle,
            ),
          ],
        ),
      ),
    );
  }
}
