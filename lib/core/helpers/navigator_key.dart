import 'package:flutter/material.dart';

/// A global navigator key used to navigate from outside
/// the widget tree (e.g. Dio interceptors on 401).
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
