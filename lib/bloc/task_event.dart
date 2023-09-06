part of 'task_bloc.dart';

abstract class TaskEvent extends Equatable {
  const TaskEvent();
}

class TaskSubmitted extends TaskEvent {
  final String textInput;

  const TaskSubmitted(this.textInput);

  @override
  List<Object> get props => [textInput];
}
