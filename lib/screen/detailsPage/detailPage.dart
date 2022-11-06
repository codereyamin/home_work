import 'package:flutter/material.dart';
import 'package:home_work/constant/colors.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../data/data_model.dart';

class DetailPage extends StatefulWidget {
  DetailPage({super.key, required this.model});
  DataModel model;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    int tabSelectPageIndex = 0;

    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  width: 30,
                  height: 30,
                  child: Icon(
                    IconlyBold.arrow_left_circle,
                    color: mainColors,
                    size: 30,
                  )),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Container(
                width: width,
                height: heigth / 2.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.model.img_url),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                  bottom: 20,
                  left: 10,
                  right: 10,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Duration",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: subTitleColor),
                            ),
                            Text(
                              "6 days",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "participant",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: subTitleColor),
                            ),
                            Text(
                              "6 people",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "landing",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: subTitleColor),
                            ),
                            Text(
                              "6 stop",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              widget.model.name,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(IconlyLight.location),
                    SizedBox(
                      width: 5,
                    ),
                    Text(widget.model.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: subTitleColor,
                        )),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      IconlyBold.star,
                      color: mainColors,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(widget.model.like,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: subTitleColor,
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Text("( ${widget.model.like} )",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: subTitleColor,
                        )),
                  ],
                )
              ],
            ),
          ),
          HorizontalList(
            itemCount: 3,
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  tabSelectPageIndex = 1;
                });
              },
              child: Padding(
                padding: EdgeInsets.only(left: index == 0 ? 0 : 20),
                child: Container(
                  width: width / 4,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: tabSelectPageIndex == index
                          ? mainColors
                          : Colors.white),
                  child: Text(
                    "data",
                    style: TextStyle(
                        fontSize: 20,
                        color: tabSelectPageIndex == 1
                            ? Colors.white
                            : Colors.black),
                  ),
                ),
              ),
            ),
          )
        ]),
        bottomNavigationBar: Container(
          alignment: Alignment.center,
          width: double.infinity,
          color: Colors.white,
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Container(
                        child: Text(
                      "Your Trip Count",
                      style: TextStyle(fontSize: 15, color: subTitleColor),
                    )),
                    Spacer(),
                    Container(
                        child: Text(
                      "\$ ${widget.model.price}",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: titleColor),
                    )),
                    Spacer()
                  ],
                ),
              ),
              Column(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                        alignment: Alignment.center,
                        width: width / 2.5,
                        height: width / 7,
                        decoration: BoxDecoration(
                            color: mainColors,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ),
                  Spacer()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
