import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            // centerTitle: false,
            backgroundColor: Colors.teal,
            title: const Text('WhatsApp'),
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.search),
              ),
              //Icon(Icons.camera_alt),
              Text('Chats'),
              Text('Status'),
              Text('Calls'),
            ]),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              //const Icon(Icons.more_vert_outlined),

              PopupMenuButton(
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                            value: '1', child: Text('New Group')),
                        const PopupMenuItem(
                            value: '2', child: Text('Settings')),
                        const PopupMenuItem(value: '3', child: Text('Log Out')),
                      ]),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(
            children: [
              const Text('Camera'),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const ListTile(
                        title: Text('Annesha Guha'),
                        subtitle: Text('wassup? how r you?'),
                        trailing: Text('12:06 pm'),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/8159657/pexels-photo-8159657.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=170.625&fit=crop&h=276.25'),
                        ));
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return  ListTile(
                        title: const Text('Annesha Guha'),
                        subtitle:const Text('12:06 pm') ,
                        leading:  Container(

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 3,

                            )
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/8159657/pexels-photo-8159657.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=170.625&fit=crop&h=276.25'),
                          ),
                        ));
                  }),

              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return  ListTile(
                        title: const Text('Annesha Guha'),
                        subtitle: index % 2 == 0 ? const Text( 'You missed a call', style: TextStyle(
                          color: Colors.red
                        ),): const Text('Call for 23 m : 20 s',style: TextStyle(
                            color: Colors.green
                        ),),
                        trailing: Icon(index % 3 ==0 ? Icons.call : Icons.video_call_sharp),
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/8159657/pexels-photo-8159657.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=170.625&fit=crop&h=276.25'),
                        ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
