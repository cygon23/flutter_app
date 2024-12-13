import 'package:flutter/material.dart';

class MyText {
  static TextStyle? display4(BuildContext context) {
    return Theme.of(context).textTheme.displayLarge; // Updated
  }

  static TextStyle? display3(BuildContext context) {
    return Theme.of(context).textTheme.displayMedium; // Updated
  }

  static TextStyle? display2(BuildContext context) {
    return Theme.of(context).textTheme.displaySmall; // Updated
  }

  static TextStyle? display1(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium; // Updated
  }

  static TextStyle? headline(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall; // Updated
  }

  static TextStyle? title(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge; // Updated
  }

  static TextStyle medium(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
      fontSize: 18,
    ); // Updated
  }

  static TextStyle? subhead(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium; // Updated
  }

  static TextStyle? body2(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge; // Updated
  }

  static TextStyle? body1(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall; // Updated
  }

  static TextStyle? caption(BuildContext context) {
    return Theme.of(context).textTheme.labelSmall; // Updated
  }

  static TextStyle? button(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge!.copyWith(
      letterSpacing: 1,
    ); // Updated
  }

  static TextStyle? subtitle(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall; // Updated
  }

  static TextStyle? overline(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall; // Updated
  }
}