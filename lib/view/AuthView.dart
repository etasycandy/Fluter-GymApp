import 'package:flutter/material.dart';
import 'package:gymix/components/auth/SocialLogin.dart';

import '../components/auth/AuthForm.dart';
import '../theme/color.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(top: 130),
            width: double.infinity,
            child: Column(
              children: [
                const Text('Đăng Kí', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600, fontSize: 25)),

                const SizedBox(
                  height: 30,
                ),

                AuthForm(),

                const SizedBox( height: 5),

                // const Text('Quên mật khẩu?', style: TextStyle(color: kTextColor)),


                const SizedBox(
                  height: 100
                ),


                const SocialLogin(),

                const Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Bạn đã có tài khoản? ', style: TextStyle(color: kTextColor)),
                    Text('Đăng nhập', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600)),
                  ],
                ),

              ],
            ),
          )
      )
    );
  }
}
