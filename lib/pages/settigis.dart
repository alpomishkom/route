import 'package:flutter/material.dart';

import '../service/app_rout_name.dart';

class SettigisPages extends StatelessWidget {
  const SettigisPages({super.key});

  @override
  Widget build(BuildContext context) {
    String? str = ModalRoute.of(context)?.settings.arguments as String?;
    TextEditingController vmCantrollerSettigs = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("${str ?? 'SettigisPages'}"),
        leading: IconButton(
          onPressed: () {
            if (vmCantrollerSettigs.text.isNotEmpty) {
              Navigator.popAndPushNamed(context, RoutsName.detaelPages,
                  arguments: vmCantrollerSettigs.text);
            }
          },
          icon: Icon(Icons.keyboard_arrow_left_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (vmCantrollerSettigs.text.isNotEmpty) {
                  Navigator.pushNamed(
                    context,
                    RoutsName.cartPages,
                    arguments: vmCantrollerSettigs.text,
                  );
                }
              },
              child: const Icon(Icons.keyboard_arrow_right_outlined),
            )
          ],
        ),
      ),
    );
  }
}
