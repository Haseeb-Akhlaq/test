import 'package:flutter/material.dart';
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
      // body: const ResponsiveWidget(
      //
      // ),
    );
  }
}
