import 'package:flutter/material.dart';
import '../model/appbar.dart';
import '../model/navigationbar.dart';

final Map<String, List<Map<String, dynamic>>> menuData = {
  "커피(ICE)": [
    {"name": "아메리카노(ICED)", "price": "1,500원"},
    {"name": "바닐라 카페라떼(ICED)", "price": "2,100원"},
    {"name": "순바닐라 카페라떼(ICED)", "price": "2,200원"},
    {"name": "달달 아메리카노(ICED)", "price": "1,900원"},
    {"name": "카페라떼(ICED)", "price": "2,000원"},
    {"name": "카라멜 카페라떼(ICED)", "price": "2,100원"},
    {"name": "헤이즐넛 카페라떼(ICED)", "price": "2,100원"},
    {"name": "민트 카페라떼(ICED)", "price": "2,200원"},
    {"name": "다크(초코) 카페라떼(ICED)", "price": "2,200원"},
    {"name": "자바칩 카페라떼(ICED)", "price": "2,200원"},
    {"name": "달달 카페라떼(ICED)", "price": "2,200원"},
    {"name": "카페모카(ICED)", "price": "2,100원"},
    {"name": "카라멜 마끼야또(ICED)", "price": "2,100원"},
  ],
  "커피(HOT)": [
    {"name": "에스프레소", "price": "1,500원"},
    {"name": "아메리카노(HOT)", "price": "1,500원"},
    {"name": "달달 아메리카노(HOT)", "price": "1,700원"},
    {"name": "카페라떼(HOT)", "price": "1,800원"},
    {"name": "바닐라 카페라떼(HOT)", "price": "1,900원"},
    {"name": "카라멜 카페라떼(HOT)", "price": "1,900원"},
    {"name": "헤이즐넛 카페라떼(HOT)", "price": "1,900원"},
    {"name": "민트 카페라떼(HOT)", "price": "2,000원"},
    {"name": "다크(초코) 카페라떼(HOT)", "price": "2,000원"},
    {"name": "자바칩 카페라떼(HOT)", "price": "2,000원"},
    {"name": "순바닐라 카페라떼(HOT)", "price": "2,000원"},
    {"name": "달달 카페라떼(HOT)", "price": "2,000원"},
    {"name": "카푸치노(HOT)", "price": "1,800원"},
    {"name": "카페모카(HOT)", "price": "1,900원"},
    {"name": "카라멜 마끼야또(HOT)", "price": "1,900원"}
  ],
  "BEVERAGE": [
    {"name": "초코(HOT)", "price": "1,700원"},
    {"name": "초코(ICED)", "price": "1,900원"},
    {"name": "그린티라뗴(HOT)", "price": "2,000원"},
    {"name": "그린티라떼(ICED)", "price": "2,200원"},
    {"name": "자색고구마 라떼(HOT)", "price": "2,000원"},
    {"name": "자색고구마 라떼(ICED)", "price": "2,200원"},
    {"name": "쿠키앤크림 라떼(HOT)", "price": "2,000원"},
    {"name": "쿠키앤크림 라떼(ICED)", "price": "2,200원"},
    {"name": "민트초코 라떼(HOT)", "price": "2,000원"},
    {"name": "민트초코 라떼(ICED)", "price": "2,200원"},
    {"name": "자바칩초코 라떼(HOT)", "price": "2,000원"},
    {"name": "자바칩초코 라떼(ICED)", "price": "2,200원"},
    {"name": "다크초코 라떼(HOT)", "price": "2,000원"},
    {"name": "다크초코 라떼(ICED)", "price": "2,200원"},
  ],
  "  FRUIT TEA&\nBLENDING TEA": [
    {"name": "자몽차(HOT)", "price": "1,500원"},
    {"name": "자몽차(ICED)", "price": "1,700원"},
    {"name": "레몬차(HOT)", "price": "1,500원"},
    {"name": "레몬차(ICED)", "price": "1,700원"},
    {"name": "유자차(HOT)", "price": "1,500원"},
    {"name": "유자차(ICED)", "price": "1,700원"},
    {"name": "루이보스 허브티(HOT)", "price": "1,500원"},
    {"name": "루이보스 허브티(ICED)", "price": "1,700원"},
    {"name": "케모마일 허브티(HOT)", "price": "1,500원"},
    {"name": "케모마일 허브티(ICED)", "price": "1,700원"},
    {"name": "히비스커스애플 블렌딩티(HOT)", "price": "1,500원"},
    {"name": "히비스커스애플 블렌딩티(HOT)", "price": "1,700원"},
    {"name": "네이블오렌지 블렌딩티(ICED)", "price": "1,500원"},
    {"name": "네이블오렌지 블렌딩티(HOT)", "price": "1,700원"},
  ],
  "밀크티&버블티": [
    {"name": "블랙 버블티", "price": "2,800원"},
    {"name": "곡물 버블티", "price": "2,800원"},
    {"name": "쿠키앤크림 버블티", "price": "2,800원"},
    {"name": "자색고구마 버블티", "price": "2,800원"},
    {"name": "망고 버블티", "price": "2,800원"},
    {"name": "딸기 버블티", "price": "2,800원"},
  ],
  "에이드&주스": [
    {"name": "자몽 에이드", "price": "1,800원"},
    {"name": "레몬 에이드", "price": "1,800원"},
    {"name": "유자 에이드", "price": "1,800원"},
    {"name": "복숭아 아이스티", "price": "1,500원"},
  ]
};

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = "커피(ICE)";

  void updateCategory(String newCategory) {
    setState(() {
      selectedCategory = newCategory;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "cafe",
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_bag),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            CategoryBar(
              onCategorySelect: updateCategory,
            ),
            MenuList(menus: menuData[selectedCategory] ?? []),
          ],
        ),
        bottomNavigationBar: CustomNavigationBar(
          currentIndex: 0,// 현재 선택된 인덱스 변수를 지정
          onTap: (index) {
            print("Selected index: $index");
          },
        )
    );
  }
}

class CategoryBar extends StatefulWidget {
  final Function(String) onCategorySelect;

  CategoryBar({required this.onCategorySelect});

  @override
  _CategoryBarState createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  final List<String> categories = [
    "커피(ICE)",
    "커피(HOT)",
    "BEVERAGE",
    "  FRUIT TEA&\nBLENDING TEA",
    "밀크티&버블티",
    "에이드&주스"
  ];

  String selectedCategory = "커피(ICE)";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          bool isSelected = categories[index] == selectedCategory;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedCategory = categories[index];
                });
                widget.onCategorySelect(categories[index]);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    categories[index],
                    style: TextStyle(
                      color: isSelected ? Color(0xff303742) : Colors.grey,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  isSelected
                      ? Container(
                    width: 20.0,
                    height: 2.0,
                    color: Color(0xff303742),
                  )
                      : Container(),
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onPrimary: Color(0xff303742),
                shadowColor: Colors.transparent,
                elevation: 0,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              ),
            ),
          );
        },
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  final List<Map<String, dynamic>> menus;

  MenuList({required this.menus});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: menus.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 135.0,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: Color(0xffDDDDDB),
                    ))),
            child: ListTile(
              contentPadding:
              EdgeInsets.symmetric(vertical: 13.5, horizontal: 36.0),
              title: Padding(
                padding: EdgeInsets.only(left: 110.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      menus[index]["name"],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      menus[index]["price"],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                // 메뉴 항목 클릭 시 액션 구현
                print("${menus[index]["name"]} 선택됨");
              },
            ),
          );
        },
      ),
    );
  }
}
