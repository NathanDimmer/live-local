import 'package:flutter/material.dart';

import 'feed.dart';

class SwipableFeeds extends StatelessWidget {
  final Function setScreen;
  final List businesses;
  final List staredBusinesses;
  final PageController pageController;

  SwipableFeeds(
      {this.businesses,
      this.staredBusinesses,
      this.setScreen,
      this.pageController});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        FeedGrid(
          businesses: businesses,
          showStar: true,
        ),
        FeedGrid(
          businesses: staredBusinesses,
          showStar: true,
        ),
      ],
      onPageChanged: (currentScreen) {
        setScreen(currentScreen);
      },
    );
  }
}
