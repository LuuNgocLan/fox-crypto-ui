class Coin {
  final String iconPath;
  final String name;
  final double cost;
  final double changedValue;
  final Map<int, double> trend;

  Coin(
    this.iconPath,
    this.name,
    this.cost,
    this.changedValue,
    this.trend,
  );
}
