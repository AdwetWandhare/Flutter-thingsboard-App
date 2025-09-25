abstract final class ThingsboardAppConstants {
  static const thingsBoardApiEndpoint = 'https://dashboard.senselive.io';
  static const thingsboardOAuth2CallbackUrlScheme = String.fromEnvironment('thingsboardOAuth2CallbackUrlScheme');
  static const thingsboardIOSAppSecret = String.fromEnvironment('thingsboardIosAppSecret');
  static const thingsboardAndroidAppSecret = "am5BMkZGNFJwR04xbmtsOGZRVTJXRllSalM5b25lZFdGbjY1UkVzRUNqbTNXaXViZmxpU0kyZm9sWFFDaXRqZw==";
  static const ignoreRegionSelection = thingsBoardApiEndpoint != '';
}
