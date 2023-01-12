import 'package:flutter/material.dart';

import 'module_list_done.dart';
import 'module_list.dart';

class ModulePage extends StatelessWidget {
  const ModulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memulai Pemrograman Dengan Dart'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ModuleListDone(),
                ),
              );
            },
          ),
        ],
      ),
      body: ModuleList(),
    );
  }
}