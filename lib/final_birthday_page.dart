import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share/share.dart';
class FinalBirthdayPage extends StatelessWidget {

  final String message;
  const FinalBirthdayPage({Key? key,required this.message,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: const Offset(7,7),
                      )
                    ]
                  ),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(message,
                      textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 20,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){
                    FlutterClipboard.copy(message);
                    Fluttertoast.showToast(
                        msg: "Message Copied",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black,
                        textColor: Colors.yellow,
                        fontSize: 16.0
                    );
                  }, icon:const Icon(Icons.copy),
                  iconSize: 50,
                  ),

                  IconButton(onPressed: (){
                    Share.share(message);
                  }, icon:const Icon(Icons.share),
                    iconSize: 50,
                  ),
                ],
              )
            ],
          ),
      )
    );
  }
}
