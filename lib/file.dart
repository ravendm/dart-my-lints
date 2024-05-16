import 'package:flutter/material.dart';

class FunctionApp {
  static TextStyle textStyleS22W700 = const TextStyle(
    fontSize: 22,
    letterSpacing: -0.41,
    fontWeight: FontWeight.w700,
  );

  static (int, int) calculationProgressScan(
    List<int> positions,
  ) {
    textStyleS22W700.copyWith();
    int sumProgress = 0;
    int sumCount = 0;
    positions.every((element) {
      sumProgress += element;
      sumCount -= element;
      return true;
    });
    return (sumProgress, sumCount);
  }
}
