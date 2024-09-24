import 'package:flutter/material.dart';
import 'package:hous_project_dashbord/components/constants/app_them.dart';
 

class CartAppBarButton extends StatelessWidget {
  const CartAppBarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: AppThem.secondaryColor.withAlpha(200),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
