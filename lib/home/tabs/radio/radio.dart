import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami/APIs/api_remotly.dart';
import 'package:islami/home/Models/RadioModel.dart';
import 'package:islami/home/tabs/sebha/radio_controller.dart';

class RadioScreen extends StatefulWidget {
  static const String routeName = 'radio';

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  late Future<RadioModel> get_radio;
  late AudioPlayer audioPlayer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get_radio = ApiManager.getRadio();
    audioPlayer = AudioPlayer();
  }

  play(String url) async {
    int result = await audioPlayer.play(url);
  }

  pause()async{
    await audioPlayer.pause();
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<RadioModel>(
      future: get_radio,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 3,
                    child: Image.asset('assets/images/radio_image.png')),
                Expanded(
                  flex: 2,
                  child: ListView.builder(
                    physics: PageScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        RadioController(
                            radios: snapshot.data!.radios![index],
                          play: play,
                          pause: pause,
                        ),
                    itemCount: snapshot.data!.radios!.length,
                  ),
                ),
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return IconButton(
            onPressed: () {
              get_radio = ApiManager.getRadio();
            },
            icon: Center(
                child: Icon(
              Icons.refresh,
              color: Theme.of(context).primaryColor,
            )),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
          );
        }
      },
    );
  }
}
