import 'package:contacts_app/pages/edit_contact.dart';
import 'package:flutter/material.dart';

import '../widgets/contact_tile.dart';
class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conatacts"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> EditPage()));
          }, icon: const Icon(Icons.add))
        ],
        
      ),
      body: ListView(
        children: const [
          ContactTile(contactname: 'Muhammed', contactnumber: '7563288677'),
          ContactTile(contactname: 'Masood', contactnumber: '6453878712'),
          ContactTile(contactname: 'Adil', contactnumber: '7865442319'),
          ContactTile(contactname: 'Raju', contactnumber: '4536567789'),
          ContactTile(contactname: 'Rahhaan', contactnumber: '9822141580'),
          ContactTile(contactname: 'sudeep', contactnumber: '6256561799'),
          ContactTile(contactname: 'madhu', contactnumber: '7645453320'),
          ContactTile(contactname: 'muhan', contactnumber: '9976454533'),
          ContactTile(contactname: 'soman', contactnumber: '7865442319'),
          ContactTile(contactname: 'sahl', contactnumber: '6578784498'),
          ContactTile(contactname: 'amal', contactnumber: '9244561919'),
          ContactTile(contactname: 'adhul', contactnumber: '6256561799'),
        ],
      ),

    );
  }
}
