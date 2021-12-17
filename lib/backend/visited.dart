class Visited {
  List<String> screensVisited = [];

  void addVisit(String screen) {
    if (!screensVisited.contains(screen)) {
      screensVisited.add(screen);
    }
  }

  bool hasVisited(String screen) {
    return screensVisited.contains(screen);
  }
}
