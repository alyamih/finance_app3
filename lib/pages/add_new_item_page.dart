import 'dart:convert';

import 'package:finance_app3/model/income_item.dart';
import 'package:finance_app3/model/expense_item.dart';
import 'package:finance_app3/model/result_item.dart';
import 'package:finance_app3/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ECurrentState {
  income('Income'),
  expense('Expense');

  const ECurrentState(this.text);
  final String text;
}

class AddNewItemPage extends StatefulWidget {
  const AddNewItemPage({super.key});

  @override
  State<AddNewItemPage> createState() => _AddNewItemPageState();
}

class _AddNewItemPageState extends State<AddNewItemPage> {
  TextEditingController incomeCostController = TextEditingController();
  TextEditingController incomeDateController = TextEditingController();
  TextEditingController expenseCostController = TextEditingController();
  TextEditingController expenseDateController = TextEditingController();
  EIncomeType currentSelectedIncome = EIncomeType.salary;
  EExpenseType? currentSelectedExpense = EExpenseType.entertainment;
  ECurrentState currentSelectedState = ECurrentState.income;
  DateTime selectedDate = DateTime.now();
  List<EIncomeType> incomeTypeList = [
    EIncomeType.salary,
    EIncomeType.financialOperations,
    EIncomeType.social
  ];
  List<EExpenseType> categoryTypeList = [
    EExpenseType.food,
    EExpenseType.financialOperations,
    EExpenseType.travel,
    EExpenseType.entertainment,
    EExpenseType.unexpected,
    EExpenseType.other
  ];
  List<ECurrentState> states = [
    ECurrentState.income,
    ECurrentState.expense,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 65, 16, 24),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.chevron_left,
                    color: Color(0xFF5EC286),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'New operation',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: FormField<ECurrentState>(
                        builder: (FormFieldState<ECurrentState> state) {
                          return InputDecorator(
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFF262826),
                                labelStyle: TextStyle(
                                    fontFamily: 'Inter', color: Colors.white),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                )),
                            isEmpty:
                                currentSelectedState == ECurrentState.income,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<ECurrentState>(
                                icon: const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color(0xFF92E3A9),
                                ),
                                value: currentSelectedState,
                                isDense: true,
                                onChanged: (ECurrentState? newValue) {
                                  setState(() {
                                    currentSelectedState = newValue!;
                                    state.didChange(newValue);
                                  });
                                },
                                items: states.map((ECurrentState value) {
                                  return DropdownMenuItem<ECurrentState>(
                                    value: value,
                                    child: Text(value.text,
                                        style: const TextStyle(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16)),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    if (currentSelectedState == ECurrentState.income)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: FormField<EIncomeType>(
                          builder: (FormFieldState<EIncomeType> state) {
                            return InputDecorator(
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFF262826),
                                  labelStyle: TextStyle(
                                      fontFamily: 'Inter', color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  )),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<EIncomeType>(
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color(0xFF92E3A9),
                                  ),
                                  value: currentSelectedIncome,
                                  isDense: true,
                                  onChanged: (EIncomeType? newValue) {
                                    setState(() {
                                      currentSelectedIncome = newValue!;
                                      state.didChange(newValue);
                                    });
                                  },
                                  items:
                                      incomeTypeList.map((EIncomeType value) {
                                    return DropdownMenuItem<EIncomeType>(
                                      value: value,
                                      child: Text(value.text,
                                          style: const TextStyle(
                                              fontFamily: 'Inter',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16)),
                                    );
                                  }).toList(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    if (currentSelectedState == ECurrentState.expense)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: FormField<EExpenseType>(
                          builder: (FormFieldState<EExpenseType> state) {
                            return InputDecorator(
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFF262826),
                                  labelStyle: TextStyle(
                                      fontFamily: 'Inter', color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  )),
                              isEmpty: currentSelectedExpense ==
                                  EExpenseType.financialOperations,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<EExpenseType>(
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color(0xFF92E3A9),
                                  ),
                                  value: currentSelectedExpense,
                                  isDense: true,
                                  onChanged: (EExpenseType? newValue) {
                                    setState(() {
                                      currentSelectedExpense = newValue!;
                                      state.didChange(newValue);
                                    });
                                  },
                                  items: categoryTypeList
                                      .map((EExpenseType value) {
                                    return DropdownMenuItem<EExpenseType>(
                                      value: value,
                                      child: Text(value.text,
                                          style: const TextStyle(
                                              fontFamily: 'Inter',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16)),
                                    );
                                  }).toList(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: TextField(
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.white,
                        controller: currentSelectedState == ECurrentState.income
                            ? incomeCostController
                            : expenseCostController,
                        style: const TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 16),
                        decoration: InputDecoration(
                          hintText: '\$ Amount',
                          hintStyle: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              color: Colors.white.withOpacity(0.4),
                              fontSize: 16),
                          filled: true,
                          fillColor: const Color(0xFF262826),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onChanged: (text) {
                          if (currentSelectedState == ECurrentState.income) {
                            incomeCostController.text = text;
                          } else {
                            expenseCostController.text = text;
                          }
                          setState(() {});
                        },
                      ),
                    ),
                    TextField(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Dialog(
                                      elevation: 0,
                                      backgroundColor: const Color(0xFF262826),
                                      child: SizedBox(
                                        width: 300,
                                        height: 200,
                                        child: CupertinoTheme(
                                          data: const CupertinoThemeData(
                                            brightness: Brightness.dark,
                                          ),
                                          child: CupertinoDatePicker(
                                            mode: CupertinoDatePickerMode.date,
                                            initialDateTime: DateTime.now(),
                                            onDateTimeChanged:
                                                (DateTime newDate) {
                                              selectedDate = newDate;
                                              if (currentSelectedState ==
                                                  ECurrentState.income) {
                                                incomeDateController.text =
                                                    DateFormat("MMMM dd-yy")
                                                        .format(newDate);
                                              } else {
                                                expenseDateController.text =
                                                    DateFormat("MMMM dd-yy")
                                                        .format(newDate);
                                              }
                                              setState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ));
                      },
                      cursorColor: Colors.white,
                      controller: currentSelectedState == ECurrentState.income
                          ? incomeDateController
                          : expenseDateController,
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 16),
                      decoration: InputDecoration(
                        hintText: 'Date',
                        hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: Colors.white.withOpacity(0.4),
                            fontSize: 16),
                        filled: true,
                        fillColor: const Color(0xFF262826),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (text) {
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 32),
            child: InkWell(
              onTap: () {
                if (currentSelectedState == ECurrentState.income) {
                  IncomeItem income = IncomeItem();
                  income.cost = double.tryParse(incomeCostController.text);
                  income.date = incomeDateController.text;
                  income.type = currentSelectedIncome;
                  incomes.add(income);
                } else {
                  ExpenseItem expense = ExpenseItem();
                  expense.cost = double.tryParse(expenseCostController.text);
                  expense.date = expenseDateController.text;
                  expense.type = currentSelectedExpense;
                  expenses.add(expense);
                }
                addToSP();
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomePage()),
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: currentSelectedState == ECurrentState.income
                        ? incomeCostController.text.isEmpty ||
                                incomeDateController.text.isEmpty
                            ? const Color(0xFF92E3A9).withOpacity(0.5)
                            : const Color(0xFF92E3A9)
                        : expenseCostController.text.isEmpty ||
                                expenseDateController.text.isEmpty
                            ? const Color(0xFF92E3A9).withOpacity(0.5)
                            : const Color(0xFF92E3A9),
                    borderRadius: BorderRadius.circular(30)),
                child: const Text(
                  'Next',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> addToSP() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('expenses', jsonEncode(expenses));
  prefs.setString('incomes', jsonEncode(incomes));
  prefs.setString('results', jsonEncode(results));
}

void getSP(Function() callBack) async {
  final prefs = await SharedPreferences.getInstance();

  final List<dynamic> jsonData1 =
      jsonDecode(prefs.getString('expenses') ?? '[]');
  final List<dynamic> jsonData2 =
      jsonDecode(prefs.getString('incomes') ?? '[]');
  final List<dynamic> jsonData3 =
      jsonDecode(prefs.getString('results') ?? '[]');

  expenses = jsonData1.map<ExpenseItem>((jsonList) {
    {
      return ExpenseItem.fromJson(jsonList);
    }
  }).toList();
  incomes = jsonData2.map<IncomeItem>((jsonList) {
    {
      return IncomeItem.fromJson(jsonList);
    }
  }).toList();
  results = jsonData3.map<ResultItem>((jsonList) {
    {
      return ResultItem.fromJson(jsonList);
    }
  }).toList();

  callBack();
}
