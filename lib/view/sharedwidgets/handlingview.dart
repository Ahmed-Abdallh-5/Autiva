import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/constans/constansappvalues.dart';

class HandlingViewallitems extends StatelessWidget {
  const HandlingViewallitems({super.key});

  @override
  Widget build(BuildContext context) {
    double ScreenHight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Shimmer.fromColors(
        baseColor: isDarkMode ? Colors.white12 : Colors.grey.shade300,
        highlightColor: isDarkMode ? Colors.white24 : Colors.grey.shade100,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreenWidth * .03),
          child: ListView(
            children: [
              SizedBox(
                height: ScreenHight * .03,
              ),
              Container(
                height: ScreenHight * .03,
                width: double.infinity,
                color: Theme.of(context).brightness == ThemeData.dark()
                    ? AppConstans.blackcolor
                    : AppConstans.Whitecolor,
              ),
              SizedBox(
                height: ScreenHight * .02,
              ),
              SizedBox(
                height: ScreenHight,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: ScreenHight * .21,
                          width: ScreenWidth * 0.35,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppConstans.Radious),
                            color:
                                Theme.of(context).brightness == ThemeData.dark()
                                    ? AppConstans.blackcolor
                                    : AppConstans.Whitecolor,
                          ),
                        ),
                      );
                    }),
              )

              // SizedBox(
              //   height: ScreenHight * .001,
              // ),
              // Container(
              //   height: ScreenHight * .21,
              //   width: ScreenWidth * 0.35,
              //   color: Theme.of(context).brightness == ThemeData.dark()
              //       ? AppConstans.blackcolor
              //       : AppConstans.Whitecolor,
              // )
            ],
          ),
        ));
  }
}
