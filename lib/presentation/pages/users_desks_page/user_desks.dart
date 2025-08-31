import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserDesks extends StatefulWidget {
  const UserDesks({super.key, required this.titleAB, required this.deskId});
  final String titleAB;
  final int deskId;
  @override
  State<UserDesks> createState() => _UserDesksState();
}

class _UserDesksState extends State<UserDesks> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
