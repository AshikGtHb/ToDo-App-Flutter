import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "ToDo App",
    home: TODOAPP(),
    theme: ThemeData(primarySwatch: Colors.yellow),
  ));
}

class TODOAPP extends StatefulWidget {
  const TODOAPP({Key? key}) : super(key: key);

  @override
  State<TODOAPP> createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  String value='';
  var listTODO = [''];
  addTODO(String item){
    setState(() {
      listTODO.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],

      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text("TODO App", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),

        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){addTODO(value);},
      ),
      body:
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
                  itemCount: listTODO.length,
                  itemBuilder: (context, index){
                    return index == 0 ? TextFormField(
                      decoration: InputDecoration(
                        hintText: "Add information"
                      ),
                      cursorColor: Colors.black,
                      onChanged: (val){
                        setState(() {
                          value = val;
                        });


                      },
                    ) :ListTile(
                    leading: Icon(Icons.work),
                    title: Text("${listTODO[index]}")
                    );

    }),

          ),
      bottomNavigationBar: Container(
        color: Colors.yellow,
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Developed by: Developers Association',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}









