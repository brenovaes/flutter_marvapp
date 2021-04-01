import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:marvapp/app/modules/inicial/controller.dart';
import 'package:marvapp/app/modules/inicial/widgets/hero_of_the_day.dart';
import 'package:marvapp/app/modules/inicial/widgets/horizontal_item_list.dart';
import 'package:marvapp/app/modules/inicial/widgets/label_with_divider.dart';

class InicialPage extends GetView<InicialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            LabelWithDivider(labelName: 'Hero Of The Day'),
            HeroOfTheDay(
              image: AssetImage(
                'assets/images/spider.jpg',
              ),
              comics: '3952',
              events: '38',
              name: 'Spider-Man',
              series: '1003',
            ),
            LabelWithDivider(labelName: 'Most Popular'),
            ItemList(),
            LabelWithDivider(labelName: 'Suggested For You'),
            ItemList(),
            LabelWithDivider(labelName: 'Visited Previously'),
            ItemList(),
          ],
        ),
      ),
    );
  }
}
