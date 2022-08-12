import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Widget createEmailInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Usuario o Correo Electrónico'),
        obscureText: true,
      ),
    );
  }

  Widget createPasswordInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Contraseña'),
        obscureText: true,
      ),
    );
  }

  Widget createLoginButton() {
    return Container(
        padding: const EdgeInsets.only(top: 32),
        child: RaisedButton(
          child: Text('Entrar'),
          color: Colors.black,
          onPressed: () {},
        ));
  }

  Widget createLoginDivisor() {
    return Container(
        padding: const EdgeInsets.only(top: 32),
        child: Row(children: [
          Expanded(child: Divider(height: 1)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text('TM'),
          ),
          Expanded(
              child: Divider(
            height: 1,
          ))
        ]));
  }

  Widget createLinkAccount() {
    return Container(
      padding: EdgeInsets.only(top: 24),
      child: Text(
        'Crea tu cuenta aqui!',
        textAlign: TextAlign.right,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(color: Color.fromARGB(255, 233, 94, 14)),
        child: ListView(children: [
          Image.asset(
            'assets/images/nob3.png',
            width: 540,
          ),
          createEmailInput(),
          createPasswordInput(),
          createLoginButton(),
          createLinkAccount(),
          createLoginDivisor(),
        ]),
      ),
    );
  }
}
