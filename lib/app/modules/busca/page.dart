import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:marvapp/app/modules/busca/controller.dart';
import 'package:marvapp/app/modules/busca/widgets/characters_busca.dart';
import 'package:marvapp/app/modules/busca/widgets/comics_busca.dart';
import 'package:marvapp/app/modules/busca/widgets/creators_busca.dart';
import 'package:marvapp/app/theme/app_colors_theme.dart';

class BuscaPage extends GetView<BuscaController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () => {FocusScope.of(context).requestFocus(FocusNode())},
          child: Column(
            children: [
              TabBar(
                indicatorColor: mainColor,
                labelColor: mainColor,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'CHARACTERS',
                  ),
                  Tab(
                    text: 'COMICS',
                  ),
                  Tab(
                    text: 'CREATORS',
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Search',
                      suffixIcon: Icon(Icons.search),
                      hintText: 'e.g.: Spider-Man'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Results (1)',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: Divider(
                  height: 2,
                  thickness: 2,
                  indent: 0,
                  endIndent: 0,
                  color: mainColor,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    CharactersBusca(),
                    ComicsBusca(),
                    CreatorsBusca(),
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
