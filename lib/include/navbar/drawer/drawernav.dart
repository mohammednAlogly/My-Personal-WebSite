import 'package:mohammedalojile/configure/routing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../navigationbar.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 300,
        child: Column(
          children: <Widget>[
            DrawerItem('Home', HomeRoute),
            DrawerItem('Skill', SkillsRoute),
            DrawerItem('Education', EducationRoute),
            DrawerItem('Open Source', ProjectsRoute),
            DrawerItem('portfolio', PortfolioRoute),
            DrawerItem('Contact Me', ContactRoute),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const DrawerItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          NavbarItem(title, navigationPath),
        ],
      ),
    );
  }
}
