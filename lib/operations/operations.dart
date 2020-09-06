class CalOperations {
  static double add(double value1, double value2) {
    return value1 + value2;
  }

  static double minus(double value1, double value2) {
    return value1 - value2;
  }

  static double multiply(double value1, double value2) {
    return value1 * value2;
  }

  static double divide(double value1, double value2) {
    if (value1 == 0) {
      return 0;
    } else {
      return value1 / value2;
    }
  }
}
