class ToDo {
  String label;
  String task;

  ToDo(this.label, this.task);

  @override
  String toString() => '$label (task: $task)';
}
