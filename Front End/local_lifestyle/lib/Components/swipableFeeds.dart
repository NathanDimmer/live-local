import 'package:flutter/material.dart';

import 'feed.dart';

class SwipableFeeds extends StatelessWidget {
  final Function setScreen;
  final List businesses;
  final List staredBusinesses;
  final PageController pageController;
  final Function setStar;

  SwipableFeeds(
      {this.businesses,
      this.staredBusinesses,
      this.setScreen,
      this.pageController,
      this.setStar});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        FeedGrid(
          businesses: businesses,
          showStar: true,
          setStar: setStar,
        ),
        FeedGrid(
          businesses: findStared(businesses),
          showStar: true,
          setStar: setStar,
        ),
      ],
      onPageChanged: (currentScreen) {
        setScreen(currentScreen);
      },
    );
  }
}

List findStared(List businesses) {
  List staredBusinesses = [];

  for (int i = 0; i < businesses.length; i++) {
    if (businesses[i]['isStared']) {
      staredBusinesses.add(businesses[i]);
      staredBusinesses.last['index'] = i;
    }
  }

  if (staredBusinesses.length > 0) {
    return staredBusinesses;
  } else {
    return ([
      {
        "name": "Your stared businesses go here",
        "address": "",
        "description": "",
        "link": "",
        "yelp": "",
        "image": "https://i.imgur.com/MnP2WTJ.png",
        "isStared": true,
        "tags": [],
        "posts": [],
      },
    ]);
  }
}
