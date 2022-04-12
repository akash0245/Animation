import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationScreen extends StatelessWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),

                CarouselSlider(
                  options: CarouselOptions(
                      height: 330.0,
                      disableCenter: true,
                      viewportFraction: 0.6,
                      enableInfiniteScroll: false),
                  items: [1,2,3,4,5,6].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.white
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    i%2==0?
                                    Positioned(
                                        top: -160,
                                        right: -45,
                                        left: -45,
                                        child: Container(
                                            child: Lottie.asset('assets/lottie/lottie1.json', )))
                                        :
                                    Positioned(
                                        top: -160,
                                        right: -45,
                                        left: -45,
                                        child: Lottie.asset('assets/lottie/lottie2.json')),


                                    i%2==0?
                                    Positioned(
                                        bottom: -160,
                                        right: -45,
                                        left: -45,
                                        child: Container(
                                            child: Lottie.asset('assets/lottie/lottie1.json',)))
                                        :
                                    Positioned(
                                        bottom: -160,
                                        right: -45,
                                        left: -45,
                                        child: Lottie.asset('assets/lottie/lottie2.json')),
                                    Center(child: Text('text $i', style: TextStyle(fontSize: 16.0,),)),
                                  ],
                                ),
                              ),
                              Container(
                                height: 45,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.yellow
                                ),
                                child: Center(child: Text("Claim Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 330,
                  child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return Container(
                        width: MediaQuery.of(context).size.width*0.57,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  i%2==0?
                                  Positioned(
                                      top: -160,
                                      right: -45,
                                      left: -45,
                                      child: Container(
                                          child: Lottie.asset('assets/lottie/lottie1.json', )))
                                      :
                                  Positioned(
                                      top: -160,
                                      right: -45,
                                      left: -45,
                                      child: Lottie.asset('assets/lottie/lottie2.json')),
                                  i%2==0?
                                  Positioned(
                                      bottom: -160,
                                      right: -45,
                                      left: -45,
                                      child: Container(
                                          child: Lottie.asset('assets/lottie/lottie1.json',)))
                                      :
                                  Positioned(
                                      bottom: -160,
                                      right: -45,
                                      left: -45,
                                      child: Lottie.asset('assets/lottie/lottie2.json')),
                                  Center(child: Text('text $i', style: TextStyle(fontSize: 16.0,),)),
                                ],
                              ),
                            ),
                            Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.yellow
                              ),
                              child: Center(child: Text("Claim Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),

                InkWell(
                  onTap: (){
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0)
                            ),
                            child: Center(
                              child: Text('Demo App'),
                            ),
                          );
                        });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Lottie.asset('assets/lottie/lottie3.json',fit: BoxFit.fill,height:100,width: 250),
                      Center(child: Text("Win Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
