import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:republish/patterns/styles.dart';

class Suporte extends StatefulWidget {
  @override
  _SuporteState createState() => _SuporteState();
}

class _SuporteState extends State<Suporte> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height / 36),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecorations.boxPurpleDecorationGradient,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              FaIcon(
                FontAwesomeIcons.handshake, size: MediaQuery.of(context).size.width / 3, color: Pallete.white
              ),
              Text(
                "O que você gostaria de sugerir pra nós? Comente abaixo!",
                style: ThemeFonts.bigText(Pallete.white),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.center,
                  child: TextField(
                    maxLines: 8,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.center,
                    obscureText: false,
                    decoration:
                        TextFieldStyles.commomTextFormFieldDecoration('Digite aqui sua sugestão!'),
                  ),
                ),
              ThemeButtons.strongGreenButton("Enviar", () {})
            ])),
      ),
    );
  }
}
