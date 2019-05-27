import 'package:flutter/material.dart';

class MineWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MineWidgetState();
  }
}

class MineWidgetState extends State<MineWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.green,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.card_giftcard),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            )
          ],
          flexibleSpace: FlexibleSpaceBar(
            title: Text('data'),
          ),
          expandedHeight: 140,
          pinned: true,
          floating: true,
          snap: true,
        ),
        SliverFillRemaining(
          child: DefaultTabController(
              length: 6,
              child: Column(
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints.expand(height: 50),
                    child: TabBar(
                        unselectedLabelColor: Colors.black12,
                        labelColor: Colors.black87,
                        indicatorColor: Colors.black87,
                        tabs: <Widget>[
                          Tab(text: '讨论'),
                          Tab(text: '想看'),
                          Tab(text: '再看'),
                          Tab(text: '看过'),
                          Tab(text: '影评'),
                          Tab(text: '影人')
                        ]),
                  ),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        children: <Widget>[
                          Center(
                            child: Text('讨论'),
                          ),
                          Center(
                            child: Text('想看'),
                          ),
                          Center(
                            child: Text('再看'),
                          ),
                          Center(
                            child: Text('看过'),
                          ),
                          Center(
                            child: Text('影评'),
                          ),
                          Center(
                            child: Text('影人'),
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
}
