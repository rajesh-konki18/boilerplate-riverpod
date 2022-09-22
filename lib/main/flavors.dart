enum Flavor {
  dev,
  staging,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'MyQuility Dev';
      case Flavor.staging:
        return 'MyQuility Staging';
      case Flavor.prod:
        return 'MyQuility';
      default:
        return 'title';
    }
  }
}
