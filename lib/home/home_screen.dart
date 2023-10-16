import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:go_router/go_router.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);  // 수정된 부분



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  Future<void> signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      await GoogleSignIn().signOut();  // 구글 로그인의 경우 추가로 이를 호출합니다.
      context.go("/login");  // 로그아웃 후 로그인 화면으로 리디렉션합니다.
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("로그아웃 실패: $e"))
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => signOut(context),
          ),
        ],
      ),
      body: Center(
        child: Text("Welcome to Home Screen!"),
      ),
    );
  }
}

