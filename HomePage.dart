import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late TextEditingController _textController;
  late FocusNode _textFieldFocusNode;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _textFieldFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _textController.dispose();
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_textFieldFocusNode.canRequestFocus) {
          FocusScope.of(context).requestFocus(_textFieldFocusNode);
        } else {
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white, // Replace with your desired background color
        body: SafeArea(
          child: Column(
            children: [
              // Example Row with Icon and Settings
              Padding(
                padding: const EdgeInsets.only(left: 325.0), // Adjust as needed
                child: Container(
                  width: 58,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey, // Replace with desired color
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(
                    Icons.settings_outlined,
                    color: Colors.black, // Replace with desired color
                    size: 24,
                  ),
                ),
              ),

              // Example Image with Container
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 147,
                  height: 51,
                  decoration: BoxDecoration(
                    color: Colors.grey, // Replace with desired color
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://picsum.photos/seed/662/600',
                      width: 300,
                      height: 214,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              // Example Text Field with Icons
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 54,
                        decoration: BoxDecoration(
                          color: Colors.grey, // Replace with desired color
                          borderRadius: BorderRadius.circular(16),
                        ),
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 15, 10),
                          child: TextFormField(
                            controller: _textController,
                            focusNode: _textFieldFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(fontSize: 25),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(fontSize: 40),
                            textAlign: TextAlign.start,
                            validator: (value) {
                              // Add your validation logic here if needed
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),

                    // Example Settings Icons
                    Container(
                      width: 56,
                      height: 43,
                      decoration: BoxDecoration(
                        color: Colors.grey, // Replace with desired color
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        Icons.settings_outlined,
                        color: Colors.black, // Replace with desired color
                        size: 24,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 57,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Colors.grey, // Replace with desired color
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        Icons.settings_outlined,
                        color: Colors.black, // Replace with desired color
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),

              // Example Horizontal Scrollable Row
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 185,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Colors.grey, // Replace with desired color
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 185,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Colors.grey, // Replace with desired color
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 185,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Colors.grey, // Replace with desired color
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 185,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Colors.grey, // Replace with desired color
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Example Column with Image and Text
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://picsum.photos/seed/43/600',
                        width: 353,
                        height: 116,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 349,
                      height: 57,
                      decoration: BoxDecoration(
                        color: Colors.grey, // Replace with desired color
                      ),
                      child: Text(
                        'This Spectacular City Was Just Named\nthe most Walkable in Asia',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey, // Replace with desired color
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://picsum.photos/seed/892/600',
                              width: 286,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 105,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey, // Replace with desired color
                          ),
                          child: Text(
                            'Travel+leisure. 1d',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(width: 90),
                        Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey, // Replace with desired color
                          ),
                          child: Icon(
                            Icons.settings_outlined,
                            color: Colors.black, // Replace with desired color
                            size: 24,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey, // Replace with desired color
                          ),
                          child: Icon(
                            Icons.settings_outlined,
                            color: Colors.black, // Replace with desired color
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Example of duplicated section
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://picsum.photos/seed/43/600',
                        width: 353,
                        height: 116,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 349,
                      height: 57,
                      decoration: BoxDecoration(
                        color: Colors.grey, // Replace with desired color
                      ),
                      child: Text(
                        'This Spectacular City Was Just Named\nthe most Walkable in Asia',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey, // Replace with desired color
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://picsum.photos/seed/892/600',
                              width: 286,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 105,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey, // Replace with desired color
                          ),
                          child: Text(
                            'Travel+leisure. 1d',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(width: 90),
                        Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey, // Replace with desired color
                          ),
                          child: Icon(
                            Icons.settings_outlined,
                            color: Colors.black, // Replace with desired color
                            size: 24,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey, // Replace with desired color
                          ),
                          child: Icon(
                            Icons.settings_outlined,
                            color: Colors.black, // Replace with desired color
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
