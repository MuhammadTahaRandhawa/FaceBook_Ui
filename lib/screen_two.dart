import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  static const String id='screen_two';
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Muhammad Taha'),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: ListView.builder(itemCount: 15, itemBuilder: (context , index){
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                  ),
                  title: Text('Umm e Amara'),
                  subtitle: Text('Hello'),
                  trailing: Icon(Icons.looks_one ,),
                );
              },),
            ),

            Expanded(
              flex:1,
              child: TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Click here to move back')),
            )

          ],
        ),
      ),
    );
  }
}
