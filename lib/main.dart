
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:biofpo_message/biofpo_message.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'BioFpo Message Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Directionality(textDirection: TextDirection.rtl, child:  MessageDemoScreen()),
    );
  }
}

class MessageDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BioFpo Message Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                BioFpoMessage.showSuccess(
                  title: "موفقیت",
                  message: "عملیات با موفقیت انجام شد",

                );
              },
              child: Text("نمایش پیام موفقیت"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                BioFpoMessage.showError(
                  title: "خطا",
                  message: "مشکلی رخ داده است",
                );
              },
              child: Text("نمایش پیام خطا"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                BioFpoMessage.showInfo(
                  title: "اطلاعات",
                  message: "این یک پیام اطلاعاتی است",
                );
              },
              child: Text("نمایش پیام اطلاعاتی"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
