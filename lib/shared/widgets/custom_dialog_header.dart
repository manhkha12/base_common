import 'package:flutter/material.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/widgets/app_text.dart';


class CustomDialogHeader extends StatelessWidget {
  final String title;
  final VoidCallback onClose;

  const CustomDialogHeader({
    super.key,
    required this.title,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: AppText(
                title,
                style: TextStyle(fontSize: 20, color: context.colors.black),
              ),
            ),
            InkWell(
              onTap: onClose,
              child: Assets.icons.close.svg(color: context.colors.black),
            ),
          ],
        ),
        
      ],
    );
  }
}
