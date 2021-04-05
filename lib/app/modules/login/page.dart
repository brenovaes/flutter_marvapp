import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:marvapp/app/modules/login/controller.dart';
import 'package:marvapp/app/routes/app_pages.dart';
import 'package:marvapp/app/theme/app_colors_theme.dart';
import 'package:marvapp/app/widgets/custom_buttom_widget.dart';
import 'package:marvapp/app/widgets/custom_tff_widget.dart';

class LoginPage extends GetView<LoginController> {
  final GlobalKey<FormState> formLoginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
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
                      flex: 1,
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
                            key: formLoginKey,
                            child: Column(
                              children: [
                                CustomTextFormField(
                                  onChanged: (value) =>
                                      controller.onChangeEmail(value),
                                  onSaved: (value) =>
                                      controller.onSaveEmail(value),
                                  validator: (value) =>
                                      controller.validateEmail(value),
                                  text: 'Email',
                                  type: TextInputType.text,
                                  //max: 42,
                                ),
                                Obx(
                                  () => CustomTextFormField(
                                    onChanged: (value) =>
                                        controller.onChangeSenha(value),
                                    onSaved: (value) =>
                                        controller.onSaveSenha(value),
                                    validator: (value) =>
                                        controller.validateSenha(value),
                                    text: 'Password',
                                    type: TextInputType.text,
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
                                    autoCorrect: false,
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                CustomButtonWidget(
                                    buttonContent: Text(
                                      'LOGIN',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    callback: () async {
                                      final FormState form =
                                          formLoginKey.currentState;
                                      /*if (form.validate()) {
                                        print('login');
                                        form.save();
                                        Get.overlayContext.showLoaderOverlay();
                                        if (await controller.login()) {
                                          Get.overlayContext.hideLoaderOverlay();
                                          Get.offAllNamed(Routes.HOME,
                                              arguments: controller.user);
                                        } else {
                                          Get.overlayContext.hideLoaderOverlay();
                                        }
                                      }*/
                                      Get.offAllNamed(Routes.HOME);
                                    }),
                                SizedBox(
                                  height: 24,
                                ),
                                InkWell(
                                  child: Text(
                                    'Forgot your password?',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onTap: () => controller.resetSenha(),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      child: Text(
                                        'Not registered?',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    InkWell(
                                      child: Text(
                                        'Sign up now!',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      onTap: () => controller.cadastro(),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.instagram,
                                      size: 32,
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.twitter,
                                      size: 32,
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.facebook,
                                      size: 32,
                                    ),
                                  ],
                                ),
                                //),
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
