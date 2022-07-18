import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Create Contact"),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 5,
            ),
            Image.network(
              "https://www.blexar.com/avatar.png",
              height: 60,
              width: 80,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: ("Enter Your Name")),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.contact_phone_outlined),
                    border: OutlineInputBorder(),
                    labelText: 'Number',
                    hintText: ("Enter Your Number")),
              ),
            ),
           ElevatedButton.icon(onPressed: (){
             print("Saved");
           }, icon:const Icon(Icons.save), label:const Text("Save"),)

          ],
        ));
  }
}
