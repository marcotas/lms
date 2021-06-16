import 'package:lms/screens/login/login_screen.dart';
import 'package:lms/screens/recover_password/recover_password_screen.dart';
import 'package:lms/screens/register/register_screen.dart';

var routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  RecoverPasswordScreen.routeName: (context) => RecoverPasswordScreen(),
};
