import 'package:flutter/material.dart';

class SuccessDialog extends StatelessWidget {
  final String text;
  SuccessDialog(this.text);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: new BoxDecoration(
            color: Colors.brown[50],
            borderRadius: new BorderRadius.circular(10.0)),
        width: 300.0,
        height: 200.0,
        child: Center(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/success.png',
                height: 100,
              ),
              SizedBox(height: 10),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.brown,
                    child: Text(
                      'Close',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
