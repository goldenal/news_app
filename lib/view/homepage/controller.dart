import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:newsapp/core/network_error.dart';
import 'package:newsapp/core/retrofit_instance.dart';
import 'package:newsapp/model/story.dart';

class HomeController extends GetxController {
  var topstories_id = [].obs;
  var topstories = [].obs;
  var isLoading = true.obs;


  fetch_stories(BuildContext context)async{

    List<StoryModel> stories = [];
    RetrofitClientInstance.getInstance()
        .getDataService()!.getTopStories().then((value) async{
         topstories_id.value = value!;

          for(int i= 0 ; i<=10; i++) {
            RetrofitClientInstance.getInstance()
                .getDataService()!.fetchSingleStory(value[i]).then((value) {
                  stories.add(value);
                  topstories.value = stories;
                  update();
            });
          }
         isLoading.value = false;

        // debugger();
    });


  }

}