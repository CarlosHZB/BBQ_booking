import 'package:churrasqueira/model/barbecue.dart';
import 'package:flutter/material.dart';

class BarbecueController extends ChangeNotifier {
  final List<Barbecue> barbecues = [
    Barbecue(
      label: 'Churasqueira Chevers',
    ),
    Barbecue(
      label: 'Churasqueira Lux',
    ),
    Barbecue(
      label: 'Churasqueira Chomps',
    ),
    Barbecue(
      label: 'Churasqueira Inamorata',
    ),
    Barbecue(
      label: 'Churasqueira Aeterna',
    ),
  ];



  void changeStatusBarbecue(index) {
    barbecues[index].isReserved = !barbecues[index].isReserved;
    notifyListeners();
  }
}
