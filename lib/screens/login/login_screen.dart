import 'package:flutter/material.dart';
import 'package:lms/contants.dart';
import 'package:lms/screens/register/register_screen.dart';
import 'package:lms/widgets/body_text.dart';
import 'package:lms/widgets/app_title.dart';
import 'package:lms/widgets/input_text.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBg,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 500, maxHeight: 500),
              child: Container(
                padding: EdgeInsets.all(48),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: Wrap(
                  runSpacing: 20,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: AppTitle(
                        'Login',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    InputText(placeholder: 'Email'),
                    InputText(placeholder: 'Senha'),
                    SizedBox(
                      width: double.infinity,
                      child: BodyText(
                        'Esqueceu sua senha?',
                        textAlign: TextAlign.end,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                          textStyle: TextStyle(
                            fontSize: 16,
                          ),
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text('Entrar'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BodyText('Não tem uma conta?'),
                        SizedBox(width: 6),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, RegisterScreen.routeName);
                          },
                          child: BodyText(
                            'Criar conta',
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
