import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:republish/controller/navigator.dart';
import 'package:republish/patterns/styles.dart';
import 'package:republish/verificacao.dart';

class CadastroEstudante extends StatefulWidget {
  @override
  _CadastroEstudanteState createState() => _CadastroEstudanteState();
}

class _CadastroEstudanteState extends State<CadastroEstudante> {
  bool _passwordVisible = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    imageCache.clear();
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            decoration: BoxDecorations.boxPurpleDecorationGradient,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 6,
                  vertical: MediaQuery.of(context).size.height / 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: FaIcon(FontAwesomeIcons.hotel,
                          color: Pallete.lightPurple,
                          size: MediaQuery.of(context).size.height / 8)),
                  Spacing.height16(),
                  Column(
                    children: [
                      ThemeButtons.customColorAndIconButton(
                          'Entrar com Facebook',
                          Pallete.blue,
                          FontAwesomeIcons.facebook,
                          () {}),
                      Spacing.height40(),
                      ThemeButtons.customColorAndIconButton('Entrar com Google',
                          Colors.red, FontAwesomeIcons.google, () {})
                    ],
                  ),
                  Spacing.height40(),
                  Blocks.dividerWithText('OU'),
                  Spacing.height40(),
                  TextFields.commomTextField('Nome'),
                  Spacing.height40(),
                  TextFields.commomTextField('Idade'),
                  Spacing.height40(),
                  TextFields.commomTextField('Sexo'),
                  Spacing.height40(),
                  TextFields.commomTextField('RG'),
                  Spacing.height40(),
                  TextFields.commomTextField('CPF'),
                  Spacing.height40(),
                  TextFields.commomTextField('CEP da faculdade'),
                  Spacing.height40(),
                  TextFields.commomTextField('E-mail'),
                  Spacing.height40(),
                  TextFields.commomObscureField('Senha', _passwordVisible, () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  }),
                  Spacing.height40(),
                  TextFields.commomObscureField(
                      'Confirmar senha', _passwordVisible, () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  }),
                  Spacing.height40(),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ThemeButtons.strongGreenButton("Cadastrar", () {
                      Navigate.push(Verificacao(), context);
                    }),
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
