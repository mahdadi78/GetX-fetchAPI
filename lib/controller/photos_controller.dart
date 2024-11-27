// ignore_for_file: avoid_print

import 'package:flutter_getx_exxample/model/photo_model.dart';
import 'package:flutter_getx_exxample/services.dart';
import 'package:get/get.dart';

class PhotosController extends GetxController {
  //!  I had a problem with this part. I should have paid attention to the type of photolist.
  var photosList = <PhotoModel>[].obs;
  //!.................................
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getAllPhotos2();
  }

  void getAllPhotos2() async {
    isLoading(true);

    try {
      isLoading(true);
      var eachPhotos = await RemoteServices.fetchPhotos();
      photosList(eachPhotos);
    } finally {
      isLoading(false);
    }
  }

  getAllPhotos() async {
    var photos = await RemoteServices.fetchPhotos();
    if (photos.isEmpty) {
      print('we have an Error!!!!!!!');
    } else {
      photosList.value = photos;
    }
  }
}
