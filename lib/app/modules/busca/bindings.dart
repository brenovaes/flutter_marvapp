import 'package:get/get.dart';
import 'package:marvapp/app/modules/busca/controller.dart';

class BuscaBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuscaController>(() => BuscaController());
  }
}
