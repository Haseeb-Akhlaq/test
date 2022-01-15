import 'package:flutter/material.dart';
import 'package:web_course/helpers/responsiveness.dart';

import 'custom_text.dart';

AppBar topNavBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: !ResponsiveWidget.isSmallScreen(context)
        ? Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Image.asset(
                  "assets/icons/logo.png",
                  width: 28,
                ),
              ),
            ],
          )
        : IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              key.currentState!.openDrawer();
            }),
    title: Container(
      child: Row(
        children: [
          Visibility(
              visible: !ResponsiveWidget.isSmallScreen(context),
              child: CustomText(
                text: "Dash",
                color: Colors.black,
                size: 20,
                weight: FontWeight.bold,
              )),
          Expanded(child: Container()),
          IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
    ),
  );
}
