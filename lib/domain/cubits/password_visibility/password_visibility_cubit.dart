import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class PasswordVisibilityCubit extends Cubit<bool> {
  PasswordVisibilityCubit() : super(false);
  void toggleVisibility() {
    emit(!state);
  }
}
