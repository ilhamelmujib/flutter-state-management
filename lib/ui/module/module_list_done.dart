import 'package:flutter/material.dart';
import 'package:flutter_state_management/ui/provider/module_done_provider.dart';
import 'package:provider/provider.dart';

class ModuleListDone extends StatelessWidget {

  const ModuleListDone({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moduleListDone =
        Provider.of<ModuleDoneProvider>(context, listen: false).moduleListDone;

    return Scaffold(
      appBar: AppBar(
        title: Text('Done Module List'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(moduleListDone[index]),
          );
        },
        itemCount: moduleListDone.length,
      ),
    );
  }
}
