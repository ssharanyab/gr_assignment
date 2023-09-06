import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskInitial()) {
    on<TaskSubmitted>((event, emit) {
      emit(TaskLoading());
      emit(TaskLoaded(event.textInput));
    });
  }
}
