import 'package:flutter/material.dart';
import 'package:lms/app_theme.dart';
import 'package:lms/contants.dart';
import 'package:lms/screens/login/login_screen.dart';
import 'package:lms/widgets/body_text.dart';
import 'package:lms/widgets/app_title.dart';
import 'package:lms/widgets/input_text.dart';
import 'package:lms/widgets/theme_switch.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 500),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(48),
                      decoration: BoxDecoration(
                        color: context.watch<AppTheme>().isDark(context)
                            ? AppColors.white5
                            : AppColors.black10,
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      ),
                      child: Wrap(
                        runSpacing: 20,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: AppTitle(
                              'Nova Conta',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          InputText(placeholder: 'Nome'),
                          InputText(placeholder: 'Email'),
                          InputText(placeholder: 'Senha'),
                          InputText(placeholder: 'Confirmar Senha'),
                          SizedBox(
                            width: double.infinity,
                            child: RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1,
                                text:
                                    'Ao criar uma conta você está aceitando nossos ',
                                children: [
                                  TextSpan(
                                    text: 'Termos de Serviços',
                                    style: TextStyle(color: AppColors.primary),
                                  ),
                                  TextSpan(
                                      text: ' e ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1),
                                  TextSpan(
                                    text: 'Política de Privacidade',
                                    style: TextStyle(color: AppColors.primary),
                                  ),
                                  TextSpan(
                                      text: '.',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Criar Conta'),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BodyText('Já tem uma conta?'),
                              SizedBox(width: 6),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, LoginScreen.routeName);
                                },
                                child: BodyText(
                                  'Entrar',
                                  color: AppColors.primary,
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
      ),
    );
  }
}
