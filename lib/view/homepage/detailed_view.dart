import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/model/story.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailedView extends StatelessWidget {
  final StoryModel storyModel;
  const DetailedView({Key? key,required this.storyModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        actions: [Icon(Icons.bookmark_border_outlined,size: 24.w,),SizedBox(width: 10.w,)],
        title: Text("Story",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Colors.black),),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            Text(storyModel.title as String,
              style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w600,color: Colors.black),),
            SizedBox(height: 20.h,),
            Row(
              children: [
                Image.asset(
                  "assets/images/avatar.png",
                  height: 24.w,
                  width: 24.w,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 6.w,),
                Text(storyModel.by as String,
                  style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.black),),
              ],
            ),
            SizedBox(height: 20.h,),
            Text("28 December, 2022 🔘 5 min read",
              style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.black),),
            SizedBox(height: 30.h,),
            Text("click here to read more ",
              style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff333333)),),
            SizedBox(height: 10.h,),
            GestureDetector(
              onTap: (){
                launch(storyModel.url as String);
              },
              child: Text("${storyModel.url as String}",
                style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Colors.blue),),
            ),
          ],
        ),
      ),
    );
  }
}
