class Task {
  final String id;
  final String name;
  final bool isCompleted;

  Task({
    required this.id,
    required this.name,
    required this.isCompleted,
  });

  Task copyWith({
    String? id,
    String? name,
    bool? isCompleted,
  }) {
    return Task(
      id: id ?? this.id,
      name: name ?? this.name,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}




