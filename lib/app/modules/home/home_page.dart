import 'package:flutter/material.dart';
import 'package:whatsapp_status_clone/app/modules/home/home_module.dart';
import 'package:whatsapp_status_clone/app/modules/status_page/status_page_module.dart';
import 'package:whatsapp_status_clone/util/AppColors.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final List<Tab> _tabs = [
    Tab(
      text: 'CHATS',
    ),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, initialIndex: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Whatsapp",
          style: TextStyle(color: AppColor.secondary_accent),
        ),
        backgroundColor: AppColor.tabbar,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: AppColor.secondary_accent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: AppColor.secondary_accent,
            ),
          )
        ],
        bottom: TabBar(
          labelColor: AppColor.accent,
          unselectedLabelColor: AppColor.secondary_accent,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          indicatorColor: AppColor.accent,
          indicatorWeight: 4,
          controller: _tabController,
          tabs: _tabs,
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: AppColor.third_accent,
                borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: AppColor.accent,
                borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[Teste(), StatusPageModule(), Teste()],
      ),
    );
  }
}

class Teste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Text('Olá'),
    ));
  }
}
