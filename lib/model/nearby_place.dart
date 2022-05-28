class NearbyPlace {
  const NearbyPlace({
    required this.id,
    required this.imageId,
    required this.name,
    required this.type,
    required this.distance,
  });

  final int id;
  final String imageId;
  final String name;
  final String type;
  final int distance;
}
