import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_list/modules/controller/home_screen_controller.dart';
import 'package:product_list/modules/model/ListModel.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key});

  final c = Get.arguments as Data;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(builder: (controller) {
      return Scaffold(
          backgroundColor: Colors.blueAccent.shade200,
          appBar: AppBar(
            title: Text(
              c.title ?? '',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.grey,
          ),
          body: c != null
              ? Container(
                  margin: EdgeInsets.all(12),
                  padding: EdgeInsets.all(12),
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(c.image ?? ''),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          c.description ?? '',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(),
                ));
    });
  }
}
