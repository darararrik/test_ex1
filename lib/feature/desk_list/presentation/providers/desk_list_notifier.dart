import 'package:flutter/material.dart';
import 'package:test_ex1/core/domain/models/desk_model.dart';

class DeskListNotifier extends ChangeNotifier {
  final List<DeskModel> _desks = [];
  int _nextId = 1;

  List<DeskModel> get desks => List.unmodifiable(_desks);

  void addDesk(String title) {
    _desks.add(DeskModel(id: _nextId++, title: title, tasks: []));
    notifyListeners();
  }
}
