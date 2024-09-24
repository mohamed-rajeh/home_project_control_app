import 'package:flutter/material.dart';
import 'package:hous_project_dashbord/app/offers/view/widget/offer_list_tile.dart';
import 'package:hous_project_dashbord/components/constants/app_them.dart';

class OffersList extends StatelessWidget {
  const OffersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 6,
      separatorBuilder: (context, index) => Divider(
        color: AppThem.grey,
      ),
      itemBuilder: (BuildContext context, int index) {
        return OfferListTile(
          index: index,
        );
      },
    );
  }
}
