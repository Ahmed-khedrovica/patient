import 'package:flutter/material.dart';

class HomeErrorView extends StatelessWidget {
  final String message;
  final double? height;

  const HomeErrorView({super.key, required this.message, this.height});

  @override
  Widget build(BuildContext context) {
    final body = Center(child: Text(message));
    if (height == null) return body;
    return SizedBox(height: height, child: body);
  }
}

class HomeEmptyView extends StatelessWidget {
  final String message;
  final double? height;

  const HomeEmptyView({super.key, required this.message, this.height});

  @override
  Widget build(BuildContext context) {
    final body = Center(child: Text(message));
    if (height == null) return body;
    return SizedBox(height: height, child: body);
  }
}

class HomeListUiConstants {
  static const double specialitiesListHeight = 100;
}
