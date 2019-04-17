import 'package:flutter/material.dart';

void main() => runApp(ShowAboutDialogWidget());

class ShowAboutDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter UI Widget -- 对话框")),
          body: Builder(
              builder: (context) => RaisedButton(
                  onPressed: () {
                    showAboutDialog(
                        context: context,
                        applicationName: 'Flutter UI Widget -- 对话框',
                        applicationVersion: '1.0.0');
                  },
                  child: Text('RaisedButton')))),
    );
  }
}
