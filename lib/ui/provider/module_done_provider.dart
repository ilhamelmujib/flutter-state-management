import 'package:flutter/foundation.dart';

class ModuleDoneProvider extends ChangeNotifier {
  final List<String> _moduleListDone = [];

  List<String> get moduleListDone => _moduleListDone;

  void complete(String moduleName) {
    _moduleListDone.add(moduleName);
    notifyListeners();
  }
}
