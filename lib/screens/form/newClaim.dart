import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import '../../widgets/responsive.dart';
import '../../widgets/cover.dart';
import '../../widgets/register-form.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import '../../containts/themes.dart';


class NewClaimPage extends StatefulWidget {
  @override
  _NewClaimPageState createState() => _NewClaimPageState();
}

class _NewClaimPageState extends State<NewClaimPage> {
  final _categoryController = TextEditingController();
  final _dateController = TextEditingController();
  final _amountController = TextEditingController();
  final _noteController = TextEditingController();

  @override
  void dispose() {
    _categoryController.dispose();
    _dateController.dispose();
    _amountController.dispose();
    _noteController.dispose();
    super.dispose();
  }

  // final TextEditingController _categoryController;
  var selectedValue = "Food";
  var items = [
    "Food",
    "Eat",
  ];

  File? _image;
  final _picker = ImagePicker();

  DateTime date = DateTime.now();
  late var formattedDate;

  @override
  void initState() {
    super.initState();
    formattedDate = DateFormat('d-MMM-yy').format(date);
    _dateController.text = "$formattedDate";
  }

  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    responsive().init(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Create New Claim'),
      ),
      body: Container(
        child: Stack(
          children: [
            Cover(),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    width: responsive.screenWidth,
                    // height: responsive.screenHeight / 1.5,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: colorTheme.black.withOpacity(0.2),
                          offset: const Offset(0.5, 0.0),
                          blurRadius: 10,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Select Category",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10),
                        DropdownButtonHideUnderline(
                          child: TextField(
                            controller: _categoryController,
                            decoration: InputDecoration(
                              filled: true,
                              contentPadding: EdgeInsets.only(
                                  top: 15.0, bottom: 15.0, left: 40.0),
                              isDense: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              labelText: 'Select an item',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              suffixIcon: DropdownButtonFormField(
                                decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                ),
                                value: selectedValue,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedValue = newValue!;
                                  });
                                },
                                items: items.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Date",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10),
                        TextField(
                            controller: _dateController,
                            readOnly: true,
                            onTap: () async {
                                  await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2022),
                                    lastDate: DateTime(2030),
                                  ).then((selectedDate) {
                                    if (selectedDate != null) {
                                      setState(() {
                                        date = selectedDate;
                                        _dateController.text = DateFormat('d-MMM-yy').format(selectedDate);
                                        print(_dateController.text);
                                      });
                                    }
                                  });
                            },
                            decoration: InputDecoration(
                              filled: true,
                              isDense: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),

                              ),
                              suffixIcon: Icon(Icons.arrow_forward_ios),
                              labelStyle: TextStyle(color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
                            ),
                        ),



                        SizedBox(height: 20),
                        Text("Amount (RM)",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10),
                        MyTextField(
                          myController: _amountController,
                        ),
                        SizedBox(height: 20),
                        Text("Notes",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10),
                        MyTextField(
                          myController: _noteController,
                        ),
                        SizedBox(height: 20),
                        Text("Attachment",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () => _openImagePicker(),
                          child: DottedBorder(
                            dashPattern: [6],
                            borderType: BorderType.RRect,
                            radius: Radius.circular(12),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              child: Container(
                                height: 80,
                                width: 80,
                                child: _image != null
                                    ? Image.file(_image!, fit: BoxFit.cover)
                                    : Icon(Icons.add),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50.0),
                        Container(
                          decoration: BoxDecoration(
                            color: colorTheme.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: responsive.screenWidth,
                          child: myBtn(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(200, 50),
        primary: colorTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        // elevation: 5,
        shadowColor: colorTheme.primary,
      ),
      onPressed: () {
        print(_noteController);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) {
        //     return Details(
        //       productName: _productController.text,
        //       productDescription: _productDesController.text,
        //     );
        //   }),
        // );
      },
      child: Text(
        "Submit",
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
