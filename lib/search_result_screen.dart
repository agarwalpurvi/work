
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'livestream_screen.dart';  // Import the next screen

class SearchResultsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
        leading : Icon(Icons.arrow_back),


        ),

      body: Column(
        children: [

          TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              suffixIcon: Icon(Icons.search),
            ),
          ),
          // Tab bar for Players, Teams, and Tournaments
          DefaultTabController(
            length: 3,
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(text: 'Players'),
                    Tab(text: 'Teams'),
                    Tab(text: 'Tournaments'),
                  ],
                ),
                Container(
                  height: 300, // Height for the TabBarView
                  child: TabBarView(
                    children: [
                      // Replace with your list of players, teams, etc.
                      ListView(
                        children: [
                          ListTile(
                            title: Text('@baskar'),
                            subtitle: Text('Baskar'),
                            trailing: ElevatedButton(
                              onPressed: () {
                                // Navigate to LiveStreamScreen
                                Get.to(() => LiveStreamScreen());
                              },
                              child: Text('Follow Back'),
                            ),
                          ),
                          // Add more ListTiles for other players/teams
                        ],
                      ),
                      ListView(
                        children: [
                          ListTile(
                            title: Text('@teamcalifornia'),
                            subtitle: Text('California Cricket Club'),
                            trailing: ElevatedButton(
                              onPressed: () {
                                // Navigate to LiveStreamScreen
                                Get.to(() => LiveStreamScreen());
                              },
                              child: Text('Follow Back'),
                            ),
                          ),
                          // Add more ListTiles for teams
                        ],
                      ),
                      ListView(
                        children: [
                          ListTile(
                            title: Text('@boxcricketleague'),
                            subtitle: Text('Box Cricket League 2024'),
                            trailing: ElevatedButton(
                              onPressed: () {
                                // Navigate to LiveStreamScreen
                                Get.to(() => LiveStreamScreen());
                              },
                              child: Text('Follow Back'),
                            ),
                          ),
                          // Add more ListTiles for tournaments
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
