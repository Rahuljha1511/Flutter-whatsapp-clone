import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

const MaterialColor whatsappGreen = MaterialColor(
  0xFF075E54,
  <int, Color>{
    50: Color(0xFFE1F2E1),
    100: Color(0xFFB4DFB4),
    200: Color(0xFF80C780),
    300: Color(0xFF4DB04D),
    400: Color(0xFF26A626),
    500: Color(0xFF075E54),
    600: Color(0xFF064D43),
    700: Color(0xFF044032),
    800: Color(0xFF032C23),
    900: Color(0xFF021714),
  },
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: whatsappGreen,
        ),
        home: Scaffold(
            appBar: AppBar(
              centerTitle: false,
              title: const Text("WhatsApp"),
              actions: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.more_vert),
                )
              ],
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(40),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.photo_camera),
                      ),
                      Tab(
                        text: "Chats",
                      ),
                      Tab(
                        text: "Status",
                      ),
                      Tab(
                        text: "Calls",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: [
                Container(),
                chatbar(),
                Container(),
                Container(),
              ],
            )),
      ),
    );
  }

  ListTile chatbar() {
    return const ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            "https://image.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg"),
      ),
      title: Text("Rahul Jha"),
      subtitle: Text(
        "There is no class today. Please forward this message to every one",
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("11:00 PM"),
        Badge(
          label: Text("5"),
          backgroundColor: whatsappGreen,
        )
      ]),
    );
  }
}
