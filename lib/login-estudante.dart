import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:republish/estudante/inicial-estudante.dart';
import 'package:republish/patterns/styles.dart';
import 'controller/navigator.dart';

class LoginEstudante extends StatefulWidget {
  @override
  _LoginEstudanteState createState() => _LoginEstudanteState();
}

class _LoginEstudanteState extends State<LoginEstudante> {
  bool _passwordVisible = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    imageCache.clear();
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Container(
          decoration: BoxDecorations.boxPurpleDecorationGradient,
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 6),
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
                    ThemeButtons.customColorAndIconButton('Entrar com Facebook',
                        Colors.blue, FontAwesomeIcons.facebook, () {}),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 80,
                    ),
                    ThemeButtons.customColorAndIconButton('Entrar com Google',
                        Colors.red, FontAwesomeIcons.google, () {})
                  ],
                ),
                Spacing.height40(),
                Blocks.dividerWithText('OU'),
                Spacing.height40(),
                TextFields.commomTextField('E-mail'),
                Spacing.height40(),
                TextFields.commomObscureField('Senha', _passwordVisible, () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                }),
                Spacing.height40(),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: ThemeButtons.strongGreenButton("Login", () {
                    Navigate.push(InicialEstudante(), context);
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
