//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvapp/app/data/model/user_model.dart';
import 'package:marvapp/app/theme/app_colors_theme.dart';

class CadastroController extends GetxController {
  final user = UserClass();

  final _isLoading = false.obs;
  get isLoading => this._isLoading.value;
  set isLoading(value) => this._isLoading.value = value;

  final _isEmail = false.obs;
  get isEmail => this._isEmail.value;
  set isEmail(value) => this._isEmail.value = value;

  final _senha = "".obs;
  get senha => this._senha.value;
  set senha(value) => this._senha.value = value;

  final _repetirSenha = "".obs;
  get repetirSenha => this._repetirSenha.value;
  set repetirSenha(value) => this._repetirSenha.value = value;

  final _obscure = true.obs;
  get obscure => this._obscure.value;
  set obscure(value) => this._obscure.value = value;

  final _repetirObscure = true.obs;
  get repetirObscure => this._repetirObscure.value;
  set repetirObscure(value) => this._repetirObscure.value = value;

  final _status = false.obs;
  get status => this._status.value;
  set status(value) => this._status.value = value;

  validateEmail(value) =>
      GetUtils.isEmail(value) ? null : 'Insira um email válido';

  validateSenha(value) =>
      value.length < 8 ? 'A senha deve conter pelo menos 8 caracteres' : null;

  validateRepetirSenha(value) {
    if (value.toString().length < 8)
      return 'A senha deve conter pelo menos 8 caracteres';

    if (value != this.senha) return 'As senhas digitadas não são iguais';

    return null;
  }

  onSavedEmail(value) => this.user.email = value;
  onSavedSenha(value) => this.user.password = value;
  onSavedRepetirSenha(value) => this.repetirSenha = value;

  onChangedEmail(value) =>
      GetUtils.isEmail(value) ? this.isEmail = true : this.isEmail = false;
  onChangedSenha(value) => this.senha = value;
  onChangedRepetirSenha(value) => this.repetirSenha = value;

  toggle() => this.obscure = !this.obscure;
  toggleRepetirSenha() => this.repetirObscure = !this.repetirObscure;

  createUser() async {
    this.status = true;
    final User user = (await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: this.user.email, password: this.user.password))
        .user;

    user != null
        ? this.status = false
        : Get.dialog(AlertDialog(
            title: Text("Erro"),
            content: Text("Ocorreu um erro ao criar o usuário"),
            actions: [
              FlatButton(
                  child: Text(
                    "FECHAR",
                    style: TextStyle(
                      color: mainColor,
                    ),
                  ),
                  onPressed: () => Get.back()),
            ],
          ));
  }
}
