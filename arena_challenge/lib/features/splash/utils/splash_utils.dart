class SplashUtils {
  final Duration duration;

  SplashUtils({this.duration = const Duration(seconds: 2)});

  Future<void> waitSplash() async {
    await Future.delayed(duration);
  }

  static const welcomeMessage = 'Welcome to PokeApi';
  static const double logoSize = 120;
}
