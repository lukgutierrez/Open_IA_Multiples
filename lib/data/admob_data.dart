import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2581969776865650/9952565261'; // Reemplaza con tu ID de unidad de anuncios para Android
    } else if (Platform.isIOS) {
      return 'ca-app-pub-2581969776865650/9952565261'; // Reemplaza con tu ID de unidad de anuncios para iOS
    } else {
      throw UnsupportedError('Plataforma no compatible');
    }
  }
}
