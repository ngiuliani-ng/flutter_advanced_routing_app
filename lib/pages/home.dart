import 'package:flutter/material.dart';

import 'package:flutter_advanced_routing_app/models/email.dart';

class HomePage extends StatelessWidget {
  final List<EmailModel> emails = [
    EmailModel(
      sender: "American Express",
      object:
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
      date: "23 April",
      color: Colors.grey,
    ),
    EmailModel(
      sender: "Google",
      object:
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
      date: "22 April",
      color: Colors.red,
    ),
    EmailModel(
      sender: "Facebook",
      object:
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
      date: "21 April",
      color: Color.fromRGBO(45, 136, 255, 1),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }

  Widget appBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.dehaze),
        onPressed: () {},
      ),
      title: Text("Inbox"),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget body() {
    return ListView.builder(
      itemCount: emails.length,
      itemBuilder: (context, index) => email(index),
    );
  }

  Widget email(int index) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: emails[index].color,
        foregroundColor: Colors.white,
        child: Text(
          emails[index].sender.substring(0, 2).toUpperCase(),
        ),
      ),
      title: Text(emails[index].sender),
      subtitle: Text(
        emails[index].object,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        emails[index].date,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      onTap: () {},
    );
  }
}
