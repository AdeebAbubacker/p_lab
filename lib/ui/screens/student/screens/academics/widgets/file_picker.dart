

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:panakj_app/core/colors/colors.dart';
import 'package:path/path.dart';

class FilePickerScreen extends StatefulWidget {
  @override
  State<FilePickerScreen> createState() => _FilePickerScreenState();
}

class _FilePickerScreenState extends State<FilePickerScreen> {
  String? fileName = '';
  String? filePath = '';
  bool myVisibility = false;

  void _openFilePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        filePath = result.files.single.path!;
        fileName = basename(filePath!);
        // ignore: avoid_print
        print("Selected file: $fileName");
        _visible();
      });
    } else {}
  }

  // ignore: unused_element
  void _deleteFile() {
    setState(() {
      filePath = '';
      fileName = '';
      _visible();
    });
  }

  void _visible() {
    setState(() {
      myVisibility = fileName != '';
    });
  }

  @override
  Widget build(BuildContext context) {
    // final deviceWidth = MediaQuery.of(context).size.width;
    bool fileSelected = fileName!.isEmpty ? false : true;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            fileSelected
                ? Row(
                    children: [
                      SizedBox(
                        width: 263,
                        height: 50,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                              const BorderSide(
                                width: 1.0,
                                color: kvioletColor3,
                              ),
                            ),
                          ),
                          onPressed: _openFilePicker,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(Icons.file_present,
                                  color: kvioletColor3),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  fileSelected
                                      ? fileName as String
                                      : 'UPLOAD FILE',
                                  style: TextStyle(
                                      fontSize: fileSelected ? 10 : 12,
                                      color: fileSelected
                                          ? kvioletColor3
                                          : kvioletColor3),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Visibility(
                          visible: myVisibility,
                          child: Column(
                            children: [
                              SizedBox(
                                width: 60,
                                height: 50,
                                child: OutlinedButton(
                                  onPressed: () {
                                    _deleteFile();
                                  },
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    side: const BorderSide(color: Colors.red),
                                  ),
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : SizedBox(
                    width: 333,
                    height: 50,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(kvioletColor3)),
                      onPressed: _openFilePicker,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.file_present),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              fileSelected ? fileName as String : 'UPLOAD FILE',
                              style: TextStyle(
                                fontSize: fileSelected ? 10 : 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ],
    );
  }
}
