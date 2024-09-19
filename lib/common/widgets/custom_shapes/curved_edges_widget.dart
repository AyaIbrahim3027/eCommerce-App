import 'package:ecommerce_app/common/widgets/custom_shapes/custom_curved_edges.dart';
import 'package:flutter/material.dart';

class CurvedEdgesWidget extends StatelessWidget {
  const CurvedEdgesWidget({
    super.key,
    this.widget,
  });
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: widget,
    );
  }
}
