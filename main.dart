import 'package:flutter/material.dart';

void main() {
  runApp(const SleepTrackerApp());
}

class SleepTrackerApp extends StatelessWidget {
  const SleepTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SleepHomePage(),
    );
  }
}

class SleepHomePage extends StatelessWidget {
  SleepHomePage({super.key});

  final Color primaryColor = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F3FF),
      appBar: AppBar(
        title: const Text("Sleep Tracker"),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Text(
              "Good Night!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Stack Widget
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Today's Sleep",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "8hr 00mins",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.nightlight_round,
                    color: Colors.deepPurple,
                    size: 40,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Row Widget
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                sleepInfoCard(
                  "Bed Time",
                  "10:00 PM",
                  Icons.bed,
                ),
                sleepInfoCard(
                  "Wake Up",
                  "6:00 AM",
                  Icons.alarm,
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Weekly Goal",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: const [
                  LinearProgressIndicator(
                    value: 0.8,
                    minHeight: 10,
                  ),
                  SizedBox(height: 10),
                  Text("80% of your weekly goal achieved"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sleepInfoCard(String title, String value, IconData icon) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.deepPurple, size: 30),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
