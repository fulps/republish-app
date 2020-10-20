import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:republish/patterns/styles.dart';

class Verificacao extends StatefulWidget {
  @override
  _VerificacaoState createState() => _VerificacaoState();
}

class _VerificacaoState extends State<Verificacao> {
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Blocks.bigIcon(Icons.filter_none, Pallete.strongPurple),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 8),
              child: Text(
                "Vamos precisar de uma foto da sua identidade",
                style: ThemeFonts.bigText(Pallete.white),
              ),
            ),
            Container(
              decoration: BoxDecorations.allRounded(Pallete.darkAmber),
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 8),
              alignment: Alignment.center,
              child: CustomIcons.customIconButton(
                  FontAwesomeIcons.camera, Pallete.white, () {}),
            )
          ]),
        ),
      ),
    );
  }
}
