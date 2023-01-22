import 'package:care_connect/constants/constants.dart';
import 'package:care_connect/widget/custom_textfield.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => RegistrationFormState();
}

class RegistrationFormState extends State<RegistrationForm> {
  PlatformFile? pickedFile;

  Future uploadFile() async {
    // yeh locha jara file access karne mai, check kar le
    // final file = File([], pickedFile!.path!);
    // firebase mai konse location mai store karna hai vo idher dal
    final path = 'files/{$pickedFile!.name}';

// firebase mai yeh store karega (check karle)
    // final ref = FirebaseStorage.instance.ref().child(path);
    // ref.putFile(file);
  }

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    setState(() {
      pickedFile = result.files.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: pageBgColor,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: Column(children: [
                  Text(
                    "Registration Form",
                    style: StyleConstants().headingStyle,
                  ),

                  buildHeight(25.0),
                  // ----------------------------------------------Name of Hospital
                  RegistrationField(
                    hintText: "Name of Hospital",
                    type: TextInputType.name,
                  ),
                  buildHeight(15.0),
                  // ------------------------------------Lindline number of Hospital
                  RegistrationField(
                      hintText: "Landline Number of Hospital",
                      type: TextInputType.number),

                  buildHeight(15.0),
                  // ------------------------------------Emergency number of hospital
                  RegistrationField(
                      hintText: "Emergency Number of Hospital",
                      type: TextInputType.number),
                  buildHeight(15.0),
                  // -----------------------------------------------------name of POC
                  RegistrationField(
                      hintText: "Name of POC", type: TextInputType.name),

                  buildHeight(15.0),
                  // --------------------------------------------contsct number of POC
                  RegistrationField(
                      hintText: "Contact number of POC",
                      type: TextInputType.number),

                  buildHeight(15.0),
                  // -----------------------------------------address of the hospital
                  RegistrationField(
                      hintText: "Address of Hospital",
                      height: 100,
                      type: TextInputType.name),
                  buildHeight(15.0),
                  //
                  GestureDetector(
                    onTap: () {
                      selectFile();
                    },
                    child: Container(
                        padding: const EdgeInsets.all(20.0),
                        height: 160,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: boxColor, width: 2)),
                        child: Column(
                          children: [
                            const Text(
                                "Tap here to select document of hospital for verification. After selecting the document, press the below button."),
                            const Spacer(),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: ctaBgColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0))),
                                onPressed: () {
                                  uploadFile();
                                },
                                child: Text(
                                  "Upload Documents",
                                  style: StyleConstants().loginStyle,
                                )),
                          ],
                        )),
                  ),

                  buildHeight(20.0),
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: boxColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      onPressed: () {},
                      child: Text(
                        "Submit",
                        style: StyleConstants().submitStyle,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}

class RegistrationField extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  String hintText;
  double height;
  TextInputType type;
  RegistrationField(
      {super.key,
      required this.hintText,
      this.height = 50.0,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: boxColor, width: 2)),
      child: CustomTextField(
          textInputType: type,
          obscureText: false,
          hintText: hintText,
          icon: null,
          controller: controller),
    );
  }
}
