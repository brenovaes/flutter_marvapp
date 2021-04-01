//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:marvapp/app/data/model/character_model.dart';

class BuscaController extends GetxController {
  final _selectedTabIndex = 0.obs;
  get selectedTabIndex => this._selectedTabIndex.value;
  set selectedTabIndex(value) => this._selectedTabIndex.value = value;

  @override
  void onInit() => fetchDataFromApi();

  final listCharacters = List<Characters>().obs;
  var count = 1.obs;
  increment() => count++;
  decrement() => count--;

  void fetchDataFromApi() async {
    //listCharacters.addAll(await repository.getCharacters());
    //print(listCharacters);
  }
}
