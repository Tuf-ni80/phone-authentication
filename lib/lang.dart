import 'package:flutter/material.dart';

class Lang extends StatefulWidget {
  const Lang({Key? key}) : super(key: key);

  @override
  State<Lang> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<Lang> {

  _MyPhoneState(){
    selectLang = languageList[0];
  }
  TextEditingController countryController = TextEditingController();

  final languageList = ["English", "Hindi", "Punjabi", "Bengali", "Spanish"];
  String? selectLang = "";

  late String valueChoose;
  List listItem = ["Hindi", "English", "Punjabi", "Bengali", "Spanish"];

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Photos-new-icon.png',
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Please Select Your Language",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "You can change the language at any time",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              DropdownButtonFormField(
                value: selectLang,
                items: languageList.map(
                        (e) =>DropdownMenuItem(child: Text(e),value: e,)
                ).toList(),
                onChanged: (val) {
                  setState(() {
                    selectLang = val as String;
                  });
                },
                icon: const Icon(
                  Icons.arrow_drop_down_circle,
                  color: Colors.deepPurple,
                ),
                dropdownColor: Colors.deepPurple.shade50,
                decoration: InputDecoration(
                  labelText: "Language",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green.shade600,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.pushNamed(context, 'phone');
                    },
                    child: Text("NEXT")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
