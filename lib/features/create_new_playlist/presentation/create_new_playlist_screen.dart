import 'package:flutter/material.dart';

class NewPlaylistScreen extends StatefulWidget {
  const NewPlaylistScreen({Key? key}) : super(key: key);

  @override
  State<NewPlaylistScreen> createState() => _NewPlaylistScreenState();
}

class _NewPlaylistScreenState extends State<NewPlaylistScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Workout Playlist Generator'),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
        ],
      ),
      body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your username',
                ),
                validator: (String? value){
                  if(value == null || value.isEmpty){
                    return "Please enter some text";
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
    );
  }
}

