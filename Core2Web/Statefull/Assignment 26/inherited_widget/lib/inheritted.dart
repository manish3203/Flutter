import 'package:flutter/material.dart';

class SharedData extends InheritedWidget {
  final int data;
  const SharedData({
    super.key,
    required this.data,
    required super.child,
  });
  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return data != oldWidget.data;
  }
}
