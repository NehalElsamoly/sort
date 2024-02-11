import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'customtextfield.dart';


class ImagePickers extends StatefulWidget {
  const ImagePickers({super.key});
  @override
  State<ImagePickers> createState() => _ImagePickersState();
}

class _ImagePickersState extends State<ImagePickers> {
  final TextEditingController _textController = TextEditingController();
  File? _selectedImage;

  void showImagePicker() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text('Take a photo'),
                onTap: () async {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text('Choose from gallery'),
                onTap: () async {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
        _textController.text = pickedFile.name ?? '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextfield(
          controller: _textController,
          hintTex: 'upload photo',
          labelTex: 'upload photo',
          suficon: IconButton(
              onPressed: () {
                showImagePicker();
              },
              icon: const Icon(Icons.upload_file_outlined)),
          obs: false,
        ),
        const SizedBox(height: 16.0),
        _selectedImage != null
            ? Image.file(
                _selectedImage!,
                height: 100.0,
                width: 100.0,
                fit: BoxFit.cover,
              )
            : Container(),
      ],
    );
  }
}
