import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvapp/app/modules/reset_senha/controller.dart';
import 'package:marvapp/app/widgets/custom_buttom_widget.dart';
import 'package:marvapp/app/widgets/custom_tff_widget.dart';

class ResetSenhaPage extends GetView<ResetSenhaController> {
  final GlobalKey<FormState> formResetSenhaKey = GlobalKey<FormState>();
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
                      )),
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
                        width: double.infinity,
                        margin: EdgeInsets.all(20),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(24, 10, 24, 24),
                          //width: Get.width,
                          child: Form(
                            key: formResetSenhaKey,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 18,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Reset password',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  'Enter the email address associated with your account, and we’ll email you a link to reset your password.',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                CustomTextFormField(
                                  onChanged: (value) =>
                                      controller.onChangeEmail(value),
                                  onSaved: (value) =>
                                      controller.onSaveEmail(value),
                                  validator: (value) =>
                                      controller.validateEmail(value),
                                  text: 'Email',
                                  type: TextInputType.emailAddress,
                                  //max: 42,
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                CustomButtonWidget(
                                    buttonContent: Text(
                                      'RESET PASSWORD',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    callback: () async {
                                      final FormState form =
                                          formResetSenhaKey.currentState;
                                      if (form.validate()) {
                                        //form.save();
                                        /*Get.overlayContext.showLoaderOverlay();
                                      if (await controller.login()) {
                                        Get.overlayContext.hideLoaderOverlay();
                                        Get.offAllNamed(Routes.HOME,
                                            arguments: controller.user);
                                      } else {
                                        Get.overlayContext.hideLoaderOverlay();
                                      }*/
                                        print('teste');
                                      }
                                    }),
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
