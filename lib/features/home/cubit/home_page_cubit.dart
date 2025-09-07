import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/home/cubit/home_page_state.dart';
import 'package:smart_home/models/app_error.dart';
import 'package:smart_home/models/module.dart';
import 'package:smart_home/repository/module_repository.dart';
import 'package:smart_home/shared/cubits/app_cubit/app_cubit.dart';

class HomePageCubit extends Cubit<HomePageState> {
  final ModuleRespository moduleRespository;
  final AppCubit appCubit;
  HomePageCubit({
    required this.moduleRespository,
    required this.appCubit,
  }) : super(HomePageState()) {
    emit(
      state.copyWith(
        homeId: appCubit.state.maybeWhen(
          authorized: (user) => user.houseId,
          orElse: () => null,
        ),
      ),
    );
    loadWeatherForecast();
  }
  void setName(String name) {
    emit(state.copyWith(name: name));
  }

  void setImage(String image) {
    emit(state.copyWith(image: image));
  }

  void setModule(Module module) {
    emit(state.copyWith(module: module));
  }

  Future<void> addRoom() async {
    try {
      emit(state.copyWith(isLoading: true));
      final params = state.toParms();
      await moduleRespository.addRoom(
        params,
      );
      
      emit(state.copyWith(isLoading: false, isSuccess: true));
    } catch (e) {
      emit(
          state.copyWith(isLoading: false, error: AppError.data(e.toString())));
    }
  }
  
  Future<void> loadRooms() async {
    try {
      emit(state.copyWith(isLoading: true, isSuccess: false));
      
      final rooms = await moduleRespository.getRooms(state.homeId!);
      print('Loaded rooms: $rooms');
      emit(state.copyWith(isLoading: false, rooms: rooms,isSuccess: true));
    } catch (e) {
      emit(
          state.copyWith(isLoading: false, error: AppError.data(e.toString())));
    }
  }

  Future<void> getImage() async {
    try {
      emit(state.copyWith(isLoading: true, isSuccess: false));
      final image = await moduleRespository.getImage();
      emit(state.copyWith(isLoading: false, images: image));
    } catch (e) {
      emit(
          state.copyWith(isLoading: false, error: AppError.data(e.toString())));
    }
  }

  void loadWeatherForecast() async {
    emit(state.copyWith(isLoading: true));
    try {
      final weatherData = await moduleRespository.getWeatherForecast();
      emit(state.copyWith(isLoading: false, weatherForecast: weatherData));
    } catch (e) {
      emit(
          state.copyWith(isLoading: false, error: AppError.data(e.toString())));
    }
  }
}
