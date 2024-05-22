import 'package:flutter/material.dart';
import 'package:machine_task/controller/api_services/api.dart';
import 'package:machine_task/utils/colors.dart';
import 'package:machine_task/view/detail_sreen/detail.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 240,
              decoration: const BoxDecoration(
                  color: kprimary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hi Good Morning !',
                                style: TextStyle(color: kwhite, fontSize: 15)),
                            Text(
                              'John',
                              style: TextStyle(
                                  color: kwhite,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 55,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: kwhite,
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Center(
                                child: Text(
                                  '10',
                                  style: TextStyle(
                                      color: kamber,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const CircleAvatar(
                              radius: 23,
                              backgroundImage: AssetImage(
                                  'assets/images/download (19).jpeg'),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                        width: 390,
                        height: 70,
                        decoration: BoxDecoration(
                            color: kwhite,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Selected Course',
                                      style: TextStyle(
                                          color: kfblack, fontSize: 15)),
                                  Text(
                                    'Montessori',
                                    style: TextStyle(
                                        color: kblack,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: kprimary,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Change',
                                        style: TextStyle(
                                            color: kwhite,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                      Icon(Icons.arrow_forward_ios_rounded)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration: const BoxDecoration(
                        color: kred,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 105,
                          height: 25,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(39, 4, 4, 4),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: const Center(
                              child: Text(
                            'Exam',
                            style: TextStyle(color: kwhite),
                          )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 105,
                    decoration: const BoxDecoration(
                        color: kyellow,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 105,
                          height: 25,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(39, 4, 4, 4),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: const Center(
                              child: Text(
                            'Practice',
                            style: TextStyle(color: kwhite),
                          )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 105,
                    decoration: const BoxDecoration(
                        color: kblue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 105,
                          height: 25,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(39, 4, 4, 4),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: const Center(
                              child: Text(
                            'Materials',
                            style: TextStyle(color: kwhite),
                          )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Courses',
                        style: TextStyle(
                            color: kblack,
                            fontWeight: FontWeight.bold,
                            fontSize: 19),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            color: kprimary,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundColor: kred,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'KTET',
                            style: TextStyle(
                                color: kblack,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundColor: kred,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'KTET',
                            style: TextStyle(
                                color: kblack,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundColor: kred,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'KTET',
                            style: TextStyle(
                                color: kblack,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const DetailScreen()));
                            },
                            child: const CircleAvatar(
                              radius: 45,
                              backgroundColor: kred,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'KTET',
                            style: TextStyle(
                                color: kblack,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          )
                        ],
                      ),
                      const Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundColor: kred,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'KTET',
                            style: TextStyle(
                                color: kblack,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          )
                        ],
                      ),
                      const Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundColor: kred,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'KTET',
                            style: TextStyle(
                                color: kblack,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          )
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 70,
                          ),
                          Container(
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 238, 186),
                                borderRadius: BorderRadius.circular(15)),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 30, horizontal: 20),
                              child: Text(
                                'Practice With Previous Years\nQuestion Papers',
                                style: TextStyle(
                                    color: kblack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                      const Positioned(
                          right: -60,
                          bottom: 40,
                          child: Image(
                              width: 220,
                              image: AssetImage(
                                  'assets/images/cartoon-removebg-preview (1).png'))),
                      const Positioned(
                          right: 140,
                          bottom: 10,
                          child: CircleAvatar(
                              radius: 22,
                              backgroundColor: kprimary,
                              child: Icon(
                                Icons.arrow_forward_sharp,
                                color: kwhite,
                              )))
                    ],
                  ),
                  const Text(
                    'Latest Test Series',
                    style: TextStyle(
                        color: kblack,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                  InkWell(
                    onTap: () async {
                      ApiServices apiServices = ApiServices();
                      await apiServices.fetchData();
                    },
                    child: SizedBox(
                      width: double.infinity,
                      height: 140,
                      child: Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 160,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: kyellow,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Exam 102 - Maths',
                                        style: TextStyle(
                                            color: kblack,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        '10 Questions 120 min',
                                        style: TextStyle(
                                            color: kblack,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        width: 120,
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: kwhite,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            'Attempt Now',
                                            style: TextStyle(
                                                color: kblack,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
