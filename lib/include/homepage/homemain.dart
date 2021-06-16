import 'package:mohammedalojile/include/CenteringOfPages/Portfolio.dart';
import 'package:mohammedalojile/include/CenteringOfPages/ContactCenter.dart';
import 'package:mohammedalojile/include/CenteringOfPages/Education.dart';
import 'package:mohammedalojile/include/CenteringOfPages/skills_desk.dart';
import 'package:mohammedalojile/include/imagesmain/images.dart';
import 'package:mohammedalojile/include/Rows/progressbarmain.dart';
import 'package:mohammedalojile/include/Rows/skillslogosmain.dart';
import 'package:mohammedalojile/include/Rows/welcomepagemain.dart';
import 'package:mohammedalojile/pages/footer.dart';
import 'package:mohammedalojile/pages/progresspage.dart';
import 'package:mohammedalojile/pages/welcome.dart';
import 'package:flutter/material.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({Key key}) : super(key: key);

  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  var _controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        controller: _controller,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Row(
                      children: <Widget>[
                        Expanded(child: WelcomePage()),
                        Expanded(child: OneDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: TwoDesk()),
                        Expanded(child: SkillsLogoDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: SkillBarDesk()),
                        Expanded(child: ThreeDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: [
                        Expanded(child: EducationDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: [
                        Expanded(child: AchievementDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 75,
                    ),
                    SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: [
                        Expanded(child: ContactCenterDesk()),
                        Expanded(
                          child: FourDesk(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        Expanded(child: FooterPage()),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                WelcomePageMob(),
                OneMob(),
                SkillsMob(),
                ProgressPage(),
                EducationMob(),
                AchievementMob(),
                ContactCenterMob(),
                SizedBox(
                  height: 50,
                ),
                FooterPage()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                WelcomePageTab(),
                OneTab(),
                SkillsTab(),
                ProgressPage(),
                EducationTab(),
                AchievementTab(),
                ContactCenterTab(),
                SizedBox(
                  height: 50,
                ),
                FooterMob(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
