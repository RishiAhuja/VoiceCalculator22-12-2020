import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VoicePay extends StatefulWidget {
  @override
  _VoicePayState createState() => _VoicePayState();
}

class _VoicePayState extends State<VoicePay> {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      title: Text(
          'Voice Calculator',
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontWeight: FontWeight.w300, fontSize: 25.0)
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/listen.gif'),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.center,
            height: 45.0,
            child: Text(
              'Listening...',
              style: GoogleFonts.raleway(fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.keyboard),
                onPressed: () {Navigator.pop(context);},
              ),
              IconButton(
                icon: Icon(Icons.mic),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.translate),
                onPressed: () {Navigator.pop(context);},
              ),
            ],
          ),
        ],
      ),
    );
  }
}