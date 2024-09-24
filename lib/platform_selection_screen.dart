import 'package:flutter/material.dart';



class PlatformSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('SELECT THE STREAMING PLATFORM', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select the streaming platform'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Image.network('https://cdn.iconscout.com/icon/free/png-256/youtube-85-226402.png'),
                  iconSize: 100,
                  onPressed: () {
                    // YouTube platform selection action
                  },
                ),
                IconButton(
                  icon: Image.network('https://cdn.iconscout.com/icon/free/png-256/instagram-216-721958.png'),
                  iconSize: 100,
                  onPressed: () {
                    // Instagram platform selection action
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// TODO Implement this library.