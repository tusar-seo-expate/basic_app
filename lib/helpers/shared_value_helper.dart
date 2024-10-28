import 'package:shared_value/shared_value.dart';

final SharedValue<String> accessToken = SharedValue(
  value: "", // initial value
  key: "access_token",
  autosave: true// disk storage key for shared_preferences
);

final SharedValue<String> userName = SharedValue(
    value: "", // initial value
    key: "user_name",
    autosave: true// disk storage key for shared_preferences
);

final SharedValue<bool> isLogin = SharedValue(
    value: false, // initial value
    key: "is_login",
    autosave: true// disk storage key for shared_preferences
);


final SharedValue<String> appLanguage = SharedValue(
    value: "en", // initial value
    key: "app_language",
    autosave: true// disk storage key for shared_preferences
);


final SharedValue<bool> appThemeIsDark = SharedValue(
    value: false, // initial value
    key: "app_theme_is_dark",
    autosave: true// disk storage key for shared_preferences
);



