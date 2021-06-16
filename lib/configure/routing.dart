import 'package:mohammedalojile/configure/centeredview.dart';
import 'package:mohammedalojile/include/CenteringOfPages/Education.dart';
import 'package:mohammedalojile/include/Rows/contactpagemain.dart';
import 'package:mohammedalojile/pages/portfoliopage.dart';

import 'package:mohammedalojile/pages/contactpage.dart';
import 'package:mohammedalojile/pages/homepage.dart';
import 'package:mohammedalojile/pages/skillspage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

const String SkillsRoute = 'skills';
const String ProjectsRoute = 'projects';
const String EducationRoute = 'education';
const String PortfolioRoute = 'portfolio';
const String ContactRoute = 'contact';
const String BlogRoute = 'blogs';
const String HomeRoute = 'Home';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomePage(), settings.name);
    case SkillsRoute:
      return _getPageRoute(
          ScreenTypeLayout(
            desktop: CenteredViewDesk(child: SkillsPage()),
            tablet: CenteredViewTab(child: SkillsPage()),
            mobile: CenteredViewMob(child: SkillsPage()),
          ),
          settings.name);

    case EducationRoute:
      return _getPageRoute(
          ScreenTypeLayout(
            desktop: CenteredViewDesk(
              child: EducationDesk(),
            ),
            tablet: CenteredViewTab(
              child: EducationTab(),
            ),
            mobile: CenteredViewMob(
              child: EducationMob(),
            ),
          ),
          settings.name);
    case PortfolioRoute:
      return _getPageRoute(
          ScreenTypeLayout(
            desktop: CenteredViewDesk(child: PortfolioPage()),
            tablet: CenteredViewTab(child: PortfolioPage()),
            mobile: CenteredViewMob(child: PortfolioPage()),
          ),
          settings.name);
    case ContactRoute:
      return _getPageRoute(
          ScreenTypeLayout(
            desktop: CenteredViewDesk(child: ContactPageDesk()),
            tablet: CenteredViewTab(child: ContactPage()),
            mobile: CenteredViewMob(child: ContactPage()),
          ),
          settings.name);

    default:
      _getPageRoute(HomePage(), settings.name);
  }
}

PageRoute _getPageRoute(Widget child, String routeName) {
  return _FadeRoute(child: child, routeName: routeName);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            settings: RouteSettings(name: routeName),
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
