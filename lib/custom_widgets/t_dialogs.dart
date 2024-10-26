import 'package:basic_app/configs/style_config.dart';
import 'package:basic_app/configs/theme_config.dart';
import 'package:flutter/cupertino.dart';

class Dialogs {
  static yesNo(
      {required BuildContext context,
      required String title,
      required String content,
      required void Function() yesOnClick,
      void Function()? noOnClick}) {
    showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: Text(
                title,
                style:
                    StyleConfig.fsMedium?.copyWith(color: ThemeConfig.black),
              ),
              content: Text(
                content,
                style: StyleConfig.fsMedium?.copyWith(color: ThemeConfig.black),
              ),
              actions: [
                CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context);

                      yesOnClick();
                    },

                    // color: Colors.grey,
                    child: Text(
                      "Yes",
                      style: StyleConfig.fsMedium
                          ?.copyWith(color: ThemeConfig.red),
                    )),
                CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context);

                      if (noOnClick != null) noOnClick();
                    },
                    // color: Colors.grey,
                    child: Text(
                      "NO",
                      style: StyleConfig.fsMedium,
                    )),
              ],
            ));
  }

  static dynamicYesNo(
      {required BuildContext context,
      required String title,
      required String content,
      required void Function() yesOnClick,
      void Function()? noOnClick,
      String? yes,
      String? no}) {
    showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: Text(
                title,
                style:
                    StyleConfig.fsMedium?.copyWith(color: ThemeConfig.black),
              ),
              content: Text(
                content,
                style: StyleConfig.fsMedium?.copyWith(color: ThemeConfig.black),
              ),
              actions: [
                CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context);

                      yesOnClick();
                    },

                    // color: Colors.grey,
                    child: Text(
                      yes ?? "Yes",
                      style: StyleConfig.fsMedium
                          ?.copyWith(color: ThemeConfig.green),
                    )),
                CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context);

                      if (noOnClick != null) noOnClick();
                    },
                    // color: Colors.grey,
                    child: Text(
                      no ?? "No",
                      style: StyleConfig.fsMedium?.copyWith(color: ThemeConfig.grey),
                    )),
              ],
            ));
  }

  static info(
      {required BuildContext context,
      required String content,
      VoidCallback? onClickOk}) {
    showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              content: Text(
                content,
                style: StyleConfig.fsMedium?.copyWith(color: ThemeConfig.black),
              ),
              actions: [
                CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context);
                      if (onClickOk != null) {
                        onClickOk();
                      }
                    },

                    // color: Colors.grey,
                    child: Text(
                      "OK",
                      style: StyleConfig.fsMedium
                          ?.copyWith(color: ThemeConfig.accentColor),
                    )),
              ],
            ));
  }

  static error(
      {required BuildContext context,
      required String content,
      VoidCallback? onClickOk}) {
    showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              content: Text(
                content,
                style: StyleConfig.fsMedium?.copyWith(color: ThemeConfig.red),
              ),
              actions: [
                CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context);
                      if (onClickOk != null) {
                        onClickOk();
                      }
                    },

                    // color: Colors.grey,
                    child: Text(
                      "OK",
                      style: StyleConfig.fsMedium
                          ?.copyWith(color: ThemeConfig.accentColor),
                    )),
              ],
            ));
  }

  static yesNoWithWidget(
      {required BuildContext context,
      required String title,
      required String content,
      required void Function() yesOnClick,
      void Function()? noOnClick,
      String yesTxt = "Yes",
      String noTxt = "No",
      required Widget contentWidget}) {
    showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: Text(
                title,
                style:
                    StyleConfig.fsMedium?.copyWith(color: ThemeConfig.black),
              ),
              content: Column(
                children: [
                  Text(
                    content,
                    style: StyleConfig.fsMedium?.copyWith(color: ThemeConfig.black),
                  ),
                  contentWidget
                ],
              ),
              actions: [
                CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context);
                      yesOnClick();
                    },

                    // color: Colors.grey,
                    child: Text(
                      yesTxt,
                      style: StyleConfig.fsMedium
                          ?.copyWith(color: ThemeConfig.red),
                    )),
                CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context);

                      if (noOnClick != null) noOnClick();
                    },
                    // color: Colors.grey,
                    child: Text(
                      noTxt,
                      style: StyleConfig.fsMedium,
                    )),
              ],
            ));
  }
}
