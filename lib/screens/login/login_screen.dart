import 'package:flutter/material.dart';
import 'package:lms/contants.dart';
import 'package:lms/screens/recover_password/recover_password_screen.dart';
import 'package:lms/screens/register/register_screen.dart';
import 'package:lms/widgets/app_card.dart';
import 'package:lms/widgets/body_text.dart';
import 'package:lms/widgets/app_title.dart';
import 'package:lms/widgets/input_text.dart';
import 'package:lms/widgets/theme_switch.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 500, maxHeight: 500),
              child: Column(
                children: [
                  AppCard(
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
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, RecoverPasswordScreen.routeName);
                            },
                            child: BodyText(
                              'Esqueceu sua senha?',
                              textAlign: TextAlign.end,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
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
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ThemeSwitch(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
