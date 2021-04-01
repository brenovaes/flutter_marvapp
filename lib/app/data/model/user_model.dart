import 'package:get/get.dart';

class RxUser {
  final email = ''.obs;
  final password = ''.obs;
}

class UserClass {
  UserClass({email, password});

  final rx = RxUser();

  get email => this.rx.email.value;
  set email(value) => this.rx.email.value = value;

  get password => this.rx.password.value;
  set password(value) => this.rx.password.value = value;

  UserClass.fromJson(Map<String, dynamic> json) {
    this.email = json['email'];
    this.password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
