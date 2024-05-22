import 'package:flutter/material.dart';
import 'package:machine_task/utils/colors.dart';
import 'package:machine_task/view/video_screen/video_page.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: const BoxDecoration(
                        color: kprimary,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
                Positioned(
                  left: 20,
                  bottom: 0,
                  child: SizedBox(
                    height: 110,
                    width: 400,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 55,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            margin: const EdgeInsets.only(right: 10),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                    left: 10,
                    top: 25,
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: kwhite,
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const VideoScreen()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 238, 186),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Upgrade and unlock the\nfull course',
                              style: TextStyle(
                                  color: kblack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            Container(
                              width: 90,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: kred,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                'Upgrade',
                                style: TextStyle(
                                    color: kwhite, fontWeight: FontWeight.bold),
                              )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 187, 231, 235),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Whats app സഹായത്തിനായി',
                            style: TextStyle(
                                color: kblack,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '2243565757',
                                style: TextStyle(
                                    color: kblack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Container(
                                width: 130,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                    child: Text(
                                  "What's app",
                                  style: TextStyle(
                                      color: kwhite,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 280,
                    child: ListView.builder(
                      itemCount: 14,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red,
                                  ),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Day 3 -Lesson 1',
                                        style: TextStyle(
                                            color: kblack,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11),
                                      ),
                                      Text(
                                        'All about DID',
                                        style: TextStyle(
                                            color: kblack,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
