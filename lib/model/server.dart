import 'package:flutter_scrolls/model/nearby_place.dart';

import 'dummy_data.dart';

class Server {
  static List<NearbyPlace> getNearbyPlaces() =>
      dummyDataNearbyPlaces.values.toList();

}