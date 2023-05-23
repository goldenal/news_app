import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BadNetwork extends StatelessWidget {
  const BadNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Icon(Icons.warning,color: Colors.pink.shade500,size: 50.w,),
              Text(
                "No Internet Connection",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.pink.shade500,
                  fontSize: 17.sp,
                ),
              ),
              Text(
                "Please check your connection and try again,"
                    ,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.pink.shade500,
                  fontSize: 17.sp,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                      left: 0, right: 0.0, top: 15.0, bottom: 15.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.pink.shade500,
                      ),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Center(
                    child: Text(
                      'OK',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.pink.shade500),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}