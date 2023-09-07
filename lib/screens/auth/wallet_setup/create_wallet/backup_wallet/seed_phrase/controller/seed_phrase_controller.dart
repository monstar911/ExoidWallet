import 'dart:math';
import 'package:exoid/models/recovery_phrase_model.dart';
import 'package:exoid/utils/constants/constant_lists.dart';
import 'package:get/get.dart';

class SeedPhraseController extends GetxController {
  Random random = Random();
  final selectedIndexOne = 3.obs;
  final selectedIndexTwo = 6.obs;
  final selectedIndexThree = 9.obs;
  final numberForSelectionOne = 0.obs;
  final numberForSelectionTwo = 0.obs;
  final numberForSelectionThree = 0.obs;
  final recoveryPhraseFirstRowValueOne = RecoveryPhraseModel(
    recoveryPhrase: "",
    uniqueNumber: 0,
  ).obs;
  final recoveryPhraseFirstRowValueTwo = RecoveryPhraseModel(
    recoveryPhrase: "",
    uniqueNumber: 0,
  ).obs;
  final recoveryPhraseFirstRowValueThree = RecoveryPhraseModel(
    recoveryPhrase: "",
    uniqueNumber: 0,
  ).obs;
  final recoveryPhraseSecondRowValueOne = RecoveryPhraseModel(
    recoveryPhrase: "",
    uniqueNumber: 0,
  ).obs;
  final recoveryPhraseSecondRowValueTwo = RecoveryPhraseModel(
    recoveryPhrase: "",
    uniqueNumber: 0,
  ).obs;
  final recoveryPhraseSecondRowValueThree = RecoveryPhraseModel(
    recoveryPhrase: "",
    uniqueNumber: 0,
  ).obs;
  final recoveryPhraseThirdRowValueOne = RecoveryPhraseModel(
    recoveryPhrase: "",
    uniqueNumber: 0,
  ).obs;
  final recoveryPhraseThirdRowValueTwo = RecoveryPhraseModel(
    recoveryPhrase: "",
    uniqueNumber: 0,
  ).obs;
  final recoveryPhraseThirdRowValueThree = RecoveryPhraseModel(
    recoveryPhrase: "",
    uniqueNumber: 0,
  ).obs;

  @override
  onInit() {
    super.onInit();
    List<int> numbers = fetchRandomNumbers(9, 0, 11);
    recoveryPhraseFirstRowValueOne.value =
        ConstantLists.recoveryPhraseList[numbers[0]];
    recoveryPhraseFirstRowValueTwo.value =
        ConstantLists.recoveryPhraseList[numbers[1]];
    recoveryPhraseFirstRowValueThree.value =
        ConstantLists.recoveryPhraseList[numbers[2]];
    List<int> numberForSelectionInRowOne = [
      numbers[0],
      numbers[1],
      numbers[2],
    ];
    numberForSelectionOne.value = ConstantLists
        .recoveryPhraseList[chooseRandomNumber(numberForSelectionInRowOne)]
        .uniqueNumber;
    recoveryPhraseSecondRowValueOne.value =
        ConstantLists.recoveryPhraseList[numbers[3]];
    recoveryPhraseSecondRowValueTwo.value =
        ConstantLists.recoveryPhraseList[numbers[4]];
    recoveryPhraseSecondRowValueThree.value =
        ConstantLists.recoveryPhraseList[numbers[5]];
    List<int> numberForSelectionInRowTwo = [
      numbers[3],
      numbers[4],
      numbers[5],
    ];
    numberForSelectionTwo.value = ConstantLists
        .recoveryPhraseList[chooseRandomNumber(numberForSelectionInRowTwo)]
        .uniqueNumber;
    recoveryPhraseThirdRowValueOne.value =
        ConstantLists.recoveryPhraseList[numbers[6]];
    recoveryPhraseThirdRowValueTwo.value =
        ConstantLists.recoveryPhraseList[numbers[7]];
    recoveryPhraseThirdRowValueThree.value =
        ConstantLists.recoveryPhraseList[numbers[8]];
    List<int> numberForSelectionInRowThree = [
      numbers[6],
      numbers[7],
      numbers[8],
    ];
    numberForSelectionThree.value = ConstantLists
        .recoveryPhraseList[chooseRandomNumber(numberForSelectionInRowThree)]
        .uniqueNumber;
  }

  toggleFirstRow({required int index}) {
    selectedIndexOne.value = index;
  }

  toggleSecondRow({required int index}) {
    selectedIndexTwo.value = index;
  }

  toggleThirdRow({required int index}) {
    selectedIndexThree.value = index;
  }

  List<int> fetchRandomNumbers(int count, int min, int max) {
    Set<int> uniqueNumbers = {};

    while (uniqueNumbers.length < count) {
      int randomNumber = min + random.nextInt(max - min + 1);
      uniqueNumbers.add(randomNumber);
    }

    return uniqueNumbers.toList();
  }

  int chooseRandomNumber(List<int> numbers) {
    Random random = Random();
    int randomIndex = random.nextInt(numbers.length);
    return numbers[randomIndex];
  }
}
