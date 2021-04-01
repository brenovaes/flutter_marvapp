//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:marvapp/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final _isEmail = false.obs;
  get isEmail => this._isEmail.value;
  set isEmail(value) => this._isEmail.value = value;

  final _senha = "".obs;
  get senha => this._senha.value;
  set senha(value) => this._senha.value = value;

  final _obscure = true.obs;
  get obscure => this._obscure.value;
  set obscure(value) => this._obscure.value = value;

  validateEmail(value) =>
      GetUtils.isEmail(value) ? null : 'Insira um email válido';
  validateSenha(value) =>
      value.length < 8 ? 'A senha deve conter pelo menos 8 caracteres' : null;

  onSaveEmail(value) => this.isEmail = value;
  onSaveSenha(value) => this.senha = value;

  onChangeEmail(value) =>
      GetUtils.isEmail(value) ? this.isEmail = true : this.isEmail = false;
  onChangeSenha(value) => this.senha = value;

  final auth = false.obs;

  void toggle() => this.obscure = !this.obscure;

  login() async {
    return true;
    /*try {
      final FirebaseUser user = (await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: this.user.email, password: this.user.senha))
          .user;
      if (user != null) {
        await getInfo();
        return true;
      } else {
        return false;
      }
    } catch (e) {
      this.message = 'Email ou senha incorreto';
      return false;
    }*/
  }

  getInfo() async {
    /*print(this.user.email);
    await Firestore.instance
        .collection('users')
        .document(this.user.email)
        .get()
        .then((DocumentSnapshot ds) {
      this.user = UserModel.fromJson(ds.data);
    });*/
  }

  resetSenha() => Get.toNamed(Routes.RESET_SENHA);

  cadastro() => Get.toNamed(Routes.CADASTRO);
}
