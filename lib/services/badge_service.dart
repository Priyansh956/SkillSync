import '../models/app_badge.dart';

class BadgeService {
  // Returns badges for completed streak milestones (50, 100, 150, ...)
  List<AppBadge> getBadgesForStreak(int streak) {
    List<AppBadge> badges = [];
    for (int milestone = 50; milestone <= streak; milestone += 50) {
      badges.add(
        AppBadge(
          name: "🏅 ${milestone}-Day Streak",
          iconPath: "assets/badges/${milestone}.png", // save badge images in assets
        ),
      );
    }
    return badges;
  }
}
