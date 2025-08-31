class ColumnModel {
  const ColumnModel({
    required this.id,
    required this.title,
    this.description,
    required this.userId,
  });
  final int userId;

  final String? description;

  final int id;

  final String title;
}
