import 'package:churrasqueira/model/barbecue.dart';
import 'package:flutter/material.dart';

class BarbecueController extends ChangeNotifier {
  final List<Barbecue> barbecues = [
    Barbecue(
      label: 'Churasqueira do banana',
    ),
    Barbecue(
      label: 'Churasqueira do Manuel',
    ),
    Barbecue(
      label: 'Churasqueira do João',
    ),
    Barbecue(
      label: 'Churasqueira do Carlos',
    ),
  ];

  void changeStatusBarbecue(index) {
    barbecues[index].isReserved = !barbecues[index].isReserved;
    notifyListeners();
  }
}
