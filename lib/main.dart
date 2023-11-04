import 'package:dalel_app/app/dalel_app.dart';
import 'package:dalel_app/core/Services/service_locator.dart';
import 'package:dalel_app/core/database/cach/cash_helper.dart';
import 'package:dalel_app/core/functions/check_state_changes.dart';
import 'package:dalel_app/firebase_options.dart';
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
