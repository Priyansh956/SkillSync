import 'package:flutter/material.dart';
import '../models/app_badge.dart';

class BadgeGrid extends StatelessWidget {
  final List<AppBadge> badges;

  const BadgeGrid({super.key, required this.badges});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
      ),
      itemCount: badges.length,
      itemBuilder: (context, index) {
        final badge = badges[index];
        return Column(
          children: [
            Image.asset(badge.iconPath, height: 50),
            const SizedBox(height: 6),
            Text(badge.name,
                style: const TextStyle(fontSize: 12, color: Colors.white),
                textAlign: TextAlign.center),
          ],
        );
      },
    );
  }
}
