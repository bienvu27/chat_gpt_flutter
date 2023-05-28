import 'package:chat_gpt_flutter/services/api_service.dart';
import 'package:flutter/material.dart';

import '../models/models_model.dart';

class ModelProvider with ChangeNotifier {
  String currentModel = "text-davinci-003";

  String get getCurrentModel {
    return currentModel;
  }

  void setCurrentModel(String newModel) {
    currentModel = newModel;
    notifyListeners();
  }

  List<ModelsModel> modelsList = [];

  List<ModelsModel> get getModelsList {
    return modelsList;
  }

  Future<List<ModelsModel>> getAllModels() async {
    modelsList = await ApiService.getModels();
    return modelsList;
  }
}
