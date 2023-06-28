import 'dart:io';
import 'package:collection/collection.dart';

void main() {
  List<int> inputArr = [];
  String? inputField = stdin.readLineSync();
  List<String> newInputField = inputField!.split(" ");
  inputArr = newInputField.map(int.parse).toList()..sort();
  int maxSum = inputArr.sublist(1, 5).sum;
  int minSum = inputArr.sublist(0, 4).sum;
  print("$minSum $maxSum");
  print("Bonus :");
  int totalArr = inputArr.sublist(0, 5).sum;
  print("Total of array :$totalArr");
  print("Min of array :${inputArr[0]}");
  print("Max of array :${inputArr[4]}");
  List oddList = [];
  List evenList = [];
  for (int i in inputArr) {
    if (i.isEven) {
      evenList.add(i);
    } else if (i.isOdd) {
      oddList.add(i);
    }
  }
  print("List odd of array :$oddList");
  print("List even of array :$evenList");
}
