import 'package:flutter/material.dart';
import 'package:whatsapp_status_clone/app/modules/status_page/widgets/StatusTile.dart';
import 'package:whatsapp_status_clone/util/AppColors.dart';

class StatusPagePage extends StatefulWidget {
  final String title;
  const StatusPagePage({Key key, this.title = "StatusPage"}) : super(key: key);

  @override
  _StatusPagePageState createState() => _StatusPagePageState();
}

class _StatusPagePageState extends State<StatusPagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: AppColor.primary),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[StatusTile()],
        ),
      ),
    );
  }
}
