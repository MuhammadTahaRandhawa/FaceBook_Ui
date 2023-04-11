import 'package:flutter/material.dart';
import 'package:chapter4/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        toolbarHeight: 90,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'facebook',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  width: 130,
                ),
                Icon(
                  Icons.search,
                  size: 30,
                  shadows: [Shadow(color: Colors.white, blurRadius: 50)],
                ),
                Icon(
                  Icons.message_outlined,
                  size: 30,
                  shadows: [Shadow(color: Colors.white, blurRadius: 50)],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.people_outline,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.live_tv,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.shopify_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.notification_important_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.grey.shade900,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Divider(
              color: Colors.white,
              thickness: 1.5,
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 20),
                      child: TextFormField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              hintText: 'What\'s on your mind?',
                              hintStyle: TextStyle(color: Colors.white))),
                    ),
                  ),
                  const Icon(
                    Icons.image,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 05,
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://st2.depositphotos.com/47036610/49431/v/600/depositphotos_494318156-stock-illustration-lionel-messi-lionel-rumors-moved.jpg'),
                          ),
                          title: Text(
                            'Muhammad Taha',
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            'Suggested for you - 13h',
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Text(
                            'X',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          'Ronaldo levae Manchester United for 100 million\nMessi turning down 438 mil per year just for Barcelone',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image(
                            image: NetworkImage(
                                'https://st.depositphotos.com/1837549/1919/i/450/depositphotos_19190963-stock-photo-leo-messi-of-fc-barcelona.jpg')),
                        ListTile(
                          leading: Text('👍♥27', style: TextStyle(color: Colors.white , ),),
                          trailing: Text('2 comments', style: TextStyle(color: Colors.white , ),),

                        ),
                        Divider(color: Colors.white, thickness: 1,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('👍Like' ,style: TextStyle(color: Colors.white , ),),
                            SizedBox(width: 10,),
                            Text('💬Comment',style: TextStyle(color: Colors.white , ),),
                            SizedBox(width: 10,),
                            Text('➡Share' , style: TextStyle(color: Colors.white , ),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        const Divider(
                          color: Colors.black,
                          thickness: 05,
                        ),
                      ],
                    );
                  }),
            ),

          ],
        ),
      ),
    );
  }
}
