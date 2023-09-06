import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:gr_assignment/bloc/task_bloc.dart';
import 'package:gr_assignment/controller.dart';

class NewTask extends StatefulWidget {
  const NewTask({Key? key}) : super(key: key);

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  TaskBloc taskBloc = TaskBloc();

  TextEditingController _controller = TextEditingController();
  NewTaskController newTaskController = NewTaskController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => taskBloc,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('New Task'),
          ),
          body: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Task Name',
                ),
                onSubmitted: (value) {
                  taskBloc.add(TaskSubmitted(value));
                },
              ),
              BlocBuilder<TaskBloc, TaskState>(
                builder: (context, state) {
                  if (state is TaskLoaded) {
                    return Text(state.textInput);
                  }
                  return Text('Enter Text');
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Task Name',
                ),
                onSubmitted: (value) {
                  newTaskController.updateTextInput(value);
                },
              ),
              Obx(() => Text(newTaskController.textInput.value)),
            ],
          )),
    );
  }
}
