import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:whatsapp_status_clone/app/modules/status_page/status_page_controller.dart';
import 'package:whatsapp_status_clone/app/modules/status_page/status_page_module.dart';

void main() {
  initModule(StatusPageModule());
  StatusPageController statuspage;

  setUp(() {
    statuspage = StatusPageModule.to.get<StatusPageController>();
  });

  group('StatusPageController Test', () {
    test("First Test", () {
      expect(statuspage, isInstanceOf<StatusPageController>());
    });

    test("Set Value", () {
      expect(statuspage.value, equals(0));
      statuspage.increment();
      expect(statuspage.value, equals(1));
    });
  });
}
