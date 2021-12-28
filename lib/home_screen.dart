import 'package:colr_changer/data/data.dart';
import 'package:colr_changer/data/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      appBar: AppBar(
        title: const Text('Change color'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    context.read<MyClass>().firstcolor();
                  },
                  child: const Icon(Icons.color_lens_outlined)),
              label: 'Yellow'),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    context.read<MyClass>().secondColr();
                  },
                  child: const Icon(Icons.color_lens_outlined)),
              label: 'Blue Grey')
        ],
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: context.watch<MyClass>().colour1,
            child: const Center(child: Text('Color changes here')),
          ),
        ],
      )),
    );
  }
}
