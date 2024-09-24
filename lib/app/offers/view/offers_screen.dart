import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hous_project_dashbord/app/offers/view/widget/offers_list.dart';
import 'package:hous_project_dashbord/components/shared/custom_app_bar.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // the app bar
      appBar: appBar(title: "العروض"),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        // offers list view
        child: OffersList(),
      ),
      // add new offer button
      floatingActionButton: CircleAvatar(
          radius: 30,
          child:
              InkWell(onTap: () {}, child: const Icon(FontAwesomeIcons.plus))),
    );
  }
}
