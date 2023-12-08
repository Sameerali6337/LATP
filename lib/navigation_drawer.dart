import 'package:flutter/material.dart';
import 'package:latp/screen_four.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 180, 130, 190),
        appBar: AppBar(
          elevation: 3.0,
          backgroundColor: const Color.fromARGB(255, 56, 6, 65),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 56, 6, 65)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1607110/pexels-photo-1607110.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  ),
                  accountName: Text('Sameer Ali'),
                  accountEmail: Text('sameeralirehmani726@gmail.com')),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pushNamed(context, ScreenFour.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.calculate),
                title: const Text('Calculator'),
                onTap: () {},
              )
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenFour()));
                },
                child: const Text('navigation drawer'),
              ),
            ),
          ],
        ));
  }
}
