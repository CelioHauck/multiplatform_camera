import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class MultiplatformCamera extends StatelessWidget {
  const MultiplatformCamera({Key? key, required this.controller})
      : super(key: key);

  final CameraController controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final deviceRatio = size.width / size.height;
    return Stack(
      children: <Widget>[
        Center(
          child: Transform.scale(
            scale: controller.value.aspectRatio / deviceRatio,
            child: AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: CameraPreview(controller),
            ),
          ),
        )
      ],
    );
  }
}
