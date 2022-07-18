import 'package:contacts_app/pages/edit_contact.dart';
import 'package:flutter/material.dart';

class ContactId extends StatelessWidget {
  final String name;
  final String number;
  const ContactId({required this.name, required this.number});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Contact ID"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const EditPage()));
                },
                icon: const Icon(Icons.edit))
          ],
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.network(
              "https://www.blexar.com/avatar.png",
              height: 180,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                number,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ));
  }
}
