enum EExpenseType {
  food("Food"),
  entertainment("Entertainment"),
  financialOperations("Financial operations"),
  travel("Travel"),
  unexpected("Unexpected Expenses"),
  other("Other");

  const EExpenseType(this.text);
  final String text;
}

class ExpenseItem {
  String? date;
  double? cost;
  EExpenseType? type;

  ExpenseItem({this.date, this.cost, this.type});

  factory ExpenseItem.fromJson(Map<String, dynamic> parsedJson) {
    return ExpenseItem(
        cost: parsedJson['cost'] ?? "",
        type: EExpenseType.values.byName(parsedJson['type']),
        date: parsedJson['date']);
  }

  Map<String, dynamic> toJson() {
    return {
      "cost": cost,
      "date": date,
      "type": type!.name,
    };
  }
}
