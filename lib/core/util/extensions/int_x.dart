extension IntX on int {
  String resolveCountMembers() {
    return this < 100 ? toString() : '99+';
  }

  String resolveCountComplete() {
    return this < 100 ? toString() : '99+';
  }
}
