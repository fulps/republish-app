import 'package:flutter/material.dart';
import 'package:republish/patterns/styles.dart';
import '../drawer.dart';

class ChatEstudante extends StatefulWidget {
  @override
  _ChatEstudanteState createState() => _ChatEstudanteState();
}

class _ChatEstudanteState extends State<ChatEstudante> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        bottomSheet: Container(
          color: Pallete.strongPurple,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 10,
          alignment: Alignment.center,
          child: TextField(
            key: _formKey,
            style: TextStyle(color: Colors.black, fontSize: 18),
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.center,
            obscureText: false,
            decoration: TextFieldStyles.textFormFieldDecorationWithIconButton(
                'Digite...', Icons.send, () {}),
          ),
        ),
        appBar: AppBar(
            iconTheme: IconThemeData(color: Pallete.white),
            flexibleSpace: Container(
              decoration: new BoxDecoration(
                  gradient: new LinearGradient( 
                      colors: [
                        Pallete.strongPurple,
                        Pallete.lightPurple,
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp)),
            ),
            // actions: [
            //   ThemeButtons.customColorButton(
            //       'Perfil', Pallete.strongPurple, () {}),
            // ],
            title: new Text(
              'FULANO DA SILVA',
              style: ThemeFonts.bigText(Pallete.white),
            )),
        drawer: new MyDrawer(),
        body: Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height / 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecorations.boxPurpleDecorationGradient,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Blocks.chatBubble("AAAAAAAAAAA PINTÃO", true),
                  Blocks.chatBubble("AAAAAAAAAAA PINTÃO", true),
                  Blocks.chatBubble("AAAAAAAAAAA PINTÃO", true),
                  Blocks.chatBubble("AAAAAAAAAAA PINTÃO", true),
                  Blocks.chatBubble("AAAAAAAAAAA PINTÃO", false),
                  Blocks.chatBubble("AAAAAAAAAAA PINTÃO", true),
                  Blocks.chatBubble("AAAAAAAAAAA PINTÃO", true),
                  Blocks.chatBubble("AAAAAAAAAAA PINTÃO", false),
                ],
              ),
            )));
  }
}
