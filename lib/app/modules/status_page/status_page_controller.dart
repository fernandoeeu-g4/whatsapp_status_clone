import 'package:mobx/mobx.dart';

part 'status_page_controller.g.dart';

class StatusPageController = _StatusPageBase with _$StatusPageController;

abstract class _StatusPageBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
