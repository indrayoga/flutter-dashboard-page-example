import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_app/app/modules/home/views/exercise_tile.dart';
import 'package:getx_app/app/modules/home/views/panel_category.dart';
import 'package:getx_app/app/modules/home/views/grid_category.dart';
import 'package:getx_app/util/emoticon_face.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
        ),
        body: SlidingUpPanel(
          minHeight: MediaQuery.of(context).size.height * 0.5,
          maxHeight: MediaQuery.of(context).size.height * 0.75,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi, Indra',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "23 Jan, 2021",
                                style: TextStyle(
                                  color: Colors.blue[200],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(12)),
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //search bar
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      //how your feeling
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'How Do You Feel?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      //emoticon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //bad
                          Column(
                            children: [
                              EmoticonFace(
                                emoticonFace: '😔',
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Bad",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          //fine
                          Column(
                            children: [
                              EmoticonFace(
                                emoticonFace: '😊',
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Fine",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          //well
                          Column(
                            children: [
                              EmoticonFace(
                                emoticonFace: '😁',
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Well",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          //excellent
                          Column(
                            children: [
                              EmoticonFace(
                                emoticonFace: '🥳',
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Excellent",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                // PanelCategory(),
              ],
            ),
          ),
          panel: PanelCategory(), // PanelGridCategory(),
        ));
  }
}
