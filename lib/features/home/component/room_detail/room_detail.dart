import 'package:flutter/material.dart';
import 'package:smart_home/models/room.dart';
import 'package:smart_home/shared/widgets/custom_app_bar.dart';

class RoomDetaiScreen extends StatelessWidget {
  final Room room;
  const RoomDetaiScreen({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Room detail',
      ),
      body: Center(
        child: Text('Room ID: ${room.id}'),
      ),
    );
  }
}
