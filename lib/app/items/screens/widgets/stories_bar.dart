import 'package:flutter/material.dart';

class StoresBar extends StatelessWidget {
  const StoresBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 14,
        ),
        itemCount: 15,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return CircleAvatar(
            radius: 40,
            child: Text(
              "عرض رقم $index",
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
    );
  }
}
