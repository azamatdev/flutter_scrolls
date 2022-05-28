import 'package:flutter/material.dart';
import 'package:flutter_scrolls/generated/assets.dart';
import 'package:flutter_scrolls/model/server.dart';
import 'package:flutter_scrolls/presentation/item_nearby.dart';
import 'package:flutter_scrolls/utils/colors.dart';
import 'package:sizer/sizer.dart';

class NearbyPage extends StatefulWidget {
  const NearbyPage({Key? key}) : super(key: key);

  @override
  State<NearbyPage> createState() => _NearbyPageState();
}

class _NearbyPageState extends State<NearbyPage> {
  final restaurants = Server.getNearbyPlaces();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Restaurants'),
            centerTitle: true,
            backgroundColor: colorPrimary,
            floating: true,
            snap: true,
            expandedHeight: 200.0,
            stretch: true,
            onStretchTrigger: () async {
              print('Load new data!');
              // await Server.requestNewData();
            },
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Restaurants'),
              centerTitle: true,
              collapseMode: CollapseMode.parallax,
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
                StretchMode.blurBackground,
              ],
              background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: <Color>[
                      colorPrimary,
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Image.asset(
                  Assets.imagesAppbarPic,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ItemNearby(
                place: restaurants[index],
              );
            },
            childCount: restaurants.length,
          )),
        ],
      ),
    );
  }
}
