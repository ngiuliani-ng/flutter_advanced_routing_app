import 'package:flutter/material.dart';

import 'package:flutter_advanced_routing_app/models/email.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EmailModel email = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: appBar(context, email),
      body: body(email),
    );
  }

  Widget appBar(BuildContext context, EmailModel email) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: email.color,
      title: Text(email.sender),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }

  Widget body(EmailModel email) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Text(email.body),
    );
  }
}
