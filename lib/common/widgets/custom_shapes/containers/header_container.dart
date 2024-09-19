import 'package:ecommerce_app/common/widgets/custom_shapes/curved_edges_widget.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/custom_container_with_circles.dart';
import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
    required this.widget,
  });

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      widget: CustomContainerWithCircles(
        widget: widget,
      ),
    );
  }
}
