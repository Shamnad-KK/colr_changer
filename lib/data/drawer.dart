import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'data.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Text('Change color'),
          ),
          ListTile(
            leading: const Icon(Icons.color_lens),
            title: const Text('Yellow'),
            onTap: () {
              context.read<MyClass>().firstcolor();
            },
          ),
          ListTile(
            leading: const Icon(Icons.color_lens_outlined),
            title: const Text('Blue Grey'),
            onTap: () {
              context.read<MyClass>().secondColr();
            },
          ),
        ],
      ),
    );
  }
}
