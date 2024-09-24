// livestream_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/platform_selection_screen.dart';
// Next screen

class LiveStreamScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Stream / Record'),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Get.back(),  // Go back to previous screen
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Match ID: A2HD8ALK'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Titan XI vs Zeus Fours'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Match Date: 9 Aug, 2024 | Time: 1:00 PM'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('How do you want to capture the match?'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to platform selection screen
                  Get.to(() => PlatformSelectionScreen());
                },
                child: Text('Live Stream'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to platform selection screen
                  Get.to(() => PlatformSelectionScreen());
                },
                child: Text('Record & Upload'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

