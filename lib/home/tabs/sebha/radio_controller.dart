import 'package:flutter/material.dart';

import '../../Models/RadioModel.dart';

class RadioController extends StatefulWidget {
  Radios radios;
  Function play;
  Function pause;

  RadioController(
      {required this.radios, required this.play, required this.pause});

  @override
  State<RadioController> createState() => _RadioControllerState();
}

class _RadioControllerState extends State<RadioController> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            widget.radios.name ?? '',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 40.0,
          ),
          IconButton(
            onPressed: () {
              if (isPlaying) {
                widget.pause();
                isPlaying = false;
                setState(() {});
              } else {
                widget.play(widget.radios.url);
                isPlaying = true;
                setState(() {});
              }
            },
            icon: isPlaying
                ? Icon(
                    Icons.pause,
                    color: Theme.of(context).primaryColor,
                    size: 45,
                  )
                : Icon(
                    Icons.play_arrow,
                    color: Theme.of(context).primaryColor,
                    size: 45,
                  ),
          ),
        ],
      ),
    );
  }
}
