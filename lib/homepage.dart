import 'package:flutter/material.dart';

class  HomePage extends StatelessWidget {
  const  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horizontal & vertical ListView'),
        backgroundColor: Colors.deepOrangeAccent[600],
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.all(10),
                    child: Center(
                      child: Text('card $index'),
                    ),
                    color: Colors.green[700],
                  ))),
              ),
              Flexible(child: ListView.builder(
                itemBuilder: (context, index) => ListTile(
                  title: Text("List $index"),
                )))
              
            ],
          ),
        )

      ),
    );
  }
}