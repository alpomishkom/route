import 'package:flutter/material.dart';

import '../service/app_rout_name.dart';

class CarPages extends StatelessWidget {
  const CarPages({super.key});

  @override
  Widget build(BuildContext context) {
    String? str = ModalRoute.of(context)?.settings.arguments as String?;
    TextEditingController vmCantrollerCardPages = TextEditingController();
    return  Scaffold(
     appBar: AppBar(
        title: Text("${str ?? 'CarPages'}"),
        leading: IconButton(
          onPressed: () {
            if(vmCantrollerCardPages.text.isNotEmpty) {
              Navigator.popAndPushNamed(context, RoutsName.setting,arguments:vmCantrollerCardPages.text);
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
                if (vmCantrollerCardPages.text.isNotEmpty) {
                  Navigator.pushNamed(
                    context,
                    RoutsName.cartPages,
                    arguments: vmCantrollerCardPages.text,
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
