import 'package:finance_app3/bottom_bar.dart';
import 'package:finance_app3/model/income_item.dart';
import 'package:finance_app3/model/expense_item.dart';
import 'package:finance_app3/model/result_item.dart';
import 'package:finance_app3/pages/add_new_item_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

List<ExpenseItem> expenses = [];
List<ResultItem> results = [];
List<IncomeItem> incomes = [];
EPageOnSelect page = EPageOnSelect.homePage;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getSP(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(18, 60, 18, 24),
                  child: Row(
                    children: [
                      Text(
                        'Operations',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                if (incomes.isNotEmpty || expenses.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      height: 43,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          color: const Color(0xFF262826),
                        ),
                        child: TabBar(
                          dividerColor: Colors.transparent,
                          padding: const EdgeInsets.all(2),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.white,
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelStyle: const TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            color: const Color(0xFF92E3A9),
                          ),
                          tabs: const [
                            Tab(
                              text: 'Incomes',
                            ),
                            Tab(
                              text: 'Expenses',
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: TabBarView(
                    children: [
                      incomes.isNotEmpty
                          ? SingleChildScrollView(
                              child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: getIncomes(),
                            ))
                          : expenses.isNotEmpty
                              ? SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 55),
                                        child:
                                            Image.asset('assets/home_page.png'),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Add your incomes to track your history',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              : SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 55),
                                        child:
                                            Image.asset('assets/home_page.png'),
                                      ),
                                      const Text(
                                        'Add your incomes\nand expenses',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 24),
                                      ),
                                    ],
                                  ),
                                ),
                      expenses.isNotEmpty
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: getExpenses(),
                            )
                          : incomes.isNotEmpty
                              ? SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 55),
                                        child:
                                            Image.asset('assets/home_page.png'),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Add your expenses to track your history',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              : SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                          'assets/operations_image.png'),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 68),
                                        child: Text(
                                          'Add your expenses and incomes to track your history',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                    ],
                  ),
                ),
                if (incomes.isEmpty && expenses.isEmpty)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 10, 16, 32),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const AddNewItemPage()),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: const Color(0xFF92E3A9),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Text(
                          'Add new',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                const BottomBar()
              ],
            ),
            if (incomes.isNotEmpty || expenses.isNotEmpty)
              Positioned(
                  bottom: 90,
                  right: 16,
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const AddNewItemPage()),
                        );
                      },
                      child: Image.asset('assets/add.png')))
          ],
        ),
      ),
    );
  }

  Widget getExpenses() {
    List<Widget> list = [];
    for (var expense in expenses) {
      list.add(Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFF262826))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                expense.type!.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xFF92E3A9),
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        'AMOUNT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.white.withOpacity(0.4),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      '${expense.cost!.toStringAsFixed(0)}\$',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        'DATE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.white.withOpacity(0.4),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      expense.date!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ));
      list.add(const SizedBox(
        height: 12,
      ));
    }
    return Column(
      children: list,
    );
  }

  Widget getIncomes() {
    List<Widget> list = [];
    for (var income in incomes) {
      list.add(Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFF262826))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                income.type!.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xFF92E3A9),
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        'AMOUNT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.white.withOpacity(0.4),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      '${income.cost!.toStringAsFixed(0)}\$',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        'DATE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.white.withOpacity(0.4),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      income.date!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ));
      list.add(const SizedBox(
        height: 12,
      ));
    }
    return Column(
      children: list,
    );
  }
}
