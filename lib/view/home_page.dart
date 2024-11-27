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
            body: Obx(() => controller.isLoading.value
                ? const SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Center(
                      child: Text('Error to loading...'),
                    ),
                  )
                : SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Center(
                      child: Text(controller.photosList.length.toString()),
                    ),
                  ))));
  }
}
