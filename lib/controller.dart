import 'package:get/get.dart';

class NewTaskController extends GetxController {
  final isLoading = false.obs;
  var textInput = ''.obs;

  void updateTextInput(String value) {
    textInput.value = value;
  }

  void submitTask() {
    isLoading(true);
    isLoading(false);
  }
}
