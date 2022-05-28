import 'package:flutter/material.dart';
import 'package:flutter_scrolls/model/server.dart';
import 'package:flutter_scrolls/presentation/item_nearby.dart';
import 'package:flutter_scrolls/utils/colors.dart';

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
          const SliverAppBar(
            title: Text('Restaurants'),
            backgroundColor: colorPrimary,
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
