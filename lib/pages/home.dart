import 'package:flutter/material.dart';

// import 'package:page_transition/page_transition.dart';

import 'package:flutter_advanced_routing_app/models/email.dart';
import 'package:flutter_advanced_routing_app/pages/detail.dart';

class HomePage extends StatelessWidget {
  final List<EmailModel> emails = [
    EmailModel(
      sender: 'American Express',
      object: 'The average of your annual balance for 2020',
      body:
          'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.',
      date: '23/04/2021',
      color: Colors.orange,
    ),
    EmailModel(
      sender: 'Google',
      object: 'Google Workspace: your invoice is available for ngiuliani.com',
      body:
          'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.',
      date: '22/04/2021',
      color: Colors.green,
    ),
    EmailModel(
      sender: 'Facebook',
      object: 'Your Facebook Ad invoice (Account ID: 000000000)',
      body:
          'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.',
      date: '21/04/2021',
      color: Colors.blue,
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
      title: Text('Inbox'),
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
      itemBuilder: (context, index) => email(context, index),
    );
  }

  Widget email(BuildContext context, int index) {
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
          fontSize: 12,
          color: Colors.grey,
        ),
      ),
      onTap: () {
        Navigator.pushNamed(
          context,
          DetailPage.routeName,
          arguments: EmailModel(
            sender: emails[index].sender,
            object: emails[index].object,
            body: emails[index].body,
            date: emails[index].date,
            color: emails[index].color,
          ),
        );
        // Navigator.push(
        //   context,
        //   PageTransition(
        //     type: PageTransitionType.bottomToTop,
        //     child: DetailPage(),
        //     settings: RouteSettings(
        //       arguments: EmailModel(
        //         sender: emails[index].sender,
        //         object: emails[index].object,
        //         body: emails[index].body,
        //         date: emails[index].date,
        //         color: emails[index].color,
        //       ),
        //     ),
        //   ),
        //   // MaterialPageRoute(
        //   //   builder: (context) => DetailPage(),
        //   //   settings: RouteSettings(
        //   //     arguments: EmailModel(
        //   //       sender: emails[index].sender,
        //   //       object: emails[index].object,
        //   //       body: emails[index].body,
        //   //       date: emails[index].date,
        //   //       color: emails[index].color,
        //   //     ),
        //   //   ),
        //   // ),
        // );
      },
    );
  }
}
