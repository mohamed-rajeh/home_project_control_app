
import 'package:flutter/material.dart';
import 'package:hous_project_dashbord/components/constants/assets.dart';

class OfferBottomSheet extends StatelessWidget {
  const OfferBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.background),
      child: Image.asset(
        Assets.imagesHealthyFood,
      ),
    );
  }
}
