import 'package:flutter/material.dart';
import 'package:home_work/constant/colors.dart';
import 'package:home_work/data/test_data.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../detailsPage/detailPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    List categories = [
      'BangalDesh',
      'india',
      'napel',
      'japan',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(color: secondColor),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hei, Jhon Willy",
                                style: TextStyle(
                                    color: subTitleColor, fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Discover your destination for Holiday",
                                maxLines: 4,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ]),
                      ),
                      Spacer(),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage('Images/profile.png'))),
                      ),
                    ],
                  ),
                  Spacer(),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: Icon(
                          IconlyLight.search,
                          color: mainColors,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text("Categories",
              style: TextStyle(color: titleColor, fontSize: 30)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: HorizontalList(
              itemCount: categories.length,
              spacing: 20,
              itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 70,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('Images/profile.png'))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          categories[index],
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              overflow: TextOverflow.ellipsis),
                        ),
                      )
                    ]),
                  )),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text("Categories",
                  style: TextStyle(
                      color: titleColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 20,
              ),
              Text("Categories",
                  style: TextStyle(color: subTitleColor, fontSize: 18)),
            ],
          ),
        ),
        // Expanded(
        //   child: GridView.builder(
        //       itemCount: 4,
        //       // physics: NeverScrollableScrollPhysics(),
        //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //           crossAxisCount: 2,
        //           childAspectRatio: 0.8,
        //           mainAxisSpacing: 20),
        //       itemBuilder: (context, index) => Stack(
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.only(
        //                     left: 20.0, right: 20, bottom: 10),
        //                 child: Container(
        //                   decoration: boxDecorationDefault(
        //                     color: Colors.white,
        //                   ),
        //                 ),
        //               ),
        //               Positioned(
        //                   top: 0,
        //                   left: 15,
        //                   right: 15,
        //                   child: Container(
        //                     width: 70,
        //                     height: 150,
        //                     decoration: BoxDecoration(
        //                         borderRadius: BorderRadius.circular(30),
        //                         image: DecorationImage(
        //                             fit: BoxFit.cover,
        //                             image: AssetImage('Images/profile.png'))),
        //                   )),
        //               Positioned(
        //                   right: 30,
        //                   top: 10,
        //                   child: Container(
        //                     width: 70,
        //                     height: 40,
        //                     decoration: BoxDecoration(
        //                         color: subTitleColor,
        //                         borderRadius: BorderRadius.circular(15)),
        //                     child: Padding(
        //                       padding: const EdgeInsets.all(8.0),
        //                       child: Row(
        //                         children: [
        //                           Icon(IconlyLight.star, color: Colors.white),
        //                           SizedBox(width: 10),
        //                           Text(
        //                             '5',
        //                             style: TextStyle(
        //                                 fontSize: 20, color: Colors.white),
        //                           )
        //                         ],
        //                       ),
        //                     ),
        //                   )),
        //               Positioned(
        //                   top: 170,
        //                   child: Padding(
        //                     padding: const EdgeInsets.only(left: 30.0),
        //                     child: Text(
        //                       "fujinomiya",
        //                       style: TextStyle(
        //                           color: titleColor,
        //                           fontSize: 18,
        //                           fontWeight: FontWeight.bold),
        //                     ),
        //                   )),
        //               Positioned(
        //                   top: 200,
        //                   child: Padding(
        //                     padding: const EdgeInsets.only(
        //                         left: 30.0, top: 15, right: 30),
        //                     child: Row(
        //                         mainAxisAlignment:
        //                             MainAxisAlignment.spaceBetween,
        //                         children: [
        //                           Text(
        //                             'data',
        //                             style: TextStyle(
        //                                 color: mainColors, fontSize: 18),
        //                           ),
        //                           Text(
        //                             'data',
        //                             style: TextStyle(
        //                                 color: mainColors, fontSize: 18),
        //                           )
        //                         ]),
        //                   ))
        //             ],
        //           )),
        // )

        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: HorizontalList(
            itemCount: Test_data().data.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => DetailPage(
                            model: Test_data().data[index],
                          )))),
              child: Container(
                width: 200,
                height: 220,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        Test_data().data[index].img_url))),
                          ),
                          Positioned(
                              right: 15,
                              top: 10,
                              child: Container(
                                width: 80,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: subTitleColor.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(IconlyBold.star,
                                          color: Colors.white),
                                      SizedBox(width: 10),
                                      Text(
                                        Test_data().data[index].like,
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                      Spacer(),
                      Text(
                        Test_data().data[index].name,
                        style: TextStyle(
                            color: titleColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Test_data().data[index].countryName,
                              style:
                                  TextStyle(color: subTitleColor, fontSize: 18),
                            ),
                            Text(
                              '\$ ' + Test_data().data[index].price,
                              style: TextStyle(color: mainColors, fontSize: 18),
                            )
                          ]),
                    ]),
              ),
            ),
          ),
        )
      ],
    );
  }
}
