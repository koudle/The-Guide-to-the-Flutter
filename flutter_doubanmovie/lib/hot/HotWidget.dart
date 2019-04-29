import 'package:flutter/material.dart';
import 'package:flutter_doubanmovie/hot/hotlist/HotMoviesListWidget.dart';

class HotWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HotWidgetState();
  }
}

class HotWidgetState extends State<HotWidget> {
  String curCity = '深圳';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 80,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: <Widget>[
              GestureDetector(
                child: Text(
                  curCity,
                  style: TextStyle(fontSize: 16),
                ),
                onTap: (){
                  _jumpToCitysWidget();
                },
              ),
              Icon(Icons.arrow_drop_down),
              Expanded(
                flex: 1,
                child: TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                      hintText: '\uE8b6 电影 / 电视剧 / 影人',
                      hintStyle:
                          TextStyle(fontFamily: 'MaterialIcons', fontSize: 16),
                      contentPadding: EdgeInsets.only(top: 8, bottom: 8),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      filled: true,
                      fillColor: Colors.black12),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: DefaultTabController(
              length: 2,
              child: Column(
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints.expand(height: 50),
                    child: TabBar(
                        unselectedLabelColor: Colors.black12,
                        labelColor: Colors.black87,
                        indicatorColor: Colors.black87,
                        tabs: <Widget>[Tab(text: '正在热映'), Tab(text: '即将上映')]),
                  ),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        physics: ClampingScrollPhysics(),
                        children: <Widget>[
                          HotMoviesListWidget(curCity),
                          Center(
                            child: Text('即将上映'),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }

  void _jumpToCitysWidget() async{
    var selectCity = await Navigator.pushNamed(context, '/Citys',arguments: curCity);
    if(selectCity == null) return;
    setState(() {
      curCity =  selectCity;
    });
  }
}
