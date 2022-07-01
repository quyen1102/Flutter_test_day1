import 'package:flutter/material.dart';

class ListViewTest extends StatelessWidget {
  //  ListViewTest({Key? key}) : super(key: key);

  List<String> myList = List<String>.filled(100, 'Test');
  final String? updateCharacter;
  final String? updateMode;
  // static const String example = 'The quick brown fox jumps over the lazy dog';
  final String? message;
  ListViewTest({
    Key? key,
    this.message,
    this.updateCharacter,
    this.updateMode,
    required this.myList,
  }) : super(key: key);
  Function? replaceCharacter(myList, updateCharacter) {
    var updateCharacterAsList = updateCharacter.split('').toList();
    // print(myList);
    // print(updateCharacterAsList);
    late int length;
    if (myList.length > updateCharacterAsList.length) {
      length = myList.length;
    } else if (myList.length < updateCharacterAsList.length) {
      length = updateCharacter.length;
    } else {
      length = updateCharacter.length;
    }
    for (int i = 0; i < length; i++) {}
    // print(myList);
    // return updateCharacterAsList;
  }

  List affterUpdateMode(updateMode, myList) {
    if (updateMode == 'UPPER') {
      for (int i = 0; i < myList.length; i++) {
        myList[i].toUpperCase();
      }
    } else if (updateMode == 'LOWER ') {
      for (int i = 0; i < myList.length; i++) {
        myList[i].toLowerCase();
      }
    }
    print(myList);
    return myList;
  }

  int? differentCharacterCount(message) {
    String MessageString = message;

    var MessageStringAsList = MessageString.split('');
    var MessageStringAsSet = MessageStringAsList.toSet();

    var uniqueCharactersList = [];
    for (var character in MessageStringAsSet) {
      if (MessageStringAsList.indexOf(character) ==
          MessageStringAsList.lastIndexOf(character)) {
        uniqueCharactersList.add(character);
      }
    }
    int result = uniqueCharactersList.length;
    return result;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
        child: Column(
      children: <Widget>[
        SizedBox(height: size.height * 0.02),
        Text(
          'Message: $message',
          style: const TextStyle(fontSize: 20),
        ),
        SizedBox(height: size.height * 0.02),
        Column(
          children: message!
              .split('') // split the text into an array
              .map((String text) => Text(
                  '$text: ${text.allMatches('helllo').length}')) // put the text inside a widget
              .toList(), // convert the iterable to a list
        ),
        Text(
          'Diffrent character: ${differentCharacterCount(message)}',
          style: const TextStyle(fontSize: 20),
        ),
        SizedBox(height: size.height * 0.02),
        SizedBox(height: size.height * 0.02),
        Text(
          'List: $myList',
          style: const TextStyle(fontSize: 20),
        ),
        SizedBox(height: size.height * 0.02),
        Text(
          'Update character: $updateCharacter',
          style: const TextStyle(fontSize: 20),
        ),
        SizedBox(height: size.height * 0.02),
        Text(
          // 'Affter : ${replaceCharacter(myList, updateCharacter)}',
          'Affter : ${updateCharacter!.split('').toList()}',

          style: const TextStyle(fontSize: 20),
        ),
        SizedBox(height: size.height * 0.02),
        Text(
          'Update mode: $updateMode',
          style: const TextStyle(fontSize: 20),
        ),
        SizedBox(height: size.height * 0.02),
        Text(
          'Affter: ${affterUpdateMode(updateMode, myList)}',
          style: const TextStyle(fontSize: 20),
        ),
      ],
    ));
  }
}
