import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeroOfTheDay extends StatelessWidget {
  final AssetImage image;
  final String name;
  final String comics;
  final String series;
  final String events;

  HeroOfTheDay(
      {@required this.image,
      @required this.name,
      @required this.comics,
      @required this.series,
      @required this.events});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Card(
        elevation: 3,
        margin: EdgeInsets.all(10),
        child: InkWell(
          onTap: () => print('click day'),
          child: SizedBox(
            height: 150,
            width: Get.width,
            child: Row(
              children: [
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: image,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontSize: 22),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Comics: $comics',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w300),
                              ),
                              Text(
                                'Series: $series',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w300),
                              ),
                              Text(
                                'Events: $events',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w300),
                              ),
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
      ),
    );
  }
}
