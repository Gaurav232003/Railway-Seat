import 'package:flutter/material.dart';
import 'package:railway_seat/color.dart';
import 'package:railway_seat/data.dart';
import 'data.dart';

class BerthNumberCard extends StatelessWidget {
  final int seatNumber;
  final VoidCallback onPressed;
  final String type;

  const BerthNumberCard(
      {super.key,
      required this.seatNumber,
      required this.type,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        select(seatNumber, onPressed);
      },
      child: Container(
        margin: const EdgeInsets.all(3.0),
        height: height * 0.06149,
        width: width * 0.1273,
        decoration: BoxDecoration(
            color: berthCardColor[seatNumber - 1],
            borderRadius: BorderRadius.circular(4.0)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            seatNumber.toString(),
            style: const TextStyle(fontSize: 15.0, color: Colors.white),
          ),
          Text(
            type,
            style: const TextStyle(fontSize: 15.0, color: Colors.white),
          )
        ]),
      ),
    );
  }
}

class BerthNumberCard2 extends StatelessWidget {
  final int seatNumber;
  final VoidCallback onPressed;
  final String type;
  const BerthNumberCard2(
      {super.key,
      required this.seatNumber,
      required this.onPressed,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        select(seatNumber, onPressed);
      },
      child: Container(
        height: height * 0.07379,
        width: width * 0.1400,
        decoration: const BoxDecoration(color: Colors.white),
        child: Container(
          margin: const EdgeInsets.all(3.0),
          height: height * 0.06149,
          width: width * 0.1273,
          decoration: BoxDecoration(
              color: berthCardColor[seatNumber - 1],
              borderRadius: BorderRadius.circular(4.0)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              seatNumber.toString(),
              style: const TextStyle(fontSize: 15.0, color: Colors.white),
            ),
            Text(
              type,
              style: TextStyle(fontSize: 12.0, color: Colors.white),
            ),
            // const Text(
            //   'Upper',
            //   style: TextStyle(fontSize: 12.0, color: Colors.white),
            // )
          ]),
        ),
      ),
    );
  }
}

class BerthNumberCard3 extends StatelessWidget {
  final int seatNumber;
  final VoidCallback onPressed;
  const BerthNumberCard3(
      {super.key, required this.seatNumber, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        select(seatNumber, onPressed);
      },
      child: Container(
        height: height * 0.0676,
        width: width * 0.1400,
        decoration: const BoxDecoration(color: Colors.white),
        child: Container(
          margin: const EdgeInsets.all(3.0),
          height: height * 0.06149,
          width: width * 0.1273,
          decoration: BoxDecoration(
              color: berthCardColor[seatNumber - 1],
              borderRadius: BorderRadius.circular(4.0)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              seatNumber.toString(),
              style: const TextStyle(fontSize: 15.0, color: Colors.white),
            ),
            const Text(
              'S L',
              style: TextStyle(fontSize: 12.0, color: Colors.white),
            ),
            // const Text(
            //   'Lower',
            //   style: TextStyle(fontSize: 12.0, color: Colors.white),
            // )
          ]),
        ),
      ),
    );
  }
}
