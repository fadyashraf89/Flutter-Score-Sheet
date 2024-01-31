import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int TeamAPoints = 0;

  int TeamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Points Counter",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "$TeamAPoints",
                          style: TextStyle(fontSize: 100),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              setState(() {
                                TeamAPoints++;
                              });
                              print("Team A Points is $TeamAPoints");
                            },
                            child: const Text(
                              "Add 1 Point",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              setState(() {
                                TeamAPoints += 2;
                              });
                              print("Team A Points is $TeamAPoints");
                            },
                            child: const Text(
                              "Add 2 Points",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              setState(() {
                                TeamAPoints += 3;
                              });
                              print("Team A Points is $TeamAPoints");
                            },
                            child: const Text(
                              "Add 3 Points",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 300,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1.8,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "$TeamBPoints",
                          style: TextStyle(fontSize: 100),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              setState(() {
                                TeamBPoints++;
                              });
                              print("Team B Points is $TeamBPoints");
                            },
                            child: const Text(
                              "Add 1 Point",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              setState(() {
                                TeamBPoints += 2;
                              });
                              print("Team B Points is $TeamBPoints");
                            },
                            child: const Text(
                              "Add 2 Points",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              setState(() {
                                TeamBPoints += 3;
                              });
                              print("Team B Points is $TeamBPoints");
                            },
                            child: const Text(
                              "Add 3 Points",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(150, 50)),
                  onPressed: () {
                    TeamAPoints = 0;
                    TeamBPoints = 0;
                    setState(() {});
                    print("Team A Points is $TeamAPoints");
                    print("Team B Points is $TeamBPoints");
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
