import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvapp/app/modules/busca/controller.dart';
import 'package:marvapp/app/widgets/item_widget.dart';

class ComicsBusca extends GetView<BuscaController> {
  @override
  Widget build(BuildContext context) {
    final double itemHeight = 150;
    final double itemWidth = 115;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          width: Get.width,
          child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: (itemWidth / itemHeight),
            children: List.generate(
              20,
              (index) => ItemWidget(
                name: 'A+X (2012) #4',
                image: AssetImage('assets/images/ax.jpg'),
                rating: 4,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
