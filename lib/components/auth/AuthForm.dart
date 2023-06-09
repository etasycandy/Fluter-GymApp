import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

import '../../theme/color.dart';
import '../../theme/input.dart';

class AuthForm extends StatelessWidget {
  AuthForm({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: SizedBox(
          width: 320,
          child: Column(
            children: [
              TextFormField(
                decoration: kPrimaryInput.copyWith(
                    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    hintText: 'Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none
                        )
                    )
                ),
                cursorColor: kTextColor.withOpacity(0.5),
                // The validator receives the text that the user has entered.
                validator: ValidationBuilder(requiredMessage: 'Name là bắt buộc')
                    .maxLength(50, 'Tên quá dài')
                    .build(),
              ),

              const SizedBox(
                height: 15,
              ),

              TextFormField(
                decoration: kPrimaryInput.copyWith(
                    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none
                        )
                    )
                ),
                cursorColor: kTextColor.withOpacity(0.5),
                // The validator receives the text that the user has entered.
                validator: ValidationBuilder(requiredMessage: 'Email là bắt buộc')
                    .email('Email không hợp lệ')
                    .maxLength(50, 'Email quá dài')
                    .build(),
              ),

              const SizedBox(
                height: 15,
              ),

              TextFormField(
                decoration: kPrimaryInput.copyWith(
                    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none
                      ),
                    )
                ),
                obscureText: true,
                cursorColor: kTextColor.withOpacity(0.5),
                // The validator receives the text that the user has entered.
                validator: ValidationBuilder(requiredMessage: 'Mật khẩu là bắt buộc')
                    .minLength(6, 'Mật khẩu quá ngắn')
                    .build(),
              ),

              const SizedBox(
                height: 20,
              ),

              TextButton(
                  style: ElevatedButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                  ),
                  onPressed: () {
                    if(_formKey.currentState!.validate()) {
                      // success
                    }
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      color: kTextColor,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: const Center(
                        child: Text('Registration', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500)),
                      ),
                    ),
                  )
              )

            ],
          ),
        )
    );
  }
}
