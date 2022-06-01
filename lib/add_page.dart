import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  AddPage({Key? key}) : super(key: key);

  TextEditingController titleC = TextEditingController();
  TextEditingController detailC = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      appBar: AppBar(
        title: const Text("Notes"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextFormField(
                controller: titleC,
                validator: (v) {
                  if (v!.isEmpty) {
                    return "please enter title";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Enter title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: detailC,
                minLines: 1,
                maxLines: 5,
                validator: (v) {
                  if (v!.isEmpty) {
                    return "please enter Detail";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Enter detail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple),
                      minimumSize: MaterialStateProperty.all(
                          const Size(double.infinity, 40))),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                    }
                  },
                  child: const Text("Add"))
            ],
          ),
        ),
      )),
    );
  }
}
