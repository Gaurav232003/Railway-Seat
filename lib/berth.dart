import 'package:flutter/material.dart';
import 'berthnumbercard.dart';
import 'data.dart';

class Berth extends StatelessWidget {
  final VoidCallback onPressed;
  final int seatNumber;
  const Berth({super.key, required this.seatNumber, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(
              height: height * 0.09838,
              width: width * 0.5092,
              child: Stack(
                children: [
                  const BlueBackBig(),
                  Positioned(
                    right: 29,
                    top: 2,
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BerthNumberCard(
                            seatNumber: seatNumber,
                            type: "Lower",
                            onPressed: onPressed,
                          ),
                          BerthNumberCard(
                            seatNumber: seatNumber + 1,
                            type: "Middle",
                            onPressed: onPressed,
                          ),
                          BerthNumberCard(
                            seatNumber: seatNumber + 2,
                            type: "Upper",
                            onPressed: onPressed,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.012298,
            ),
            SizedBox(
              height: height * 0.09838,
              width: width * 0.5092,
              child: Stack(
                children: [
                  SizedBox(
                    height: height * 0.03689,
                  ),
                  const Positioned(
                    top: 18.0,
                    child: BlueBackBig(),
                  ),
                  Positioned(
                    right: 29.0,
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BerthNumberCard(
                            seatNumber: seatNumber + 3,
                            type: "Lower",
                            onPressed: onPressed,
                          ),
                          BerthNumberCard(
                            seatNumber: seatNumber + 4,
                            type: "Middle",
                            onPressed: onPressed,
                          ),
                          BerthNumberCard(
                            seatNumber: seatNumber + 5,
                            type: "Upper",
                            onPressed: onPressed,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        // side berths
        Column(
          children: [
            SizedBox(
              height: height * 0.09838,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5.0)),
                    height: height * 0.04919,
                    width: width * 0.1527,
                  ),
                  Positioned(
                    left: 2.5,
                    top: 2,
                    child: BerthNumberCard2(
                      seatNumber: seatNumber + 6,
                      type: 'S U',
                      onPressed: onPressed,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.012298,
            ),
            SizedBox(
              height: height * 0.09838,
              width: width * 0.1527,
              child: Stack(children: [
                Positioned(
                  top: 18.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5.0)),
                    height: height * 0.04919,
                    width: width * 0.1527,
                  ),
                ),
                Positioned(
                  left: 2.5,
                  child: BerthNumberCard3(
                    seatNumber: seatNumber + 7,
                    onPressed: onPressed,
                  ),
                ),
              ]),
            ),
          ],
        )
      ],
    );
  }
}

class BlueBackBig extends StatelessWidget {
  const BlueBackBig({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(5.0)),
        height: height * 0.04919,
        width: width * 0.4405);
  }
}
