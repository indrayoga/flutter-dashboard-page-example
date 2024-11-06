import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/app/modules/home/controllers/home_controller.dart';
import 'package:getx_app/app/modules/home/views/exercise_tile.dart';
import 'package:getx_app/app/modules/home/views/grid_category.dart';
import 'package:getx_app/app/modules/home/views/list_category.dart';

class PanelCategory extends StatelessWidget {
  PanelCategory({super.key});

  final HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                height: 5,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exercises",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => homeController.isListView.toggle(),
                    child: Obx(() => Container(
                          child: homeController.isListView.value
                              ? Icon(Icons.view_list)
                              : Icon(Icons.grid_view),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //listview of exercises
              Obx(
                () => Expanded(
                  child: homeController.isListView.value
                      ? ListCategory()
                      : GridCategory(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
