import 'package:flutter/material.dart';
import 'package:railway_seat/color.dart';
import 'home.dart';
import 'data.dart';

class SelectedSeats extends StatefulWidget {
  const SelectedSeats({super.key});

  @override
  State<SelectedSeats> createState() => _SelectedSeatsState();
}

class _SelectedSeatsState extends State<SelectedSeats> {
  TextEditingController t3 = TextEditingController();

  int num = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(
              left: width * 0.203, right: width * 0.203, top: height * 0.1844),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Enter Number of Seats',
                style: TextStyle(fontSize: 23, color: Colors.deepPurple),
              ),
              SizedBox(
                height: height * 0.0368,
              ),
              Column(
                children: [
                  Text(
                    num.toString(),
                    style: const TextStyle(fontSize: 40.0),
                  ),
                  SizedBox(
                    height: height * 0.0368,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (num > 1) {
                            setState(() {
                              num--;
                            });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: Colors.deepPurple),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: width * 0.040),
                      ElevatedButton(
                        onPressed: () {
                          if (num < 10) {
                            setState(() {
                              num++;
                            });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: Colors.deepPurple),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: height * 0.04919,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {
                    int x = cur.length;
                    if (x == 0) {
                      cVal = num;
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    } else {
                      colorRefresh();
                      cVal = num;
                      Navigator.pop(context, true);
                    }
                  },
                  child: const Text(
                    'S U B M I T',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
