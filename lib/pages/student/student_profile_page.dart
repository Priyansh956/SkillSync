import 'package:flutter/material.dart';
import '../../widgets/github_heatmap.dart';
import '../../widgets/badge_grid.dart';
import '../../services/badge_service.dart';
import '../../models/app_badge.dart';
import 'package:proj/pages/student/ask_a_doubt.dart';



class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Example streak count (replace with real tracker later)
    final int currentStreak = 120;
    final earnedBadges = BadgeService().getBadgesForStreak(currentStreak);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Profile", style: TextStyle(color: Colors.yellow)),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔥 Streak
            const Text("🔥 Streak",
                style: TextStyle(fontSize: 22, color: Colors.black)),
            const SizedBox(height: 12),
            SizedBox(height: 200, child:  StreakHeatmap()),

            const SizedBox(height: 24),

            // 🏅 Badges
            // const Text("🏅 Earned Badges",
            //     style: TextStyle(fontSize: 22, color: Colors.white)),
            // const SizedBox(height: 12),
            // BadgeGrid(badges: earnedBadges),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50),
                backgroundColor: Colors.teal,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AskDoubtPage()),
                );
              },
              child: const Text("Ask a Doubt", style: TextStyle(fontSize: 18)),
            ),

          ],
        ),
      ),
    );
  }
}
