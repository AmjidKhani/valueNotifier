import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class simpleobsecure extends StatefulWidget {
  const simpleobsecure({Key? key}) : super(key: key);
  @override
  State<simpleobsecure> createState() => _simpleobsecureState();
}
class _simpleobsecureState extends State<simpleobsecure> {
  bool _obsecurepassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: _obsecurepassword,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obsecurepassword = !_obsecurepassword;
                          });
                        },
                        child: _obsecurepassword
                            ? Icon(Icons.visibility_off_sharp)
                            : Icon(Icons.visibility)),
                    label: Text('Enter Password'),
                    hintText: 'Enter Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ))
        ],
      ),
    );
  }
}
