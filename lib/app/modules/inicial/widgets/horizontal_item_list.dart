import 'package:flutter/material.dart';
import 'package:marvapp/app/widgets/item_widget.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: Row(
          children: [
            ItemWidget(
              name: 'Spider-Man',
              image: AssetImage('assets/images/spider.jpg'),
              rating: 1,
            ),
            ItemWidget(
              name: 'Spider-Man',
              image: AssetImage('assets/images/spider.jpg'),
              rating: 2,
            ),
            ItemWidget(
              name: 'Spider-Man',
              image: AssetImage('assets/images/spider.jpg'),
              rating: 3,
            ),
            ItemWidget(
              name: 'Spider-Man',
              image: AssetImage('assets/images/spider.jpg'),
              rating: 4,
            ),
            ItemWidget(
              name: 'Spider-Man',
              image: AssetImage('assets/images/spider.jpg'),
              rating: 5,
            ),
            ItemWidget(
              name: 'Spider-Man',
              image: AssetImage('assets/images/spider.jpg'),
              rating: 0,
            ),
          ],
        ),
      ),
    );
  }
}
