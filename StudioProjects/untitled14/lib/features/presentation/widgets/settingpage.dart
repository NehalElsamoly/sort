import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ResponsiveProfileWidget extends StatelessWidget {
  final Uint8List? image;
  final Function() onEditProfileTap;

  const ResponsiveProfileWidget({
    Key? key,
    this.image,
    required this.onEditProfileTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        //scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              color: HexColor("#3D7E80"),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      if (image != null)
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: MemoryImage(image!),
                          backgroundColor: HexColor("#3D7E80"),
                        )
                      else
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: HexColor("#3D7E80"),
                          backgroundImage: NetworkImage(
                              "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),
                        ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "my name nehal",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "my name nehal",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 3,
                ),
                InkWell(
                  onTap: onEditProfileTap,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        "assets/images/EditButton.png",
                        fit: BoxFit.contain, // or BoxFit.cover, depending on your needs
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
