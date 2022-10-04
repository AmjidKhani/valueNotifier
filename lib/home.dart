import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  ValueNotifier<bool> _obsecurepassword = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ValueListenableBuilder(
                valueListenable: _obsecurepassword,
                builder: (BuildContext context, value, Widget? child) {
                  return TextFormField(

                    obscureText: _obsecurepassword.value,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.key),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              _obsecurepassword.value =
                              !_obsecurepassword.value;
                            },
                            child: _obsecurepassword.value?

                            Icon(Icons.visibility_off_sharp): Icon(Icons.visibility)

                        ),
                        label: Text('Enter Password'),
                        hintText: 'Enter Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  );
                },
              ))
        ],
      ),
    );
  }
}
