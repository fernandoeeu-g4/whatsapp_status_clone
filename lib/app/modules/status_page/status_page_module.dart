import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_status_clone/app/modules/status_page/status_page_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp_status_clone/app/modules/status_page/status_page_page.dart';

class StatusPageModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => StatusPageController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => StatusPagePage()),
      ];

  static Inject get to => Inject<StatusPageModule>.of();

  @override
  // TODO: implement view
  Widget get view => StatusPagePage();
}
