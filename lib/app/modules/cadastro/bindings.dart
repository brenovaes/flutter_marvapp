import 'package:get/get.dart';
import 'package:marvapp/app/modules/cadastro/controller.dart';

class CadastroBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CadastroController>(() => CadastroController());
  }
}
