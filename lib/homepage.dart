
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercode/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberProvider>(
        builder: (context, value, child) =>Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value.Add();
          },
          child: Icon(Icons.add),
        ),
        body: SafeArea(
          child:  Column(
              children: [
                Text(value.number.last.toString(),style: TextStyle(fontSize: 30),),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemCount: value.number.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Card(
                            color: Colors.red,
                            child: Center(
                              child: Text(
                                value.number[index].toString(),
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
