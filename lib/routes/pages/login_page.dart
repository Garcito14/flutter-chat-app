import 'package:chat_app/widgets/boton_azul.dart';
import 'package:chat_app/widgets/custom_input.dart';
import 'package:chat_app/widgets/labels.dart';
import 'package:chat_app/widgets/logo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffF2F2F2),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Logo(
                    titulo: 'Messenger',
                  ),
                  _Form(),
                  Labels(
                    ruta: 'register',
                    cuenta: 'No tienes cuenta?',
                    ingresa: 'Crea una ahora',
                  ),
                  Text(
                    'Terminos y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          Custominput(
            icon: Icons.mail_outline,
            placeHolder: 'correo',
            tipoTeclado: TextInputType.emailAddress,
            textController: emailController,
          ),
          Custominput(
            icon: Icons.lock_outline,
            placeHolder: 'password',
            textController: passController,
            isPassword: true,
          ),
          BotonAzul(
              texto: 'ingrese',
              onPressed: () {
                print(emailController.text);
                print(passController.text);
              })
        ],
      ),
    );
  }
}
