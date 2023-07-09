import 'package:conference_2023/util/web/firebase_options_web_dev.dart';
import 'package:conference_2023/util/web/firebase_options_web_pro.dart';
import 'package:flutter/foundation.dart';

const firebaseOptionsWeb = kIsWeb
    ? String.fromEnvironment('flavor') == 'pro'
        ? firebaseOptionsPro
        : firebaseOptionsDev
    : null;
