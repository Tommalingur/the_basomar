class Player {
  List<String> inventory = [];

  void addItem(String item) {
    if (!inventory.contains(item)) {
      inventory.add(item);
    }
  }

  bool hasItem(String item) {
    return inventory.contains(item);
  }
}
