import 'package:flutter/material.dart';
import 'package:lms/contants.dart';
import 'package:lms/screens/login/login_screen.dart';
import 'package:lms/widgets/app_text.dart';
import 'package:lms/widgets/app_title.dart';
import 'package:lms/widgets/input_text.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBg,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 500),
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
                          style: TextStyle(color: Colors.white),
                          text:
                              'Ao criar uma conta você está aceitando nossos ',
                          children: [
                            TextSpan(
                              text: 'Termos de Serviços',
                              style: TextStyle(color: AppColors.primary),
                            ),
                            TextSpan(text: ' e '),
                            TextSpan(
                              text: 'Política de Privacidade',
                              style: TextStyle(color: AppColors.primary),
                            ),
                            TextSpan(text: '.'),
                          ],
                        ),
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
                        child: Text('Criar Conta'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText('Já tem uma conta?'),
                        SizedBox(width: 6),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, LoginScreen.routeName);
                          },
                          child: AppText(
                            'Entrar',
                            color: AppColors.primary,
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
