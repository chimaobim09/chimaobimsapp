import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/services/colorlog.dart';

class mainhome extends StatelessWidget {
  const mainhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          color: const Color.fromRGBO(244, 245, 249, 1),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: const Offset(7, 10))
                    ]),
                width: size.width * 0.4,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 60,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: const [
                            Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.circle,
                                  size: 50,
                                  color: Colors.white,
                                )),
                            Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                  color: primaryColor,
                                )),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
                        child: Text("Clinic Visit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold)),
                      ),
                      const Text("Make an appointment",
                          style: TextStyle(color: Colors.white)),
                    ]),
              ),
              Container(
                width: size.width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: const Offset(5, 7))
                    ]),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 60,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: const [
                            Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.circle,
                                  size: 50,
                                  color: Color.fromRGBO(240, 238, 250, 1),
                                )),
                            Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.home,
                                  size: 30,
                                  color: primaryColor,
                                )),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
                        child: Text("Home Visit",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold)),
                      ),
                      const Text("Call doctor at home",
                          style: TextStyle(color: Colors.black)),
                    ]),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: const Text(
            "What are your symptoms ?",
            style: TextStyle(fontSize: 20, color: primaryColor),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: size.width * 0.4,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: EdgeInsets.all(15),
                child: const Text(
                  "Temperature",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: size.width * 0.4,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: EdgeInsets.all(15),
                child: const Text(
                  "Snuffle",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: size.width * 0.4,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: EdgeInsets.all(15),
                child: const Text(
                  "Headache",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
          child: const Text(
            "Popular Doctors",
            style: TextStyle(
                fontSize: 25, color: primaryColor, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          color: Color.fromARGB(179, 249, 246, 246),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: size.width * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: const Offset(3, 5))
                ],
              ),
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/woman.jpeg',
                    height: 80,
                    width: 80,
                    fit: BoxFit.contain,
                  ),
                  const Text(
                    "Dr. Viola Dunn",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "Pediatrician",
                      style: TextStyle(color: Colors.black38),
                    ),
                  ),
                  Container(
                    width: size.width * 0.15,
                    padding: EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 246, 214, 225),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Colors.yellow.shade700,
                        ),
                        Text(
                          "4.9",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: size.width * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: const Offset(2, 5))
                ],
              ),
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/smile.jpeg',
                    height: 80,
                    width: 80,
                    fit: BoxFit.contain,
                  ),
                  const Text(
                    "Dr. Chris Frazier",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: const Text("Therapist",
                        style: TextStyle(color: Colors.black38)),
                  ),
                  Container(
                    width: size.width * 0.15,
                    padding: EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 246, 214, 225),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Colors.yellow.shade700,
                        ),
                        Text(
                          "5.0",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
        Container(
          color: Color.fromARGB(179, 249, 246, 246),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: size.width * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: const Offset(3, 5))
                ],
              ),
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/girl.jpeg',
                    height: 80,
                    width: 80,
                    fit: BoxFit.contain,
                  ),
                  const Text(
                    "Dr. Laura Amadi",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "Pediatrician",
                      style: TextStyle(color: Colors.black38),
                    ),
                  ),
                  Container(
                    width: size.width * 0.15,
                    padding: EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 246, 214, 225),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Colors.yellow.shade700,
                        ),
                        Text(
                          "5.0",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: size.width * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: const Offset(2, 5))
                ],
              ),
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/boy.jpeg',
                    height: 80,
                    width: 80,
                    fit: BoxFit.contain,
                  ),
                  const Text(
                    "Dr. Chizy Aruah",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: const Text("Therapist",
                        style: TextStyle(color: Colors.black38)),
                  ),
                  Container(
                    width: size.width * 0.15,
                    padding: EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 246, 214, 225),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Colors.yellow.shade700,
                        ),
                        Text(
                          "4.6",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
