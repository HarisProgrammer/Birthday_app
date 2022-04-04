import 'package:birthday_for_everyone/birthday_detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static const myStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
        appBar: AppBar(
          title: const Text('BIRTHDAY WISHES'),
          centerTitle: true,
        ),
        body:Container(
            child: GridView(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
          crossAxisSpacing: 6,
          mainAxisSpacing: 15,
        ),
      children: [
        gridItems('Father', Colors.redAccent,() {
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return const BirthdayDetailPage(cat: 'FATHER',);
          }));
        },),
        gridItems('Mother', Colors.orangeAccent,() {
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return const BirthdayDetailPage(cat: 'MOTHER',);
          }));
        },),
        gridItems('Brother', Colors.blueGrey,() {
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return const BirthdayDetailPage(cat: 'BROTHER');
          }));
        },),
        gridItems('Sister', Colors.grey,() {
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return const BirthdayDetailPage(cat: 'SISTER',);
          }));
        },),
        gridItems('Daughter', Colors.lightBlue,() {
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return const BirthdayDetailPage(cat: 'DAUGHTER',);
          }));
        },),
        gridItems('Son', Colors.brown,(){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return const BirthdayDetailPage(cat: 'SON',);
          }));
        },),
      ],
    ),
        ),
    );
  }



  Padding gridItems(String title,Color color, Function() pressme,){
    return Padding(
      padding:EdgeInsets.symmetric(vertical: 10,horizontal: 7),
      child: InkWell(
       onTap:pressme,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child:Center(child:Text(title,style: myStyle,)),
        ),
      ),
    );
  }
}



