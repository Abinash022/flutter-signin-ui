import 'package:flutter/material.dart';
import 'package:login_ui_design/widgets/gradient-button.dart';
import 'package:login_ui_design/widgets/login_field.dart';
import 'package:login_ui_design/widgets/social_buttons.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('Assets/Login_UI.png'),

              // Sign in Text
              const Text(
                'Sign in.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),

              //creating a sized box to maintain gap between the sign in text and other text.
              const SizedBox(height: 50,),
              const SocialButtons(
                  iconPaths: 'Assets/icons8-google.svg',
                  labels: 'continue with Google',
              ),
              const SizedBox(height: 15,),
              const SocialButtons(
                iconPaths: 'Assets/icons8-facebook.svg',
                labels: 'continue with Facebook',
                horizontalPadding: 90,
              ),
              const SizedBox(height: 15,),
              const Text('Or',style: TextStyle(fontSize: 17),),
              const SizedBox(height: 15,),

              const LoginField(
                hintText: 'Email',
              ),
              const SizedBox(height: 15,),
              const LoginField(hintText: 'Password'),
              const SizedBox(height: 20,),
              const GradientButton(),
            ],
          ),
        ),
      ),
    );
  }
}
