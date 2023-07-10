import 'package:conference_2023/app.dart';
import 'package:conference_2023/model/preference/shared_preference_provider.dart';
import 'package:conference_2023/util/font_lisence.dart';
import 'package:conference_2023/util/web/firebase_options_web.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: firebaseOptionsWeb,
    );
  } else {
    /// Android, iOS
    await Firebase.initializeApp();
  }

  fontLicenses();

  final pref = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        /// This is a trick to get instances of SharedPreferences synchronously.
        /// Note: Because of this trick, [sharedPreferencesProvider] behaves
        /// differently from a normal [Provider].
        sharedPreferencesProvider.overrideWithValue(pref),
      ],
      child: const App(),
    ),
  );
}
