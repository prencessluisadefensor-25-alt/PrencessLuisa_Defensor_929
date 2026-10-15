import 'package:flutter/material.dart';
import 'package:widgets/components/globalappbar_component.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<FriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),

      body: Center(
        child: Text("Friends Screen") ,
        ),
    );
  }
}