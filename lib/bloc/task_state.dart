part of 'task_bloc.dart';

abstract class TaskState extends Equatable {
  const TaskState();
}

class TaskInitial extends TaskState {
  @override
  List<Object> get props => [];
}

class TaskLoading extends TaskState {
  @override
  List<Object> get props => [];
}

class TaskLoaded extends TaskState {
  final String textInput;

  const TaskLoaded(this.textInput);
  @override
  List<Object> get props => [textInput];
}

class TaskError extends TaskState {
  final String message;

  const TaskError(this.message);
  @override
  List<Object> get props => [message];
}
