import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final AssetImage image;
  final String name;
  final int rating;
  final listRating = List<Widget>();

  ItemWidget(
      {@required this.image, @required this.name, @required this.rating});

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < rating; i++) {
      listRating.add(Icon(
        Icons.star,
        size: 18,
      ));
    }

    for (var i = 0; i < (5 - rating); i++) {
      listRating.add(Icon(
        Icons.star_border,
        size: 18,
      ));
    }

    return Card(
      elevation: 3,
      margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: () => print('cliquei'),
        child: SizedBox(
          height: 150,
          width: 115,
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(image: image, fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(6, 3, 6, 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(children: listRating),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
