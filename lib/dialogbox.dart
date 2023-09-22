import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Information Submitted'),
          content: Text('Your information has been successfully submitted.'),
          actions: [
            ElevatedButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Submit Button
          ElevatedButton(
            onPressed: () {
              // Show the popup when the button is pressed
              _showPopup(context);
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
