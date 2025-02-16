import 'package:get_it/get_it.dart';
import 'package:hendshake/provider/activity_provider.dart';
import 'package:hendshake/repositories/activity_repo.dart';
import 'package:hendshake/services/http_service.dart';
import 'package:hendshake/services/local_db_service.dart';

import 'navigation_service.dart';

final GetIt locator = GetIt.instance;
Future<void> isLocatorAllReady() async {
  await locator.allReady();
}

Future<void> initLocator() async {
  locator
    ..registerLazySingleton<NavigationService>(NavigationService.new)
    ..registerSingletonAsync<LocalDBService>(() async {
      final LocalDBService localDBService = LocalDBService();
      await localDBService.initService();
      return localDBService;
    })
    ..registerLazySingleton<APIService>(APIService.new)
    ..registerLazySingleton<ActivityRepository>(ActivityRepository.new)
    // ..registerLazySingleton<LoginRepository>(LoginRepository.new)
    // ..registerLazySingleton<AccountRepository>(AccountRepository.new)
    // ..registerLazySingleton<ForexLoungeRepository>(ForexLoungeRepository.new)
    // ..registerLazySingleton<PrivilegesRepository>(PrivilegesRepository.new)
    // ..registerLazySingleton<NotificationsRepository>(
    //     NotificationsRepository.new)
    // ..registerLazySingleton<LocalizationService>(
    //     () => LocalizationService(navigationService: locator()))

    /// Page Dependencies
    ..registerFactory<ActivityProvider>(() => ActivityProvider());
  // ..registerFactory<MainProvider>(() => MainProvider())
  // ..registerFactory<RegisterProvider>(() => RegisterProvider())
  // ..registerFactory<NotificationsProvider>(() => NotificationsProvider())
  // ..registerFactory<ForgotPasswordProvider>(() => ForgotPasswordProvider())
  // ..registerFactory<DatePickerProvider>(() => DatePickerProvider())
  // ..registerFactory<AccountProvider>(() => AccountProvider())
  // ..registerFactory<ForexLoungeProvider>(() => ForexLoungeProvider())
  // ..registerFactory<LoungeAdditionalServicesProvider>(
  //     () => LoungeAdditionalServicesProvider())
  // ..registerFactory<SettingsProvider>(() => SettingsProvider())
  // ..registerFactory<ImportantMattersProvider>(
  //     () => ImportantMattersProvider())
  // ..registerFactory<PrivilegesProvider>(() => PrivilegesProvider())
  // ..registerFactory<LocaleProvider>(
  //     () => LocaleProvider(localDB: locator(), navigationService: locator()));

  await isLocatorAllReady();
}
