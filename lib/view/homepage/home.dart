import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:newsapp/view/homepage/controller.dart';
import 'package:newsapp/view/homepage/detailed_view.dart';
import 'package:newsapp/view/homepage/news_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final home = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    home.fetch_stories(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "News",
          style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: Obx(() {
        if (home.isLoading == true) {
          return Center(
            child: LoadingAnimationWidget.twistingDots(
              leftDotColor: const Color(0xFF1A1A3F),
              rightDotColor: Colors.pink.shade500,
              size: 30.w,
            ),
          );
        } else {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Trending",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        "Newest",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Image.asset(
                    "assets/images/news.png",
                    height: 358.h,
                    width: 343.w,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Top 10",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        "Technology",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        "Business",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),


                  GetBuilder<HomeController>( // specify type as Controller// intialize with the Controller
                    builder: (value) =>
                        ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: home.topstories.value.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DetailedView(storyModel:home.topstories.value[index] ,)));
                                  },
                                  child: News_card(title:home.topstories.value[index].title ,));
                            }),
                  ),

                ],
              ),
            ),
          );
        }
      }),
    );
  }
}
