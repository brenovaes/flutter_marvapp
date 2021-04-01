//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ResetSenhaController extends GetxController {
  final _isEmail = false.obs;
  get isEmail => this._isEmail.value;
  set isEmail(value) => this._isEmail.value = value;

  validateEmail(value) =>
      GetUtils.isEmail(value) ? null : 'Insira um email válido';

  onSaveEmail(value) => this.isEmail = value;

  onChangeEmail(value) =>
      GetUtils.isEmail(value) ? this.isEmail = true : this.isEmail = false;
}
