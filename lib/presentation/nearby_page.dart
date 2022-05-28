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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurants'),
        backgroundColor: colorPrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: Server.getNearbyPlaces().map((place) {
            return ItemNearby(
              place: place,
            );
          }).toList(),
        ),
      ),
    );
  }
}