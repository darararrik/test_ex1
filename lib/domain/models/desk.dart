
class DeskModel {
  const DeskModel({required this.id, required this.name});
  factory DeskModel.create() => const DeskModel(id: 0, name: "");
  final int id;
  final String name;
}
