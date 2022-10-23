import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Belajar Form Flutter",
    home: BelajarForm(),
  ));
}

class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Form Flutter"),
      ),
      body: Form(
          key: _formkey,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: new InputDecoration(
                    hintText: "contoh: Elisa Christian Alfrido Mantolas",
                    labelText: "Nama Lengkap",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                RaisedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {}
                  },
                )
              ],
            ),
          )),
    );
  }
}
