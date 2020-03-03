import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:whatsapp_status_clone/app/modules/status_page/status_page_page.dart';

main() {
  testWidgets('StatusPagePage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(StatusPagePage(title: 'StatusPage')));
    final titleFinder = find.text('StatusPage');
    expect(titleFinder, findsOneWidget);
  });
}
