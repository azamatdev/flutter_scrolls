import 'package:flutter/material.dart';
import 'package:flutter_scrolls/presentation/nearby_page.dart';
import 'package:sizer/sizer.dart';

import 'utils/constant_scroll_behavior.dart';

class RestaurantsApp extends StatelessWidget {
  const RestaurantsApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          // Scrolling in Flutter behaves differently depending on the
          // ScrollBehavior. By default, ScrollBehavior changes depending
          // on the current platform. For the purposes of this scrolling
          // workshop, we're using a custom ScrollBehavior so that the
          // experience is the same for everyone - regardless of the
          // platform they are using.
          scrollBehavior: const ConstantScrollBehavior(),
          title: 'Restaurants App',
          home: const NearbyPage(),
        );
      },
    );
  }
}
