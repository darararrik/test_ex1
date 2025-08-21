import 'package:flutter/material.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.isEnabled,
    required this.onPressed,
    required this.text,
  });
  final bool isEnabled;
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      child: Center(child: Text(text)),
    );
  }
}
