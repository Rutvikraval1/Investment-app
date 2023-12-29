import 'package:flutter/material.dart';

class BeaconPainter extends CustomPainter {
  final double beaconRadius;
  final Color color;
  final double maxRadius;
  final Offset offset;

  const BeaconPainter({
    required this.beaconRadius,
    required this.color,
    required this.maxRadius,
    required this.offset,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (beaconRadius == maxRadius) return;

    if (beaconRadius < maxRadius * 0.5) {
      final Paint paint = Paint()..color = color;
      canvas.drawCircle(offset, beaconRadius, paint);
    } else {
      final Paint paint = Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = maxRadius - beaconRadius;
      canvas.drawCircle(offset, beaconRadius, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
