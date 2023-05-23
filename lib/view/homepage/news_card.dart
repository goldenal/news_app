import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class News_card extends StatelessWidget {
  final String title;
  const News_card({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Padding(
        padding:  EdgeInsets.all(8.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
              maxLines: 2,
              style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.black),),
            SizedBox(height: 19.h,),
            Row(children: [
              Text("5h ago",
                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Colors.black),),
              SizedBox(width: 8.w,),
              Text("🔘 5 min read",

                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Colors.black),),
              Spacer(),
              Icon(Icons.bookmark_border,size: 24.w,)
            ],)

          ],
        ),
      ),
    );
  }
}
