import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_home/features/device/module_page/module_cubit/module_cubit.dart';
import 'package:smart_home/features/home/component/add_room.dart';
import 'package:smart_home/features/home/cubit/home_page_cubit.dart';
import 'package:smart_home/features/home/cubit/home_page_state.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/models/room.dart';
import 'package:smart_home/models/weather_forecast.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ModuleCubit get moduleCubit => context.read<ModuleCubit>();
  @override
  void initState() {
    super.initState();
    context.read<HomePageCubit>().loadRooms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Assets.icons.homeMenuTab.svg(height: 30, width: 30),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: context.colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                AppText('Hello User',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: context.colors.textPrimary),
                const SizedBox(width: 8),
                SizedBox(
                    height: 40,
                    width: 40,
                    child: Lottie.asset(Assets.images.handWave))
              ],
            ),
            AppText('Welcome Home',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: context.colors.textSecondary),
            const SizedBox(height: 20),
            WeatherTemplate(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText('Your Rooms',
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: context.colors.textPrimary),
                InkWell(
                    onTap: () {
                      final homeCubit =
                          context.read<HomePageCubit>(); // lấy cubit cha

                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) {
                          return MultiBlocProvider(
                              providers: [
                                BlocProvider.value(value: homeCubit),
                                BlocProvider.value(value: moduleCubit),
                              ],
                              child: AddRoom(
                                modules: moduleCubit.state.modules,
                              ));
                        },
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                          color: context.colors.weatherBackground
                              .withValues(alpha: 0.5),
                          borderRadius: BorderRadius.circular(15)),
                      child: AppText('Add',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: context.colors.blue),
                    )),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: BlocSelector<HomePageCubit, HomePageState, List<Room>>(
                selector: (state) => state.rooms,
                builder: (context, rooms) {
                  if (rooms.isEmpty) {
                    return const Center(child: Text("No rooms yet"));
                  }
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1 / 1.2 ,
                    ),
                    itemCount: rooms.length,
                    itemBuilder: (context, index) =>
                        ListRooms(room: rooms[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListRooms extends StatelessWidget {
  final Room room;
  const ListRooms({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.divider),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius:
            const BorderRadiusDirectional.vertical(top: Radius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: room.background ?? "",
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Center(
                  child: AppText(
                    room.name,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(left: 8.0, bottom: 10.0),
            //   child: Center(
            //     child: AppText(
            //       "${room.} VNĐ", // Hiển thị giá
            //       fontSize: 14,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class WeatherTemplate extends StatefulWidget {
  const WeatherTemplate({super.key});

  @override
  State<WeatherTemplate> createState() => _WeatherTemplateState();
}

class _WeatherTemplateState extends State<WeatherTemplate> {
  // @override
  // void initState() {
  //   super.initState();
  //   context.read<HomePageCubit>().loadWeatherForecast();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        final weatherForecast = state.weatherForecast;
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (weatherForecast == null) {
          return const Center(child: Text("No weather data"));
        }

        return Container(
            height: 140,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: context.colors.dimGrey),
              color: context.colors.weatherBackground,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 78,
                    child: Image.network(
                      "https://openweathermap.org/img/wn/${weatherForecast.icon}@2x.png",
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(weatherForecast.weather, fontSize: 17),
                      AppText(weatherForecast.city, fontSize: 19)
                    ],
                  ),
                  SizedBox(width: 20),
                  AppText(
                    "${weatherForecast.temperature.toStringAsFixed(0)}°",
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      AppText(
                        "${weatherForecast.feelLike.toStringAsFixed(0)}°C",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: context.colors.textPrimary,
                      ),
                      AppText(
                        "Sensible",
                        fontSize: 12,
                        color: context.colors.textSecondary,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      AppText(
                        "${weatherForecast.precipitation}%",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: context.colors.textPrimary,
                      ),
                      AppText(
                        "Precipitation",
                        fontSize: 12,
                        color: context.colors.textSecondary,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      AppText(
                        "${weatherForecast.humidity}%",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: context.colors.textPrimary,
                      ),
                      AppText(
                        "Humidity",
                        fontSize: 12,
                        color: context.colors.textSecondary,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      AppText(
                        "${weatherForecast.windSpeed} km/h",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: context.colors.textPrimary,
                      ),
                      AppText(
                        "Wind",
                        fontSize: 12,
                        color: context.colors.textSecondary,
                      ),
                    ],
                  ),
                ],
              )
            ]));
      },
    );
  }
}
