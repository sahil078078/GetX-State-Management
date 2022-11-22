import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getx_state_managemant/22Nov22GetX/tab2_body.dart';
import 'package:getx_state_managemant/22Nov22GetX/tab3_body.dart';

import 'tab1_body.dart';

class Nov22Home extends StatelessWidget {
  const Nov22Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          backgroundColor: Colors.blueAccent,
          title: Text(
            'StateManagement',
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.white,
                ),
          ),
          centerTitle: true,
          elevation: 0.0,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Tab1',
              ),
              Tab(
                text: 'Tab2',
              ),
              Tab(
                text: 'Tab3',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            const Tab1Body(),
            const Tab2Body(),
            Tab3Body(),
          ],
        ),
      ),
    );
  }
}
