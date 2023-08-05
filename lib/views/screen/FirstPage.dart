import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List finalData = [];

  String jsonData = '';

  loadJson() async {
    jsonData = await rootBundle.loadString("assets/json/student_data.json");
  }

  @override
  void initState() {
    super.initState();
    loadJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/gifs/1.gif",
              height: 500,
              width: 500,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                List decodeData = jsonDecode(jsonData);

                setState(() {
                  finalData = decodeData;
                });
                Navigator.of(context)
                    .pushNamed('homePage', arguments: finalData);
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "અધ્યાય",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.blueAccent.shade100,
    );
  }
}
