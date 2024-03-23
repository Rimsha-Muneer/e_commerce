import 'package:e_commerce_app/common/widgets/customshapes/curvedshapes/curved_edges.dart';
import 'package:flutter/material.dart';

class CurvedEdgesWidget extends StatelessWidget {
  const CurvedEdgesWidget({
    super.key, this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppCustomedCurvedEdges(),
      child:child,
    );
  }
}