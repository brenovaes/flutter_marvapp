import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvapp/app/modules/cadastro/controller.dart';
import 'package:marvapp/app/theme/app_colors_theme.dart';
import 'package:marvapp/app/widgets/custom_buttom_widget.dart';
import 'package:marvapp/app/widgets/custom_tff_widget.dart';

class CadastroPage extends GetView<CadastroController> {
  final GlobalKey formCadastroKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldCadastroKey =
      GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: Get.width,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/login/gambit.jpg'),
                      fit: BoxFit.cover,
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(0.0),
                        Colors.white.withOpacity(1),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: 200,
                        child: Center(
                          child: Image(
                            image: AssetImage('assets/images/marv.jpg'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.85),
                        ),
                        margin: EdgeInsets.all(20),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(24, 10, 24, 24),
                          //width: Get.width,
                          child: Form(
                            key: formCadastroKey,
                            child: Column(
                              children: [
                                /*CustomTextFormField(
                                  //onChanged: (value) =>
                                  //controller.onChangeEmail(value),
                                  //onSaved: (value) => controller.onSavedEmail(value),
                                  //validator: (value) =>
                                  //controller.validateEmail(value),
                                  text: 'Username',
                                  type: TextInputType.text,
                                  //max: 42,
                                ),*/
                                CustomTextFormField(
                                  onChanged: (value) =>
                                      controller.onChangedEmail(value),
                                  onSaved: (value) =>
                                      controller.onSavedEmail(value),
                                  validator: (value) =>
                                      controller.validateEmail(value),
                                  text: 'Email',
                                  type: TextInputType.emailAddress,
                                  //max: 42,
                                ),
                                Obx(
                                  () => CustomTextFormField(
                                    onChanged: (value) =>
                                        controller.onChangedSenha(value),
                                    onSaved: (value) =>
                                        controller.onSavedSenha(value),
                                    validator: (value) =>
                                        controller.validateSenha(value),
                                    text: 'Password',
                                    obscure: controller.obscure,
                                    sufixIcon: IconButton(
                                      alignment: Alignment.bottomCenter,
                                      icon: Icon(Icons.remove_red_eye),
                                      iconSize: 26,
                                      color: controller.obscure
                                          ? Colors.grey
                                          : mainColor,
                                      onPressed: () => controller.toggle(),
                                    ),
                                  ),
                                ),
                                Obx(
                                  () => CustomTextFormField(
                                    onChanged: (value) =>
                                        controller.onChangedRepetirSenha(value),
                                    onSaved: (value) =>
                                        controller.onSavedRepetirSenha(value),
                                    validator: (value) =>
                                        controller.validateRepetirSenha(value),
                                    text: 'Repeat password',
                                    obscure: controller.repetirObscure,
                                    sufixIcon: IconButton(
                                      alignment: Alignment.bottomCenter,
                                      icon: Icon(Icons.remove_red_eye),
                                      iconSize: 26,
                                      color: controller.repetirObscure
                                          ? Colors.grey
                                          : mainColor,
                                      onPressed: () =>
                                          controller.toggleRepetirSenha(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Obx(
                                  () => CustomButtonWidget(
                                      buttonContent: controller.isLoading
                                          ? CircularProgressIndicator(
                                              backgroundColor: Colors.white,
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                      mainColor),
                                            )
                                          : Text(
                                              'SIGN IN',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                      callback: () async {
                                        controller.isLoading = true;
                                        final FormState form =
                                            formCadastroKey.currentState;
                                        if (form.validate()) {
                                          form.save();
                                          await controller.createUser();
                                          controller.isLoading = false;
                                          controller.status == false
                                              ? Get.dialog(AlertDialog(
                                                  title: Text('Sucess!'),
                                                  content: Text(
                                                      'Your account was successfully created! Please login with your credentials.'),
                                                  actions: [
                                                    FlatButton(
                                                      child: Text(
                                                        'CLOSE',
                                                        style: TextStyle(
                                                          color: mainColor,
                                                        ),
                                                      ),
                                                      onPressed: () => Get.back(
                                                          closeOverlays: true),
                                                    ),
                                                  ],
                                                ))
                                              : null;
                                        }
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
