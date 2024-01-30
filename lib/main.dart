import 'app/dalel_app.dart';
import 'core/Services/service_locator.dart';
import 'core/database/cach/cash_helper.dart';
import 'core/functions/check_state_changes.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpServiceLocator();
  await getIt<CacheHelper>().init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  checkStateChanges();
  runApp(const Dalel());
}
