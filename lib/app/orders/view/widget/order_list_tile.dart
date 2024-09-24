import 'package:flutter/material.dart';

class OrderListTile extends StatelessWidget {
  const OrderListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 2,
      child: ListTile(
        // item name
        title: Text("اسم الصنف"),

        // item photo
        leading: CircleAvatar(),

        // total
        subtitle: Total(),

        // Quantity
        trailing: CircleAvatar(
          child: Text("1"),
        ),
      ),
    );
  }
}

class Total extends StatelessWidget {
  const Total({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text.rich(
        TextSpan(
          children: [
            const TextSpan(text: "الإجمالي :"),
            const TextSpan(text: "   "),
            TextSpan(
              text: "2800",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold),
            ),
            const TextSpan(text: "  "),
            const TextSpan(text: "ر.ي"),
          ],
        ),
      ),
    );
  }
}

class Qty extends StatelessWidget {
  const Qty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text.rich(
        TextSpan(
          children: [
            const TextSpan(text: "العدد :"),
            const TextSpan(text: "   "),
            TextSpan(
                text: "10",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
