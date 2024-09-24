 import 'package:flutter/material.dart';
import 'package:hous_project_dashbord/components/constants/assets.dart';

class ItemPicture extends StatelessWidget {
  const ItemPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.background),
          child: Image.asset(Assets.imagesHealthyFood),
        ),
        Positioned(
          bottom: 0,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
        )
      ],
    );
  }
}
