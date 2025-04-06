import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ApGlobalFunctions {
  ApGlobalFunctions._();

  static void changeStatusBarColor({
    required Color color,
    Brightness? iconBrightness,
    Brightness? brightness,
  }) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: color, //or set color with: Color(0xFF0000FF)
        statusBarIconBrightness:
            iconBrightness ?? Brightness.dark, // For Android (dark icons)
        statusBarBrightness: brightness ?? Brightness.light,
      ),
    );
  }





    
  
  static void showCustomSnackbar({
    required String message,
    required bool isSuccess,
    bool isTop = false,
  }) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      dismissDirection:
          isTop ? DismissDirection.startToEnd : DismissDirection.down,
      backgroundColor:
          isSuccess ? Colors.green : Colors.red,
      content: Text(message),
      margin: isTop
          ? EdgeInsets.only(
              bottom: MediaQuery.of(navigatorKey.currentState!.context)
                      .size
                      .height -
                  160,
              right: 20,
              left: 20,
            )
          : null,
    );
    ScaffoldMessenger.of(navigatorKey.currentState!.context).showSnackBar(
      snackBar,
    );
  }

  static noItemFound(
      {String? text, double? size, required BuildContext context}) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double adjustedHeight =
        (screenHeight - 200).clamp(0.0, double.infinity);

    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: SizedBox(
        height: size ?? adjustedHeight,
        //height: size ?? MediaQuery.of(context).size.height - 200,
        child: Center(
          child: Text(text ?? 'No item found',
             // style: AppTextStyle(context).bodyTextSmall
             ),
        ),
      ),
    );
  }

  static getPickImageAlert(
      {required BuildContext context,
      required VoidCallback pressCamera,
      required VoidCallback pressGallery}) {
    showModalBottomSheet<void>(
      showDragHandle: true,
      isScrollControlled: true,
      context: context,
      constraints: const BoxConstraints(maxWidth: 640),
      builder: (context) {
        return Container(
          color: Theme.of(context).colorScheme.surface,
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: pressGallery,
                child: Container(
                  margin: EdgeInsets.only(bottom: 1.w),
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  child: ListTile(
                    leading: const Icon(
                      Icons.attach_file,
                    ),
                    title: Text('Gallerry'),
                  ),
                ),
              ),
              InkWell(
                onTap: pressCamera,
                child: Container(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  child: ListTile(
                    leading: const Icon(
                      Icons.add_a_photo,
                    ),
                    title: Text('Take photo'),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

 

 



  static showSnacbarMethod({
    required BuildContext context,
    required String message,
    required bool isSuccess,
  }) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: isSuccess ? Colors.green : Colors.red,
        content: Text(message),
      ),
    );
  }

  static GlobalKey<ScaffoldMessengerState> getSnackbarKey() {
    final snackbarKey = GlobalKey<ScaffoldMessengerState>();
    return snackbarKey;
  }

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
