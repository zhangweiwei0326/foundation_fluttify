import 'package:foundation_fluttify/src/type/platform/android_type/android/content/context.dart';
import 'package:foundation_fluttify/src/type/platform/android_type/android/content/intent.dart';

import '../../../../../constants.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class android_app_Activity extends android_content_Context {
  Future<android_content_Intent> get intent async {
    final result = await kMethodChannel
        .invokeMethod('android.app.Activity::getIntent', {'refId': refId});
    return android_content_Intent()
      ..refId = result
      ..tag = 'platform';
  }
}
