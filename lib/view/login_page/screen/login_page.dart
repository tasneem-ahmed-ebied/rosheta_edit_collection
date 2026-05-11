import 'package:flutter/material.dart';

import '../../../core/navigation/app_navigation.dart';
import '../../../core/resources/color_manager.dart';
import '../../../core/resources/fonts_manager.dart';
import '../../../core/resources/height_manager.dart';
import '../../../core/resources/padding_manager.dart';
import '../../../core/resources/route_manager.dart';
import '../../../core/resources/utils.dart';
import '../../../core/resources/width_manager.dart';
import '../../../view/widget/app_bar_widget.dart';
import '../../widget/main_button_design.dart';
import '../widget/forget_password_button.dart';
import '../widget/login_form.dart';
import '../widget/login_fotter_widget.dart';
import '../widget/success_dialog.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBarWidget(title: Utils.login),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: HorizontalPaddingManager.p24,
            vertical: VerticalPaddingManager.p20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: HeightManager.h20),

              /// ── Email & Password ──
              LoginForm(formKey: _formKey),

              SizedBox(height: HeightManager.h8),

              /// ── Forget Password ──
              ForgetPasswordButton(),

              SizedBox(height: HeightManager.h20),

              /// ── Login Button ──
              InkWell(
                  onTap: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                            context: context,
                            builder: (_) =>  SuccessDialog(titleDialog: Utils.welcomeBack, desc: '${Utils.welcomeMessage}\n${Utils.intoRoshetaApp}', buttonTitle: Utils.goToHome,)
                        );
                      }
                  },
                  child: MainButtonDesign(width: WidthManagers.w171, text: Utils.login, height: HeightManager.h50)),

              SizedBox(height: HeightManager.h25),

              /// ── Footer (Sign Up + OR + Social Buttons) ──
              const LoginFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

