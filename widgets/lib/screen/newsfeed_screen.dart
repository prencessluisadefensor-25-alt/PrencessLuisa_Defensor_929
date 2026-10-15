import 'package:flutter/material.dart';
import 'package:widgets/components/globalappbar_component.dart';
import 'package:widgets/components/newsfeedcomponent.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {

  final List<Map<String, String>> newsfeed = [
    {
      "username": "John Doe",
      "timeposted": "2 hours ago",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
    },
    {
      "username": "Jane Smith",
      "timeposted": "1 hour ago",
      "status": "Learning Flutter is fun!",
      "likes": "250",
      "comments": "40",
      "shares": "15",
    },
    {
      "username": "Michael Cruz",
      "timeposted": "3 hours ago",
      "status": "Working on my new project.",
      "likes": "89",
      "comments": "12",
      "shares": "4",
    },
    {
     "username": "Alex Santos",
     "timeposted": "4 hours ago",
     "status": "Flutter development today!",
     "likes": "300",
     "comments": "50",
      "shares": "20",
    },
    {
     "username": "Nahj Dalde",
     "timeposted": "5 hours ago",
     "status": "I have a good day!",
     "likes": "150",
     "comments": "16",
     "shares": "9",
    },
    {
     "username": "Justin Pena",
     "timeposted": "6 hours ago",
     "status": "I enjoyed Flutter!",
     "likes": "125",
     "comments": "13",
     "shares": "17",
    },
    {
     "username": "Alexa Azucena",
     "timeposted": "7 hours ago",
     "status": "I have so much fun!",
     "likes": "310",
     "comments": "8",
     "shares": "21",
   },
   {
     "username": "Christian Tan",
     "timeposted": "8 hours ago",
     "status": "Flutter development today!",
     "likes": "375",
     "comments": "40",
     "shares": "18",
  },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),

      body: ListView.builder(
        padding: const EdgeInsets.all(10),

        itemCount: newsfeed.length,

        itemBuilder: (context, index) {
          final post = newsfeed[index];

          return Newsfeedcomponent(
            username: post["username"],
            status: post["status"],
            numberoflikes: post["likes"],
            numberofcomments: post["comments"],
            numberofshares: post["shares"],
          );
        },
      ),
    );
  }
}
