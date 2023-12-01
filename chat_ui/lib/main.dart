import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New Whatsapp UI',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Messages",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Online",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Group",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "More",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              top: 190,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
                height: 220,
                decoration: const BoxDecoration(
                    color: Color(0xFF27c1a9),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Favorite Contacts",
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 90,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildContactAvatar('Alla', 'img1.jpeg'),
                          buildContactAvatar('July', 'img2.jpeg'),
                          buildContactAvatar('Mikle', 'img3.jpeg'),
                          buildContactAvatar('Kler', 'img4.jpg'),
                          buildContactAvatar('Moane', 'img5.jpeg'),
                          buildContactAvatar('Julie', 'img6.jpeg'),
                          buildContactAvatar('John', 'img7.jpeg'),
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                      color: Color(0xFFEFFFFC)),
                  child: ListView(
                    padding: EdgeInsets.only(left: 25),
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Row(
                                children: [
                                  const UserAvatar(filename: 'img1.jpeg'),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Lora',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Hello, How are you?',
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 25, top: 5),
                                child: Column(
                                  children: [
                                    Text(
                                      '16:35',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    CircleAvatar(
                                      radius: 7,
                                      backgroundColor: Color(0xFF27c1a9),
                                      child: Text(
                                        '2',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  )))
        ],
      ),
    );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          UserAvatar(
            filename: filename,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset('assets/images/$filename').image,
      ),
    );
  }
}
