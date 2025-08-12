import 'package:flutter/material.dart';

import 'package:test_ex1/core/domain/models/models.dart';

abstract interface class IDesksList extends ChangeNotifier {
  void setCurrentDesk(int deskId);
  List<DeskModel> get desks;
  DeskModel get currentDesk;
}
