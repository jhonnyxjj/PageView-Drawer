// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meu_projeto/Pages/pageViews/one_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  int indexBottomNavigationBar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(
                'tromtr',
                style: TextStyle(fontSize: 16),
              ),
              accountEmail: Text(
                'tromtr@gmail.com',
                style: TextStyle(fontSize: 18),
              ),
              currentAccountPicture: CircleAvatar(
                child: Text('Tr'),
              ),
            ),
            ListTile(
              title: const Text(
                'page 1',
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                setState(() {
                  indexBottomNavigationBar = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'page 2',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                setState(() {
                  indexBottomNavigationBar = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'page 3',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                setState(() {
                  indexBottomNavigationBar = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          const OnePage(),
          Container(color: Colors.red),
          Container(color: Colors.yellow),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavigationBar,
        onTap: (int page) {
          setState(
            () {
              indexBottomNavigationBar = page;
            },
          );
          _pageController.animateToPage(
            page,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service_sharp),
            label: 'Item 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service_sharp),
            label: 'Item 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service_sharp),
            label: 'Item 3',
          ),
        ],
      ),
    );
  }
}
