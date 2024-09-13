class Todo {
  String id;
  String title;
  String description;
  bool isCompleted;

  Todo(
      {required this.id,
      required this.title,
      required this.description,
      this.isCompleted = false});
}
