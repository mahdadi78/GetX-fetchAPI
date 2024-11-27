import 'package:flutter/material.dart';
import 'package:flutter_getx_exxample/controller/photos_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  //در اینجا کلاس فتوکنلر را معرفی کردم

  @override
  Widget build(BuildContext context) {
    PhotosController controller = Get.put(PhotosController());
    return Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(title: const Text('GetX FetchAPI')),
        body: Scaffold(
            body: GetX<PhotosController>(
          builder: (_) => Text(controller.photosList.length.toString()),
        )));
  }
}
