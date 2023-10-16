
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:preorder/firebase_options.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:preorder/login/login_screen.dart';

import 'home/home_screen.dart';
import 'login/sign_up_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (kDebugMode) {
    try{
      //await FirebaseAuth.instance.useAuthEmulator("localhost", 9099);
      FirebaseFirestore.instance.useFirestoreEmulator("localhost", 8080);
      FirebaseStorage.instance.useStorageEmulator("localhost", 9199);
    } catch(e) {
      print(e);
    }
  }
  runApp(PreorderApp());
}

class PreorderApp extends StatelessWidget {
  PreorderApp({super.key});

  final router = GoRouter(
    initialLocation: "/login",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: "/login",
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: "/sign_up",
        builder: (context, state) => SignUpScreen(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '도카 PreOrder',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
