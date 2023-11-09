import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class RegisterConfirm extends StatelessWidget {
  const RegisterConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PsyMetrica"),
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 150.0, horizontal: 20.0),
          child: Card(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Проверьте почту, мы прислали вам код для подтверждения регистрации. Введите его в поле ниже",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Form(
                    child: Column(
                      children: [
                        VerificationCode(
                          textStyle:
                              TextStyle(fontSize: 20.0, color: Colors.red[900]),
                          keyboardType: TextInputType.number,
                          underlineColor: Colors.amber,
                          length: 4,
                          fullBorder: true,
                          cursorColor: Colors.blue,
                          onCompleted: (String value) {},
                          onEditing: (bool value) {},
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Theme.of(context).primaryColor,
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Продолжить",
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
