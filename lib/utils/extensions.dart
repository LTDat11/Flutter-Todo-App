import 'package:flutter/material.dart';
extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  Size get screenSize => MediaQuery.of(this).size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
  double get statusBarHeight => MediaQuery.of(this).padding.top;
  double get bottomBarHeight => MediaQuery.of(this).padding.bottom;
  double get keyboardHeight => MediaQuery.of(this).viewInsets.bottom;
  double get keyboardTopInset => MediaQuery.of(this).viewInsets.top;
  double get keyboardBottomInset => MediaQuery.of(this).viewInsets.bottom;
  double get keyboardHeightWithBottomBar =>
      keyboardHeight + bottomBarHeight;
  double get keyboardHeightWithoutBottomBar =>
      keyboardHeight - bottomBarHeight;
  double get keyboardTopInsetWithBottomBar =>
      keyboardTopInset + bottomBarHeight;
  double get keyboardTopInsetWithoutBottomBar =>
      keyboardTopInset - bottomBarHeight;
  double get keyboardBottomInsetWithBottomBar =>
      keyboardBottomInset + bottomBarHeight;
  double get keyboardBottomInsetWithoutBottomBar =>
      keyboardBottomInset - bottomBarHeight;
  double get keyboardHeightWithStatusBar =>
      keyboardHeight + statusBarHeight;
  double get keyboardHeightWithoutStatusBar =>
      keyboardHeight - statusBarHeight;
  double get keyboardTopInsetWithStatusBar =>
      keyboardTopInset + statusBarHeight;
  double get keyboardTopInsetWithoutStatusBar =>
      keyboardTopInset - statusBarHeight;
  double get keyboardBottomInsetWithStatusBar =>
      keyboardBottomInset + statusBarHeight;
  double get keyboardBottomInsetWithoutStatusBar =>
      keyboardBottomInset - statusBarHeight;
  double get keyboardHeightWithStatusBarAndBottomBar =>
      keyboardHeight + statusBarHeight + bottomBarHeight;
  double get keyboardHeightWithoutStatusBarAndBottomBar =>
      keyboardHeight - statusBarHeight - bottomBarHeight;
  double get keyboardTopInsetWithStatusBarAndBottomBar =>
      keyboardTopInset + statusBarHeight + bottomBarHeight;
  double get keyboardTopInsetWithoutStatusBarAndBottomBar =>
      keyboardTopInset - statusBarHeight - bottomBarHeight;
  double get keyboardBottomInsetWithStatusBarAndBottomBar =>
      keyboardBottomInset + statusBarHeight + bottomBarHeight;
  double get keyboardBottomInsetWithoutStatusBarAndBottomBar =>
      keyboardBottomInset - statusBarHeight - bottomBarHeight;
}