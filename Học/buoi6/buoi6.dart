void main(List<String> args) {
  Person<Action> personAction = Person(action: Action());
  Person<ActionGo> personGo = Person(action: ActionGo());
  Person<ActionPaint> personPaint = Person(action: ActionPaint());

  print("action -> ${personAction.action.name}"); // action is Action
  print("actionGo -> ${personGo.action.go}"); // action is ActionGo
  print("actionPaint -> ${personPaint.action.paint}"); // action is ActionPaint
}

class Action {
  String get name => "ActionName";
}

class ActionGo extends Action {
  String get go => "actionGo";
}

class ActionPaint extends Action {
  String get paint => "actionPaint";
}

class Person<T extends Action> {
  final T action;

  /// T dạng generic, sẽ trả về kiểu dữ liệu khi truyền vào Person
  const Person({required this.action});
}
