import 'package:contacts_app/pages/contact_id.dart';
import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final String contactname;
  final String contactnumber;
  const ContactTile({required this.contactname, required this.contactnumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Column(
        children: [
          ListTile(
              leading: const Icon(Icons.account_circle, size: 40),
              title: Text(
                contactname,
                style: const TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                contactnumber,
                style: const TextStyle(fontSize: 13),
              ),
              trailing: const Icon(Icons.menu_rounded),
              selectedTileColor: Colors.green[400],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ContactId(name: contactname, number: contactnumber)));
              }),
          const Divider(
            height: 1.5,
            thickness: 1.5,
          )
        ],
      ),
    );
  }
}
