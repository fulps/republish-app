import 'package:flutter/material.dart';
import 'package:republish/controller/navigator.dart';
import 'package:republish/tipo-login.dart';
import 'package:republish/patterns/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REPUBLISH',
      theme: ThemeData(
        primaryColor: Colors.purple[100],
        accentColor: Colors.green[300],
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'REPUBLISH'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double queryWidthTwo = MediaQuery.of(context).size.width / 2;
    final double queryHeigthFour = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Republish',
              style: ThemeFonts.titleStyle,
            ),
            Container(
              height: queryHeigthFour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: queryWidthTwo,
                    child: ThemeButtons.strongGreenButton("Entrar", () {
                      Navigate.push(TipoLogin(isCadastroOrLogin: false,), context);
                    }),
                  ),
                  Container(
                    width: queryWidthTwo,
                    child: ThemeButtons.strongGreenButton("Cadastre-se", () {
                      Navigate.push(TipoLogin(isCadastroOrLogin: true,), context); 
                    }),
                  ) 
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
