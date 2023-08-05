import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // List finalData = [];
  @override
  Widget build(BuildContext context) {

    final h = ModalRoute.of(context)!.settings.arguments as List;

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(45),
          child: const Text(
            "શ્રી મંત ભાગવત ગીત ",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        // actions: [
        //   IconButton(
        //       onPressed: () async {
        //         List decodeData = jsonDecode(jsonData);
        //
        //         setState(() {
        //           finalData = decodeData;
        //         });
        //       },
        //       icon: const Icon(Icons.download))
        // ],
        backgroundColor: Colors.blueAccent.shade100,
      ),
      body: ListView.builder(
        itemCount: h.length,
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'detail_page', arguments: [
                h[i]['id'],
                h[i]['title'],
                h[i]['sholka'],
                h[i]['meaning'],
                h[i]['english']
              ]);
              print("${h[i]['id']}");
            },
            child: Card(
              elevation: 3,
              child: Container(
                height: 70,
                alignment: Alignment.center,
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade50,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "${h[i]['id']}",
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  title: Text("${h[i]['title']}"),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}