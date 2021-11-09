// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: CustomScrollView(slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Row(
              //to show all the icons in appbar
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 15),
                  child: const Icon(
                    Icons.dehaze,
                    color: Color(0xffa5a5a5),
                    size: 30,
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(top: 20, right: 15),
                  child: const Icon(
                    Icons.library_books_outlined,
                    color: Color(0xffa5a5a5),
                    size: 30,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, right: 15),
                  child: const Icon(
                    Icons.notifications_none,
                    color: Color(0xffa5a5a5),
                    size: 30,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, right: 15),
                  child: const Icon(
                    Icons.help_outline_outlined,
                    color: Color(0xffa5a5a5),
                    size: 30,
                  ),
                ),
              ],
            ),
            Container(
              //shows the bar for shifting details
              margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
              height: MediaQuery.of(context).size.height * 0.085,
              child: Card(
                elevation: 2,
                color: const Color(0xff000000),
                shape: ContinuousRectangleBorder(
                  side: const BorderSide(color: Color(0xffa5a5a5), width: 0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Icon(Icons.access_time_filled_outlined,
                          color: Color(0xffe8a55b)),
                    ),
                    const Text(
                      "Shift Details",
                      style: TextStyle(
                          color: Color(0xffa5a5a5),
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xff4a84a0),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Card(
                elevation: 0,
                shape: ContinuousRectangleBorder(
                  side: const BorderSide(color: Color(0xffa5a5a5), width: 0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color(0xff000000),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.42,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff292929),
                        Color(0xff171717),
                        Color(0xff030303),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 15,
                        ),
                        height: MediaQuery.of(context).size.height * 0.26,
                        child: SfRadialGauge(axes: <RadialAxis>[
                          RadialAxis(
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                  positionFactor: 0.1,
                                  angle: 90,
                                  widget: Center(
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              top: 45, bottom: 2),
                                          child: const Text(
                                            "₹ 271",
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        const Text(
                                          "so far this week",
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.white70,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              top: 12, bottom: 2),
                                          child: const Text(
                                            "₹ 924",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        const Text(
                                          "Last week",
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.white70,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                            pointers: const <GaugePointer>[
                              RangePointer(
                                value: 9,
                                color: Color(0xff01c4e8),
                                cornerStyle: CornerStyle.bothCurve,
                                width: 0.15,
                                sizeUnit: GaugeSizeUnit.factor,
                              )
                            ],
                            minimum: 0,
                            maximum: 100,
                            showLabels: false,
                            showTicks: false,
                            axisLineStyle: const AxisLineStyle(
                              thickness: 0.19,
                              cornerStyle: CornerStyle.bothCurve,
                              color: Color.fromARGB(255, 16, 19, 36),
                              thicknessUnit: GaugeSizeUnit.factor,
                            ),
                          )
                        ]),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10, top: 5),
                        child: const Text(
                          "Complete more tasks & earn more!",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.065,
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff1bc476)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  // side: const BorderSide(
                                  //     color: Colors.teal, width: 2.0)
                                ))),
                            child: const Text(
                              'START DUTY',
                              style: TextStyle(fontSize: 15),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 20, top: 5),
              child: const Text(
                "FEATURE",
                style: TextStyle(color: Color(0xffa5a5a5)),
              ),
            ),
            Card(
              color: const Color(0xff000000),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.265,
                width: MediaQuery.of(context).size.width * 0.9,
                margin: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff5c6fe2),
                      Color(0xff358ee6),
                      Color(0xff08b3f1),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          bottom: 10,
                          top: 15,
                        ),
                        child: const Text(
                          "See your ID Card",
                          style: TextStyle(
                              color: Color(0xffbcecfd),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: const Text(
                          "ID Card can be shown as proof of working as a Swiggy Delivery Partner",
                          style: TextStyle(
                            color: Color(0xffbcecfd),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 15,
                        ),
                        alignment: Alignment.topLeft,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xfffefbfc)),
                          onPressed: () {},
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: const Text(
                              'GO TO PROFILE',
                              style: TextStyle(
                                  color: Color(0xff87b5c6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: const Text(
                "PENDING ACTIONS",
                style: TextStyle(color: Color(0xffa5a5a5)),
              ),
            ),
            Card(
              color: const Color(0xff000000),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.265,
                width: MediaQuery.of(context).size.width * 0.9,
                margin: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff5c6fe2),
                      Color(0xff358ee6),
                      Color(0xff08b3f1),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          bottom: 10,
                          top: 15,
                        ),
                        child: const Text(
                          "Change battery setting",
                          style: TextStyle(
                              color: Color(0xffbcecfd),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: const Text(
                          "Ensures that you do not get automatically logged out",
                          style: TextStyle(
                            color: Color(0xffbcecfd),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 15,
                        ),
                        alignment: Alignment.topLeft,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xfffefbfc)),
                          onPressed: () {},
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: const Text(
                              'OPEN SETTINGS',
                              style: TextStyle(
                                  color: Color(0xff87b5c6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: const Text(
                "QUICK LINKS",
                style: TextStyle(color: Color(0xffa5a5a5)),
              ),
            ),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(15),
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                  color: const Color(0xff000000),
                  shape: ContinuousRectangleBorder(
                    side:
                        const BorderSide(color: Color(0xffa5a5a5), width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("wallet.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15, left: 5),
                          child: const Text(
                            "₹ 0",
                            style: TextStyle(
                                color: Color(0xfffbfcff), fontSize: 20),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                              ),
                              child: const Text(
                                "Today's earnings",
                                style: TextStyle(
                                    color: Color(0xffa5a5a5), fontSize: 13),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8, left: 3),
                              child: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xff4a84a0),
                                size: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    color: const Color(0xff222222),
                  ),
                ),
                Card(
                  color: const Color(0xff000000),
                  shape: ContinuousRectangleBorder(
                    side:
                        const BorderSide(color: Color(0xffa5a5a5), width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("money_wallet.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15, left: 5),
                          child: const Text(
                            "₹ 271",
                            style: TextStyle(
                                color: Color(0xfffbfcff), fontSize: 20),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                              ),
                              child: const Text(
                                "Week's earnings",
                                style: TextStyle(
                                    color: Color(0xffa5a5a5), fontSize: 13),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8, left: 3),
                              child: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xff4a84a0),
                                size: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    color: const Color(0xff222222),
                  ),
                ),
                Card(
                  color: const Color(0xff000000),
                  shape: ContinuousRectangleBorder(
                    side:
                        const BorderSide(color: Color(0xffa5a5a5), width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("money.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15, left: 5),
                          child: const Text(
                            "₹ 2172",
                            style: TextStyle(
                                color: Color(0xfffbfcff), fontSize: 20),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                              ),
                              child: const Text(
                                "Floating Cash",
                                style: TextStyle(
                                    color: Color(0xffa5a5a5), fontSize: 13),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8, left: 3),
                              child: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xff4a84a0),
                                size: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    color: const Color(0xff222222),
                  ),
                ),
                Card(
                  elevation: 5,
                  color: const Color(0xff000000),
                  shape: ContinuousRectangleBorder(
                    side:
                        const BorderSide(color: Color(0xffa5a5a5), width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("timer.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15, left: 5),
                          child: const Text(
                            "00 min",
                            style: TextStyle(
                                color: Color(0xfffbfcff), fontSize: 20),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                              ),
                              child: const Text(
                                "Login duration",
                                style: TextStyle(
                                    color: Color(0xffa5a5a5), fontSize: 13),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8, left: 3),
                              child: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xff4a84a0),
                                size: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    color: const Color(0xff222222),
                  ),
                ),
              ],
            )
          ]),
        )
      ]),
    );
  }
}
