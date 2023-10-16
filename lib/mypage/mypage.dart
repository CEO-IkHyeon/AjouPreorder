import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../model/appbar.dart';
import '../model/navigationbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: MyPage()));
}

class MyPage extends StatelessWidget {
  final User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      CustomAppBar(title: '마이페이지', centerTitle: true, showBackButton: true),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color(0xFFE7E7E7),
            ),
            child: Row(
              children: [
                Icon(Icons.person, size: 50),
                SizedBox(width: 16),
                Text(user?.email ?? '로그인 정보 없음'), // 사용자 이메일 가져오기
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 8.0),
          child: Text('새소식',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF969393))),
        ),
        ListTile(
          title: Text('공지사항'),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            // 터치 시 수행될 동작
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 8.0),
          child: Text('주문',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF969393))),
        ),
        ListTile(
          title: Text('주문현황 상세'),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            // 터치 시 수행될 동작
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 8.0),
          child: Text('알림',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF969393))),
        ),
        ListTile(
          title: Text('푸시알림 설정'),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            // 터치 시 수행될 동작
          },
        ),
        ListTile(
          title: Text('알림음 설정'),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            // 터치 시 수행될 동작
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 8.0),
          child: Text('약관 및 정책',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF969393))),
        ),
        ListTile(
          title: Text('이용약관'),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            // 터치 시 수행될 동작
          },
        ),
        Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // 로그아웃 동작
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text('로그아웃', style: TextStyle(fontSize: 18)),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0x8CE7E7E7), // 버튼 색상
                    onPrimary: Colors.black, //
                  ),
                ),
              ),
            ))
      ]),
      bottomNavigationBar: CustomNavigationBar(
          currentIndex: 3,
          onTap: (index) {
            print("Selected index: $index");
          }),
    );
  }
}
