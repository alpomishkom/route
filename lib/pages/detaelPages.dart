import 'package:flutter/material.dart';

import '../service/app_rout_name.dart';

class DetailPages extends StatelessWidget {
  const DetailPages({super.key});

  @override
  Widget build(BuildContext context) {
    String? str = ModalRoute.of(context)?.settings.arguments as String?;
    TextEditingController vmCantrollerDetail = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("${str ?? 'DetailPages'}"),
        leading: IconButton(
          onPressed: () {
            if(vmCantrollerDetail.text.isNotEmpty) {
              Navigator.popAndPushNamed(context, RoutsName.homePages,arguments:vmCantrollerDetail.text);
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
              controller: vmCantrollerDetail,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // TextModel model = TextModel();
                if (vmCantrollerDetail.text.isNotEmpty) {
                  Navigator.pushNamed(context, RoutsName.detaelPages,
                      arguments: vmCantrollerDetail.text);
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
