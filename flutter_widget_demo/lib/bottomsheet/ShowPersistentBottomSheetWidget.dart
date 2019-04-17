import 'package:flutter/material.dart';

main() => runApp(new ShowPersistentBottomSheetWidget());

class ShowPersistentBottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Test',
      home: new Scaffold(
          appBar:
              new AppBar(title: new Text('Flutter UI Widget -- BottomSheet')),
          body: Builder(
            builder: (context) {
              return RaisedButton(
                onPressed: () {
                  showBottomSheet(
                      context: context,
                      builder: (context) => BottomSheet(
                          onClosing: () {},
                          builder: (context) => Container(
                                height: 200.0,
                                color: Colors.blue,
                                child: Center(
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('dismissBottomSheet'),
                                  ),
                                ),
                              )));
                },
                child: Text('showBottomSheet'),
              );
            },
          )),
    );
  }
}
