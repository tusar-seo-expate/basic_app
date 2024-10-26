import 'dart:io';

import 'package:basic_app/custom_models/key_value_model.dart';

typedef OnSelectKeyValueModel<T> = Function(KeyValueModel<T>? data);
typedef SeoOnDateSelect = Function(DateTime? data);
typedef SeoOnFileSelect = Function(File? file);
