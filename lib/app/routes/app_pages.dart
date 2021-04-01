import 'package:get/get.dart';
import 'package:marvapp/app/modules/cadastro/bindings.dart';
import 'package:marvapp/app/modules/cadastro/page.dart';
import 'package:marvapp/app/modules/home/bindings.dart';
import 'package:marvapp/app/modules/home/page.dart';
import 'package:marvapp/app/modules/login/bindings.dart';
import 'package:marvapp/app/modules/login/page.dart';
import 'package:marvapp/app/modules/reset_senha/bindings.dart';
import 'package:marvapp/app/modules/reset_senha/page.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    /*GetPage(
      name: Routes.LANDING,
      page: () => LandingPage(),
    ),*/
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: Routes.CADASTRO,
        page: () => CadastroPage(),
        binding: CadastroBinding()),
    GetPage(
      name: Routes.RESET_SENHA,
      page: () => ResetSenhaPage(),
      binding: ResetSenhaBinding(),
    ),
  ];
}
