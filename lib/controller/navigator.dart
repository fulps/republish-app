import 'package:flutter/material.dart';

class Navigate {
  static push(Widget w, BuildContext context) {
    Navigator.push(context, MyCustomRoute(builder: (context) => w));
  }

  static pushReplace(Widget w, BuildContext context) {
    Navigator.pushReplacement(context, MyCustomRoute(builder: (context) => w));
  }

  static pop(BuildContext context) {
    Navigator.pop(context);
  }
}

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  // criando meu próprio page route pra não ter animação de transição
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return new FadeTransition(opacity: animation, child: child);
  }
}
