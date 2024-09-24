import 'package:flutter/material.dart';

class ItemFields extends StatelessWidget {
  const ItemFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        itemTextfield(context, "اسم الصنف"),
        const SizedBox(height: 30),
        itemTextfield(context, "السعر"),
        const SizedBox(height: 30),
        itemTextfield(context, "الوصف (اختياري)"),
      ],
    );
  }

  TextField itemTextfield(BuildContext context, String hintText) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.secondary)),
          hintText: hintText),
    );
  }
}
