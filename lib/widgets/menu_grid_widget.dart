import 'package:flutter/material.dart';

final menus = [
  {"menu": "Home", "icon": Image.asset("assets/home.jpg")},
  {"menu": "Profile", "icon": Image.asset("assets/profile.png")},
  {"menu": "Settings", "icon": Image.asset("assets/setting.ico")},
];

class MenuGridWidget extends StatelessWidget {
  final Function(String menu)? onClick;

  const MenuGridWidget({super.key, this.onClick});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: menus.length,
      itemBuilder:
          (context, index) => GestureDetector(
            onTap: () => onClick?.call(menus[index]['menu'] as String),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  SizedBox(
                    width: 28,
                    height: 28,
                    child: menus[index]['icon'] as Widget,
                  ),
                  Text(menus[index]['menu'] as String),
                ],
              ),
            ),
          ),
    );
  }
}
