import 'package:flutter/material.dart';
class todoui extends StatefulWidget {
  const todoui({Key? key}) : super(key: key);

  @override
  State<todoui> createState() => _todouiState();
}

class _todouiState extends State<todoui> {
  void showalertdialog(){
    showDialog(context: context,
        builder: (context)=>
            AlertDialog(
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: Text("Add Task"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    autofocus: true,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
              Padding(padding: EdgeInsets.only(
                top: 10,
              )),
                  Row(
                    children: <Widget>[

                      ElevatedButton(
                        onPressed: () {},
                        child: Text('ADD',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],

                  )

                ],
              ),
            ),
    );
  }
  Widget mycard(String task){
    return Card(
      elevation:  5,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Container(
      padding: EdgeInsets.all(5),
        child: ListTile(
          title: Text(
            "$task",
          ),
          onLongPress: (){},
        ),
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showalertdialog,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        title: Text(
          "My TASKS LIST",
          style: TextStyle(
            fontFamily: "Raleway",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:
        Column(
          children: <Widget>[
          mycard(
            "record a video "
          ),
            mycard(
              "Take medicines"
            ),
            mycard(
                "flutter tasks\nTask8\nTask10"
            ),
            mycard(
                "lunch "
            ),
            mycard(
                "do homework "
            ),
            mycard(
                "do assignment db"
            ),
            mycard(
                "tuition time "
            ),
            mycard(
                "namaz "
            ),
            mycard(
                "PSl match "
            ),
            mycard(
                "dinner "
            ),
            mycard(
                "dairy "
            ),
          ],
        ),
      ),
    );
  }
}
