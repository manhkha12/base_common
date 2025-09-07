import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/device/module_page/module_item.dart';
import 'package:smart_home/features/home/cubit/home_page_cubit.dart';
import 'package:smart_home/features/home/cubit/home_page_state.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/models/module.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/widgets/app_layout.dart';
import 'package:smart_home/shared/widgets/app_text.dart';
import 'package:smart_home/shared/widgets/app_text_form_field.dart';
import 'package:smart_home/shared/widgets/simple_toastification.dart';

class AddRoom extends StatefulWidget {
  final List<Module> modules;
  const AddRoom({super.key, required this.modules});

  @override
  State<AddRoom> createState() => _AddRoomState();
}

class _AddRoomState extends State<AddRoom> {
  final PageController _imagePageController =
      PageController(viewportFraction: 0.7);
  final PageController _modulePageController =
      PageController(viewportFraction: 0.7);
  double _currentImagePage = 0;
  double _currentModulePage = 0;
  bool _isLoadingBoxes = true;
  int? selectedIndex;
  int? selectedModuleIndex;
  @override
  void initState() {
    super.initState();
    context.read<HomePageCubit>().getImage();
    Future.delayed(Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          _isLoadingBoxes = false;
        });
      }
    });
    _imagePageController.addListener(() {
      setState(() {
        _currentImagePage = _imagePageController.page!;
      });
    });

    _modulePageController.addListener(() {
      setState(() {
        _currentModulePage = _modulePageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomePageCubit, HomePageState>(
      listenWhen: (prev, curr) => prev.isSuccess != curr.isSuccess,
      listener: (context, state) {
        if (state.isSuccess) {
          Navigator.pop(context, );
          showSuccessToast('Add Room Successfully');
        }
      },
      child: AppLayout(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  color: context.colors.divider,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: context.colors.dimGrey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Assets.icons.iconBack.svg(),
                          ),
                        ),
                        const SizedBox(width: 40),
                        Column(
                          children: [
                            AppText('Create Room',
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: context.colors.textPrimary),
                            SizedBox(height: 5),
                            Container(
                              width: 55,
                              height: 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: context.colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    AppText(
                      'Design your perfect smart space',
                      fontSize: 16,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: context.colors.weatherBackground,
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(color: context.colors.black)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        'Room Name',
                        fontSize: 15,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      AppTextFormField(
                        hintText: 'Enter your room name',
                        enableBorder: false,
                        borderRadius: BorderRadius.circular(5),
                        onChanged: (value) {
                          context.read<HomePageCubit>().setName(value);
                        },
                        fillColor: context.colors.divider,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 160,
                  width: context.width,
                  decoration: BoxDecoration(
                      color: context.colors.weatherBackground,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: context.colors.black)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText('Choose Image'),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        height: 1,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      BlocBuilder<HomePageCubit, HomePageState>(
                          builder: (context, state) {
                        if (_isLoadingBoxes) {
                          return Center(
                              child: CircularProgressIndicator(
                            color: context.colors.onlineColor,
                          ));
                        }
                        if (state.isLoading && state.images.isEmpty) {
                          return Center(
                              child: CircularProgressIndicator(
                            color: context.colors.onlineColor,
                          ));
                        }
                        if (state.images.isEmpty) {
                          return Center(child: Text("Không có sản phẩm nào!"));
                        }
                        return Container(
                          height: 80,
                          child: PageView.builder(
                            controller: _imagePageController,
                            itemCount: state.images.length,
                            itemBuilder: (context, index) {
                              double scale = 1.0;
                              double difference =
                                  (_currentImagePage - index).abs();
                              if (difference > 0) {
                                scale = 1 - (difference * 0.2);
                              }

                              return Transform.scale(
                                scale: scale,
                                child: ImageItem(
                                  image: state.images[index]['url'],
                                  isSelected: selectedIndex == index,
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                    context.read<HomePageCubit>().setImage(
                                        state.images[selectedIndex!]['url']);
                                  },
                                ),
                              );
                            },
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 190,
                  decoration: BoxDecoration(
                      border: Border.all(color: context.colors.black),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText('Choose Module'),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        height: 1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 130,
                          child: _isLoadingBoxes
                              ? Center(
                                  child: CircularProgressIndicator(
                                  color: context.colors.onlineColor,
                                ))
                              : SizedBox(
                                  height: 130,
                                  child: PageView.builder(
                                    controller: _modulePageController,
                                    itemCount: widget.modules.length,
                                    itemBuilder: (context, index) {
                                      double scale = 1.0;
                                      double difference =
                                          (_currentModulePage - index).abs();
                                      if (difference > 0)
                                        scale = 1 - (difference * 0.2);

                                      return Transform.scale(
                                        scale: scale,
                                        child: ModuleItem(
                                          module: widget.modules[index],
                                          isSelected:
                                              selectedModuleIndex == index,
                                          onTap: () {
                                            setState(() {
                                              selectedModuleIndex = index;
                                            });
                                            context
                                                .read<HomePageCubit>()
                                                .setModule(widget.modules[
                                                    selectedModuleIndex!]);
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: Material(
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.antiAlias, // cần để ripple không bị tràn
                  child: InkWell(
                    onTap: () {
                      context.read<HomePageCubit>().addRoom();
                    },
                    child: Ink(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blueAccent, Colors.purpleAccent],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.purpleAccent.withOpacity(0.4),
                            blurRadius: 12,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add_circle_outline,
                                color: Colors.white, size: 24),
                            const SizedBox(width: 8),
                            Text(
                              "Add Room",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 8,
                                    color: Colors.black26,
                                    offset: Offset(1, 1),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImageItem extends StatelessWidget {
  final String image;
  final VoidCallback? onTap;
  final bool isSelected;
  const ImageItem(
      {super.key, required this.image, this.onTap, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? Colors.blue : context.colors.dimGrey,
            width: 2,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            imageUrl: image,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
