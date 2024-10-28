import 'package:basic_app/configs/theme_config.dart';
import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration basic({hint_text = "",Widget? prefixIcon}) {
    return InputDecoration(
      prefixIcon: prefixIcon,
        hintText: hint_text,);
  }

  static InputDecoration phone({hint_text = "",Widget?prefixIcon}) {
    return InputDecoration(
        // prefixIcon: prefixIcon,
        hintText: hint_text,
        hintStyle: TextStyle(fontSize: 12.0, color: ThemeConfig.lightGrey),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ThemeConfig.lightGrey, width: 1),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(2.0),
              bottomRight: Radius.circular(2.0)),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ThemeConfig.accentColor, width: 1),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(2.0),
                bottomRight: Radius.circular(2.0))),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0));
  }
}
