import 'package:anas_apa_/screen3.dart';
import 'package:anas_apa_/splash.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:anas_apa_/screen1.dart';

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text(
          'Instagram',
          style: TextStyle(
              color: Colors.white, fontStyle: FontStyle.italic, fontSize: 43),
        ),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.linked_camera_outlined)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.favorite_outline_sharp)),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => Screen()));
            },
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded)),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 245, 177, 200),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return screen3();
                    }));
                  },
                  title: Text('Person$index'),
                  subtitle: Text('message$index'),
                  leading: const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      'assets/images/d213bbbf615c603059d1deef87b9adb4.jpg',
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.sms_outlined),
                  ),
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider(
                  color: Colors.pink,
                  thickness: 0.6,
                );
              },
              itemCount: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) => Screen()));
                },
                child: Text(
                  'Logout',
                  style: TextStyle(
                      color: Colors.pink[900],
                      fontSize: 17,
                      fontWeight: FontWeight.w800),
                )),
          )
        ],
      ),
    );
  }
}
