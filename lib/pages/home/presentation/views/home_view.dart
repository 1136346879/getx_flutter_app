import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.linearToSrgbGamma(),
          image: NetworkImage(
              "https://images.pexels.com/photos/3902882/pexels-photo-3902882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("Corona Virus"),
          backgroundColor: Colors.white10,
          elevation: 0,
          centerTitle: true,
        ),
        body: Center(
          child: controller.obx(
            (state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "Total Confirmed",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    '${state?.global?.totalConfirmed}',
                    style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Total Deaths",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    '${state?.global?.totalDeaths}',
                    style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  OutlinedButton(
                    // borderSide: BorderSide(
                    //   color: Colors.deepPurple,
                    //   width: 3,
                    // ),
                    // shape: StadiumBorder(),
                    style: ButtonStyle(side:MaterialStateProperty.all(const BorderSide(width: 3,color: Colors.orange))),
                    onPressed: () {
                      Get.toNamed('/home/country');
                    },
                    child: const Text(
                      "Fetch by country",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
