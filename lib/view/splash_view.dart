import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getxmvvm/resources/assets/assets_images.dart';
import 'package:getxmvvm/utils/utils.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("title".tr),),
      body:
      Image(image: AssetImage(AssetsImages.logo),fit: BoxFit.cover,) 
      // Center(
      //   child: FloatingActionButton(
      //     onPressed: () {
      //       Utils.toastMassageCenter("NOUMAN ZINDANI");
      //     },
      //   ),
      // ),
    );
  }
}
