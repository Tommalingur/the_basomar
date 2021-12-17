import 'package:flutter/material.dart';

// Widget file for a story dialog.

// Created the dialog.dart.

Future<T> showDialog<T>({
  BuildContext context,
  WidgetBuilder builder,
  bool barrierDismissible = false,
  Color barrierColor = Colors.black54,
  String barrierLabel,
  bool useSafeArea = true,
  bool useRootNavigator = true,
  RouteSettings routeSettings,
}) {
  final CapturedThemes themes = InheritedTheme.capture(
    from: context,
    to: Navigator.of(
      context,
      rootNavigator: useRootNavigator,
    ).context,
  );

  return Navigator.of(context, rootNavigator: useRootNavigator)
      .push<T>(DialogRoute<T>(
    context: context,
    builder: builder,
    barrierColor: barrierColor,
    barrierDismissible: barrierDismissible,
    barrierLabel: barrierLabel,
    useSafeArea: useSafeArea,
    settings: routeSettings,
    themes: themes,
  ));
}
