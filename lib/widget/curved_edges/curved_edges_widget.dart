import 'package:flutter/material.dart';
import 'curved_edges.dart';

class CurvedEdgestWidget extends StatelessWidget {
  const CurvedEdgestWidget({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}