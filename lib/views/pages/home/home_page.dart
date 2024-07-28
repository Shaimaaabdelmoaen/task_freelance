import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{
  static const routeName='HomePage';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> messages = [
      {
        'name': 'Shane Martinez',
        'message': 'On my way home but I needed to stop by the book store to...',
        'time': '5 min',
        'imageUrl': 'assets/images/1.png',
        'status': 'online',
      },
      {
        'name': 'Katie Keller',
        'message': 'I\'m watching Friends. What are you doing?',
        'time': '15 min',
        'imageUrl': 'assets/images/2.png',
        'status': 'offline',
      },
      {
        'name': 'Stephen Mann',
        'message': 'I\'m working now. I\'m making a deposit for our company.',
        'time': '1 hour',
        'imageUrl': 'assets/images/3.png',
        'status': 'online',
      },
      {
        'name': 'Shane Martinez',
        'message': 'I really find the subject very interesting. I\'m enjoying all my...',
        'time': '5 hour',
        'imageUrl': 'assets/images/4.png',
        'status': 'offline',
      },
      {
        'name': 'Melvin Pratt',
        'message': 'Great seeing you. I have to go now. I\'ll talk to you later.',
        'time': '5 hour',
        'imageUrl': 'assets/images/5.png',
        'status': 'offline',
      },
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: (){},
                    icon:const Icon(Icons.search_sharp,
                      size: 30,
                    )
                ),
              ),
              const Text('Messages',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 500,
                child: ListView.separated(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    return ListTile(
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(message['imageUrl']!),
                          ),
                          if (message['status'] == 'online')
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                  border: Border.all(color: Colors.white, width: 2),
                                ),
                              ),
                            ),
                        ],
                      ),
                      title: Text(message['name']!,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      subtitle: Text(message['message']!),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            message['time']!,
                            style: const TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          const SizedBox(height: 8,),
                          if (index == 0)
                             Container(
                               height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: Colors.indigo,
                                  borderRadius: BorderRadius.all(Radius.circular(12)
                                  )
                              ),
                              child: const Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                        ],
                      ),
                      onTap: () {},
                    );
                  },
                  separatorBuilder: (context, index) {
                    return  const SizedBox(height: 6,);
                  },
                ),
              ),
        
        
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        shape: const CircleBorder(eccentricity: .5),
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.add,color: Colors.white,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.messenger_outline), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: ''),

        ],
      ),
    );
  }

}