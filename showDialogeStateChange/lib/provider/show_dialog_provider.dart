import 'package:flutter/material.dart';
import '../model/dialog_model.dart';

class ShowDialogProvider extends ChangeNotifier {
  DialogModel _dialogModel = DialogModel();

  DialogModel get dialogModel => _dialogModel;

  change(value) {
    dialogModel.text = value;
    notifyListeners();
  }
}
