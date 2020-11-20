import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Unit extends StatefulWidget {
  @override
  _UnitState createState() => _UnitState();
}

class _UnitState extends State<Unit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [BlacklistingTextInputFormatter(new RegExp('[\\-|\\ ]'))],
                decoration: InputDecoration(
                  border: InputBorder.none
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
