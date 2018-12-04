import 'package:advent5_wrap/widget/char_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'Wrap';
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: appTitle,
        theme: ThemeData(
          primaryColor: Colors.red,
          accentColor: Colors.white,
          scaffoldBackgroundColor: Colors.black,
        ),
        home: MainPage(appTitle: appTitle),
      );
}

class MainPage extends StatelessWidget {
  final String appTitle;

  const MainPage({this.appTitle});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Center(
          child: Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: 'WE❤FLUTTER'
                .split('')
                .map(
                  (char) => CharWidget(
                        char: char,
                      ),
                )
                .toList(),
          ),
        ),
      );
}
