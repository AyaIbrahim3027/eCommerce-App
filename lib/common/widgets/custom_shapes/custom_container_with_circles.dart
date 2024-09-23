import 'package:ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/opacity_manager.dart';
import 'package:flutter/material.dart';

class CustomContainerWithCircles extends StatelessWidget {
  const CustomContainerWithCircles({
    super.key,
    required this.widget,
  });
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.primaryColor,
      child: Stack(
        children: [
          // Background custom shapes
          Positioned(
            top: -150,
            right: -250,
            child: CircularContainer(
              color: ColorManager.white.withOpacity(
                OpacityManager.op_0_1,
              ),
            ),
          ),
          Positioned(
            top: 100,
            right: -300,
            child: CircularContainer(
              color: ColorManager.white.withOpacity(
                OpacityManager.op_0_1,
              ),
            ),
          ),
          widget,
        ],
      ),
    );
  }
}
