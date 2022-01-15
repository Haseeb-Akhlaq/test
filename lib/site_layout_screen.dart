import 'package:flutter/material.dart';
import 'package:web_course/helpers/responsiveness.dart';
import 'package:web_course/large_screen.dart';
import 'package:web_course/small_screen.dart';
import 'package:web_course/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavBar(
        context,
        scaffoldKey,
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        mediumScreen: LargeScreen(),
        customScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
