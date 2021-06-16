import 'package:mohammedalojile/include/CenteringOfPages/Portfolio.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AchievementDesk(),
      tablet: AchievementTab(),
      mobile: AchievementMob(),
    );
  }
}
