import 'package:flutter/material.dart';
import 'package:flutter_scrolls/generated/assets.dart';
import 'package:flutter_scrolls/model/nearby_place.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class ItemNearby extends StatelessWidget {
  final NearbyPlace? place;

  const ItemNearby({Key? key, this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      margin: const EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 2),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              SizedBox(
                width: 20.w,
                height: 20.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(place!.imageId),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place!.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 6, bottom: 6),
                        child: Row(
                          children: [
                            SvgPicture.asset(Assets.iconsStar),
                            Text(
                                ' 4.6 (99+)  |  ${place!.type}  |  ${place!.distance}m')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
