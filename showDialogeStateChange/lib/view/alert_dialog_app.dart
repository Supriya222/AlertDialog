import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/show_dialog_provider.dart';

class AlertDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Alert Dialog"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text(
                    'AlertDialog Title',
                  ),
                  content: Consumer<ShowDialogProvider>(
                      builder: (context, appState, child) {
                    print(appState.dialogModel.text);
                    return Container(
                      width: 200,
                      child: Column(
                        children: [
                          TextField(
                            decoration:
                                InputDecoration(hintText: 'Enter the Username'),
                            onChanged: (value) {
                              context.read<ShowDialogProvider>().change(value);
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                                context
                                    .watch<ShowDialogProvider>()
                                    .dialogModel
                                    .text,
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                          ),
                        ],
                      ),
                      
                    );
                  }),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
              child: const Text('Click Here'),
            ),
          ),
        ],
      ),
    );
  }
}
