import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:test_ex1/resources/resources.dart';

void main() {
  test('app_icons assets test', () {
    expect(File(AppIcons.arrow).existsSync(), isTrue);
    expect(File(AppIcons.back).existsSync(), isTrue);
    expect(File(AppIcons.background).existsSync(), isTrue);
    expect(File(AppIcons.check).existsSync(), isTrue);
    expect(File(AppIcons.checkSubscribe).existsSync(), isTrue);
    expect(File(AppIcons.close).existsSync(), isTrue);
    expect(File(AppIcons.exit).existsSync(), isTrue);
    expect(File(AppIcons.eyeClosed).existsSync(), isTrue);
    expect(File(AppIcons.eyeOpen).existsSync(), isTrue);
    expect(File(AppIcons.loadingLargeDark).existsSync(), isTrue);
    expect(File(AppIcons.loadingLargeWhite).existsSync(), isTrue);
    expect(File(AppIcons.loadingMediumDark).existsSync(), isTrue);
    expect(File(AppIcons.loadingMediumWhite).existsSync(), isTrue);
    expect(File(AppIcons.myDesk).existsSync(), isTrue);
    expect(File(AppIcons.nonetwork).existsSync(), isTrue);
    expect(File(AppIcons.paperAirplane).existsSync(), isTrue);
    expect(File(AppIcons.plus).existsSync(), isTrue);
    expect(File(AppIcons.prayArms).existsSync(), isTrue);
    expect(File(AppIcons.profile).existsSync(), isTrue);
    expect(File(AppIcons.search).existsSync(), isTrue);
    expect(File(AppIcons.sketch).existsSync(), isTrue);
    expect(File(AppIcons.subscribers).existsSync(), isTrue);
    expect(File(AppIcons.trash).existsSync(), isTrue);
    expect(File(AppIcons.usersDesks).existsSync(), isTrue);
  });
}
