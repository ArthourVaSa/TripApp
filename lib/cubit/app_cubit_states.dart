import 'package:cubit_practice/model/data_model.dart';
import 'package:equatable/equatable.dart';

abstract class CubitStates extends Equatable {}

class InitalState extends CubitStates {
  late int x;

  @override
  // TODO: implement props
  List<Object> get props => [];

}

class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class LoadingState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class LoadedState extends CubitStates {

  LoadedState(this.places);

  final List<DataModel> places;

  @override
  // TODO: implement props
  List<Object> get props => [places];

}