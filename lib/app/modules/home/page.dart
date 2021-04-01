import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvapp/app/modules/busca/page.dart';
import 'package:marvapp/app/modules/home/controller.dart';
import 'package:marvapp/app/modules/inicial/page.dart';
import 'package:marvapp/app/theme/app_colors_theme.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 40.3, fontFamily: 'Marvel'),
            children: [
              TextSpan(
                text: 'MARV',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(text: 'APP', style: TextStyle(color: mainColor)),
            ],
          ),
        ),
      ),
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (s) => IndexedStack(
          index: s.selectedIndex,
          children: <Widget>[
            InicialPage(),
            BuscaPage(),
            Container(
              child: Center(child: Text('Quiz')),
            ),
            Container(
              child: Center(child: Text('Favoritos')),
            ),
            Container(
              child: Center(child: Text('Perfil')),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SuperFaBottomNavigationBar(),
    );
  }
}

class SuperFaBottomNavigationBar extends StatelessWidget {
  const SuperFaBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      // init only first time
      builder: (s) => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.timeline),
              label: ('Quiz'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: ('Favorites'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: ('Profile'),
            ),
          ],
          iconSize: 32,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          elevation: 0,
          currentIndex: s.selectedIndex,
          selectedItemColor: mainColor,
          onTap: (index) => s.onItemTapped(index)),
    );
  }
}
