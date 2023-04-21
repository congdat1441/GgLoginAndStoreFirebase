import 'package:flutter/material.dart';
import 'package:login_and_save/screens/home_screen.dart';

import '../firebase/auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const String id = 'LoginScreen';
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      child: FloatingActionButton(
        onPressed: () async{
          bool result = await _authMethods.signinWithGoogle();
          if(result){
            Navigator.of(context).pushNamed(HomePageScreen);
          }

        },
        child: const Icon(Icons.login),
      ),
    ));
  }
}
