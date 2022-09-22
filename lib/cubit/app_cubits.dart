import 'package:bloc/bloc.dart';
import 'package:cubit_practice/cubit/app_cubit_states.dart';
import 'package:cubit_practice/model/data_model.dart';
import 'package:cubit_practice/services/data_services.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits({required this.data}) : super(InitalState()){
    emit(WelcomeState());
  }

  final DataServices data;
  late final places;

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {
      print(e);
    }
  }

  void detailPage(DataModel data) async {
    try {
      emit(DetailState(data));
    } catch (e) {
      print(e);
    }
  }

  void goHome(){
    emit(LoadedState(places));
  }

}