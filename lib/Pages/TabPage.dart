import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switch_up/Pages/InicioPage.dart';
import 'package:switch_up/Pages/ItemPage.dart';
import 'package:switch_up/Pages/SearchPage.dart';
import 'package:switch_up/Pages/SwicthPage.dart';

class TabPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new TabPageState();
    // TODO: implement createState


}

class TabPageState extends  State<TabPage> with SingleTickerProviderStateMixin{
  late TabController tabController;
  List<Tab>myTabs=<Tab>[
    new Tab(icon: Icon(Icons.home),text: 'Inicio'),
    new Tab(icon: Icon(Icons.view_in_ar_sharp),text: 'Item'),
    new Tab(icon: Icon(Icons.wifi_protected_setup),text: 'Switch'),
    new Tab(icon: Icon(Icons.search),text: 'Buscar'),
  ];


  @override
  void initState() {
    tabController = new TabController(length: myTabs.length, vsync: this);
    tabController.addListener(() {
      setState(() {
        print("index ${tabController.index}");
      });
    });
  }


  @override
  void dispose() {
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Switch-Up"),
        bottom: new TabBar(tabs: myTabs, controller: tabController),
      ),
      body: new TabBarView(children: [
            new InicioPage(),
            new ItemPage(),
            new SwitchPage(),
            new SearchPage()
      ],
      controller: tabController,),
    );
  }
  
}