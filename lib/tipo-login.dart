import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:republish/controller/navigator.dart';
import 'package:republish/estudante/cadastro-estudante.dart';
import 'package:republish/login-estudante.dart';
import 'package:republish/patterns/styles.dart';

class TipoLogin extends StatefulWidget {
  final bool isCadastroOrLogin;
  TipoLogin({@required this.isCadastroOrLogin});
  @override
  _TipoLoginState createState() => _TipoLoginState();
}

class _TipoLoginState extends State<TipoLogin> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecorations.boxPurpleDecorationGradient,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 8),
                child: Text(
                  widget.isCadastroOrLogin
                      ? "Você gostaria de cadastrar uma conta como:"
                      : "Você gostaria de entrar como:",
                  style: ThemeFonts.bigText(Pallete.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ThemeButtons.reallyBIGButton(() {
                    Navigate.push(
                        widget.isCadastroOrLogin
                            ? CadastroEstudante()
                            : LoginEstudante(),
                        context);
                  }, FontAwesomeIcons.userAlt, 'Estudante', Pallete.darkAmber),
                  ThemeButtons.reallyBIGButton(() {}, FontAwesomeIcons.home,
                      'República', Pallete.lightGreen)
                ],
              ),
            ])),
      ),
    );
  }
}
