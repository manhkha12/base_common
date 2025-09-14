import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/device/module_detail/module_detail_cubit/module_detail_cubit.dart';
import 'package:smart_home/features/device/module_detail/module_detail_cubit/module_detail_state.dart';
import 'package:smart_home/features/device/module_detail/module_menu_cubit/module_menu_cubit.dart';
import 'package:smart_home/features/device/module_detail/module_menu_cubit/module_menu_state.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/models/module.dart';
import 'package:smart_home/models/sensor.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/widgets/app_layout.dart';
import 'package:smart_home/shared/widgets/app_text.dart';
import 'package:smart_home/shared/widgets/app_text_icon.dart';
import 'package:smart_home/shared/widgets/buttons/app_button.dart';
import 'package:smart_home/shared/widgets/custom_app_bar.dart';

class ModuleDetailScreen extends StatelessWidget {
  const ModuleDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'ModuleDetail',
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                icon: Assets.icons.homeMenuTab.svg(),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        elevation: 0, // bỏ bóng đổ
        backgroundColor: Colors.white, // nền trắng
        child: SafeArea(
          child: BlocBuilder<ModuleMenuCubit, ModuleMenuState>(
              builder: (context, state) {
            final module = state.module;
            final isOnline = state.isOnline;
            return Container(
              width:
                  MediaQuery.of(context).size.width * 0.8, // rộng 80% màn hình
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Bạn có thể tự thiết kế ở đây
                  const SizedBox(height: 20),
                  Center(
                    child: const Text(
                      "Thông tin module",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ModuleInfo(
                          module: module,
                        ),
                        Divider(
                          color: context.colors.divider,
                        ),
                        AppText('Cai dat chung', fontSize: 18),
                        const SizedBox(height: 15),
                        _MenuItem(
                          title: 'doi ten thiet bi',
                          onTap: () {},
                        ),
                        _MenuItem(
                          title: 'Cai dat mang',
                          actions: module.connection != null
                              ? AppTextIcon(
                                  module.connection!.ssid ?? "",
                                  icon: Assets.icons.right.path,
                                  isReverse: true,
                                  iconColor: Colors.grey,
                                  iconSize: 14,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )
                              : null,
                          onTap: isOnline ? () {} : null,
                        ),
                        _MenuItem(
                          title: 'Bat thong bao',
                          actions: Transform.scale(
                            scale: 0.8,
                            child: Switch.adaptive(
                              value: true,
                              onChanged: (_) {},
                            ),
                          ),
                          onTap: () {},
                        ),
                        _MenuItem(
                          title: 'chia se thiet bi',
                          onTap: () {},
                        ),
                        _MenuItem(
                          title: 'Cap nhat phan mem',
                          onTap: isOnline ? () {} : null,
                        ),
                        _MenuItem(
                          title: 'Khoi dong lai thiet bi',
                          // onTap: isOnline
                          //     ? () {
                          //         context.read<ModuleMenuCubit>().restart();
                          //       }
                          //     : null,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: AppButton.outline(
                            label: 'Xoa thiet bi',
                            primaryColor: Colors.red,
                            // onPressed: isOnline
                            //     ? () {
                            //         context.read<ModuleMenuCubit>().reset();
                            //       }
                            //     : null,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BlocBuilder<ModuleDetailCubit, ModuleDetailState>(
            builder: (context, state) {
          final listSensor = state.sensors;
          if (listSensor!.isEmpty) {
            return Center(
              child: AppText('Khong co cam bien nao duoc cau hinh tren module',
                  fontSize: 16),
            );
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                'Danh sach thiet bi hien dang ket noi',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              Divider(color: context.colors.divider),
              SizedBox(height: 10),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return SensorInfor(sensor: listSensor[index]);
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  itemCount: listSensor.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}

class SensorInfor extends StatelessWidget {
  final Sensor sensor;
  const SensorInfor({super.key, required this.sensor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.primaryBackground,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppText(
            sensor.type,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            width: 50,
            height: 50,
            child: Assets.icons.chip.svg(),
          ),
        ],
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final Widget? actions;

  const _MenuItem({
    required this.title,
    this.onTap,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: Row(
              children: [
                const SizedBox(width: 8),
                Expanded(
                  child: AppText(
                    title,
                    fontSize: 16,
                    color: onTap != null
                        ? context.colors.textPrimary
                        : context.colors.textDisabled,
                  ),
                ),
                actions ??
                    Assets.icons.right.svg(
                      width: 15,
                      height: 15,
                      color: Colors.grey,
                    ),
              ],
            ),
          ),
          Divider(color: context.colors.divider),
        ],
      ),
    );
  }
}

class ModuleInfo extends StatelessWidget {
  final Module module;
  const ModuleInfo({super.key, required this.module});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Assets.icons.chip.svg(),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText('Chip ID: ${module.chipId}', fontSize: 16),
              AppText('Firmware: ${module.firmwareVersion}', fontSize: 16),
              AppText('MAC: ${module.macAddress}', fontSize: 16),
            ],
          )
        ],
      ),
    );
  }
}
