import 'package:flutter/material.dart';
import 'package:insta/views/feed_View.dart';
import 'package:insta/views/reels_view.dart';
import 'package:insta/views/tagged_view.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final List<Widget> tabs = const [
    Tab(
      icon: Icon(
        Icons.home,
        color: Colors.grey,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.gamepad,
        color: Colors.grey,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
    ),
  ];

  final List<Widget> pages = [
    FeedView(),
    const ReelsView(),
    const TaggedView(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          '255',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text('Following',
                            style: TextStyle(color: Colors.grey[500])),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red[100],
                      ),
                      child: Container(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/two.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          '350',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Ali Jawad",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "|",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Text(
                "Flutter Developer + Marketing Intern",
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black),
                        child: const Center(
                          child: Text(
                            'Hello',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey),
                        child: const Center(child: Text('Hello')),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TabBar(
                tabs: tabs,
              ),
              Expanded(child: TabBarView(children: pages)),
            ],
          ),
        ),
      ),
    );
  }
}
