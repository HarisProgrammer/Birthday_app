import 'package:birthday_for_everyone/final_birthday_page.dart';
import 'package:birthday_for_everyone/messages.dart';
import 'package:flutter/material.dart';

class BirthdayDetailPage extends StatelessWidget {
  final String cat;
  const BirthdayDetailPage({Key? key,required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat,style:const TextStyle(letterSpacing: 2),),
        centerTitle: true,
      ),
      body:ListView(
        children: messagedata.where((m) => m.category==cat)
        .map((e) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return FinalBirthdayPage(message: e.message,);
                  }));
                },
                child: Card(
                 child: Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Text(e.message,
                     textAlign: TextAlign.center,
                     style:const TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.w500,
                   ),
                   ),
                 ),
                ),
              ),
            ))
            .toList(),
      )
    );
  }
}
