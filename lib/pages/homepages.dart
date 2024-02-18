import 'package:flutter/material.dart';

import '../service/app_rout_name.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    String? str = ModalRoute.of(context)?.settings.arguments as String?;
    TextEditingController vmCantrollerHome = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("${str ?? 'HomePages'}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: vmCantrollerHome,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // TextModel model = TextModel();
                if(vmCantrollerHome.text.isNotEmpty) {
                  Navigator.pushNamed(context, RoutsName.detaelPages,arguments:vmCantrollerHome.text);
                }
              },
              child: const Icon(Icons.keyboard_arrow_right_outlined),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
