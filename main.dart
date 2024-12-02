import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 35.0,
                ),
                ButtonAtas(),
                const SizedBox(
                  height: 4.0,
                ),
                const Text(
                  'Chats',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w700,
                    fontSize: 35.0,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Pencarian(),
                const SizedBox(
                  height: 8.0,
                ),
                RowAll(),
                Chat(
                  name: 'Iqbal',
                  chat: 'Acara tanggal 21',
                  jam: '20.00',
                  color: Colors.green,
                  nomor: '1',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Divider(
                  color: Colors.black12,
                ),
                Chat(
                  name: 'Ayam',
                  chat: 'nyeleh satus',
                  jam: '18.00',
                  color: Colors.green,
                  nomor: '4',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Divider(
                  color: Colors.black12,
                ),
                Chat(
                  name: 'Alip',
                  chat: 'p',
                  jam: 'Kemarin',
                  color: Colors.green,
                  nomor: '2',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Divider(
                  color: Colors.black12,
                ),
                Chat(
                  name: 'Samid',
                  chat: 'p',
                  jam: 'Kemarin',
                  color: Colors.green,
                  nomor: '100',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Divider(
                  color: Colors.black12,
                ),
                Chat(
                  name: 'Uyab',
                  chat: 'p',
                  jam: 'Kemarin',
                  color: Colors.green,
                  nomor: '3',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Divider(
                  color: Colors.black12,
                ),
                Chat(
                  name: 'Andre',
                  chat: 'p',
                  jam: 'Kemarin',
                  color: Colors.green,
                  nomor: '90',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Divider(
                  color: Colors.black12,
                ),
                Chat(
                  name: 'Dudutexx',
                  chat: 'p',
                  jam: 'Kemarin',
                  color: Colors.green,
                  nomor: '6',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Divider(
                  color: Colors.black12,
                ),
                Chat(
                  name: 'Arzy',
                  chat: 'p',
                  jam: 'Kemarin',
                  color: Colors.green,
                  nomor: '70',
                ),
                 const SizedBox(
                  height: 8.0,
                ),
                const Divider(
                  color: Colors.black12,
                ),
                Chat(
                  name: 'Ucup',
                  chat: 'p',
                  jam: 'Kemarin',
                  color: Colors.green,
                  nomor: '20',
                ), const SizedBox(
                  height: 8.0,
                ),
                const Divider(
                  color: Colors.black12,
                ),
                Chat(
                  name: 'Abdil',
                  chat: 'p',
                  jam: 'Kemarin',
                  color: Colors.green,
                  nomor: '1',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Divider(
                  color: Colors.black12,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.grey.shade200,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_outlined),
            label: 'Update',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_end_outlined),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_outlined),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      ),
    );
  }
}

class ButtonAtas extends StatelessWidget {
  const ButtonAtas({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 11.0,
          backgroundColor: Colors.black12,
          child: Icon(
            Icons.more_horiz,
            size: 17.0,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 305.0,),
        CircleAvatar(
          radius: 11.0,
          backgroundColor: Colors.black12,
          child: Icon(
            Icons.camera_alt,
            size: 15.0,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 10.0,),
        CircleAvatar(
          radius: 13.0,
          backgroundColor: Colors.green,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class Pencarian extends StatelessWidget {
  const Pencarian({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: Colors.black45,
            fontSize: 15,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black45,
          ),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.brown.shade50,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: Colors.blue),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}

class RowAll extends StatelessWidget {
  const RowAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: Colors.green.shade100,
               minimumSize: Size(45.0, 15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0), // Radius tombol
              )),
          child: const Text(
            'All',
            style: TextStyle(
              color: Colors.green,
              fontSize: 13.0,
            ),
          ),
        ),
        const SizedBox(width: 6.0,),
        TextButton(
          onPressed: () {},
           style: TextButton.styleFrom(
              backgroundColor: Colors.black12,
              minimumSize: Size(45.0, 15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(33.0), // Radius tombol
              )),
          child: const Text(
            'Unread',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 12.0,
            ),
          ),
        ),
        const SizedBox(width: 6.0,),
        TextButton(
          onPressed: () {},
           style: TextButton.styleFrom(
              backgroundColor: Colors.black12,
               minimumSize: Size(45.0, 15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(33.0), // Radius tombol
              )),
          child: const Text(
            'Groups',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 12.0,
            ),
          ),
        ),
      ],
    );
  }
}

class Chat extends StatelessWidget {
  const Chat({
    super.key,
    required this.nomor,
    required this.color,
    required this.name,
    required this.chat,
    required this.jam,
  });

  final String nomor;
  final Color color;
  final String name;
  final String chat;
  final String jam;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            'images/ppkosong.webp',
          ),
          radius: 25.0,
        ),
        const SizedBox(
          width: 5.0,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            Text(
              chat,
              style: TextStyle(
                color: Colors.black45,
              ),
              // textAlign: TextAlign.justify,
            )
          ],
        )),
        Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text(
            jam,
            style: TextStyle(
              color: color,
              fontSize: 12.0,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.green,
            child: Text(
              nomor,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.0,
              ),
            ),
          )
        ])),
      ],
    );
  }
}


