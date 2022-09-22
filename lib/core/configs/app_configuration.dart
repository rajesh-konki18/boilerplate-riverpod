import 'package:flutter/services.dart';

import '../env/env.dart';

class AppConfiguration {
  //static String baseUrl = Env.baseUrlKey;

  static const EventChannel eventChannel =
      EventChannel('com.technovert.myquility/eventChannel');
  static const MethodChannel methodChannel =
      MethodChannel("com.technovert.myquility/methodChannel");
}
