import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/screens/appointment.dart';
import 'package:medicalapp/screens/mainhome.dart';
import 'package:medicalapp/screens/messages.dart';
import 'package:medicalapp/screens/settings.dart';
import 'package:medicalapp/services/colorlog.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            // Icon(Icons.account_circle, size: 60, color: primaryColor)
            Image.asset(
              'images/man.png',
              height: 80,
              width: 80,
              fit: BoxFit.contain,
            )
          ],
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          shadowColor: Colors.transparent,
          title: const Text(
            "Hello, Aruah Chimaobim",
            style: TextStyle(color: primaryColor, fontSize: 25),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          centerTitle: false,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_sharp), label: "Messages"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.black45,
          iconSize: 30,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: IndexedStack(
          index: currentIndex,
          children: [mainhome(), messages(), appointmentpage(), settings()],
        ));
  }
}
