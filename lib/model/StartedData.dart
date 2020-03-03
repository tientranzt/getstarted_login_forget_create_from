import 'package:getstarted/model/StartedModel.dart';

class StartedData {
  List<StartedModel> _getStartedData = [
    StartedModel(
        title: "Multi-lingugal",
        description: "Choose your state to view all details in you own language"),
    StartedModel(
        title: "Broswer Product",
        description:
        "Choose your state to view all details in you own language"),
    StartedModel(
        title: "Check IME",
        description:
        "Choose your state to view all details in you own language"),
  ];

  List<StartedModel> get getStartedDate => _getStartedData;
}
