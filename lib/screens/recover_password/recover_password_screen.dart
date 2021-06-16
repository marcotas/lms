import 'package:flutter/material.dart';
import 'package:lms/app_theme.dart';
import 'package:lms/contants.dart';
import 'package:lms/screens/login/login_screen.dart';
import 'package:lms/widgets/app_card.dart';
import 'package:lms/widgets/app_title.dart';
import 'package:lms/widgets/body_text.dart';
import 'package:lms/widgets/input_text.dart';
import 'package:lms/widgets/theme_switch.dart';
import 'package:provider/provider.dart';

class RecoverPasswordScreen extends StatelessWidget {
  static String routeName = '/recover-password';

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
                    radius: 24,
                    // padding: EdgeInsets.all(36),
                    // decoration: BoxDecoration(
                    //   color: Colors.white.withOpacity(0.05),
                    //   borderRadius: BorderRadius.all(Radius.circular(24)),
                    // ),
                    child: Wrap(
                      runSpacing: 20,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: AppTitle(
                            'Recuperar Senha',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        InputText(placeholder: 'Email'),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Enviar Link de Recuperação',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BodyText('Lembrou a senha?'),
                            SizedBox(width: 6),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, LoginScreen.routeName);
                              },
                              child: BodyText(
                                'Entrar',
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
