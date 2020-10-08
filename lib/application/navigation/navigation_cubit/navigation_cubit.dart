import 'package:flutter_dddbf/application/navigation/navigation_cubit/navigation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.initial());

  void changeNavigator({ENavigator navigator}) async {
    emit(state.copyWith(navigator: navigator));
  }

  void hideNavBar() async {
    emit(state.copyWith(visible: false));
  }

  void showNavBar() async {
    emit(state.copyWith(visible: true));
  }
}
