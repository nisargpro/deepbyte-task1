import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_list/helper/constants.dart';
import 'package:product_list/modules/controller/home_screen_controller.dart';
import 'package:product_list/modules/pages/details_page.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  final c = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(builder: (controller){
      return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Product List",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.white54,
        ),
        body:
            Obx(() => c.data.value != null?
                ListView.builder(itemCount: c.data.value?.data?.length,
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: ()=> Get.to(()=>DetailsPage(),arguments: c.data.value?.data?[index]),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      margin: EdgeInsets.all(8),
                      height: 100,
                      decoration: BoxDecoration(
                          color: Constants.yellowColor,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(c.data.value?.data?[index].image??''),
                            radius: 40,),
                          SizedBox(width: 12,),
                          Text(c.data.value?.data?[index].title??"",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                          Spacer(),
                          Text(c.data.value?.data?[index].price.toString()??"0.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.green),)
                        ],
                      ),
                    ),
                  );
                }):Center(child: CircularProgressIndicator(),))
      );
    });
  }
}
