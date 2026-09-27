///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsHi extends Translations
    with BaseTranslations<AppLocale, Translations> {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsHi(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver,
      TranslationMetadata<AppLocale, Translations>? meta})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = meta ??
            TranslationMetadata(
              locale: AppLocale.hi,
              overrides: overrides ?? {},
              cardinalResolver: cardinalResolver,
              ordinalResolver: ordinalResolver,
            ),
        super(
            cardinalResolver: cardinalResolver,
            ordinalResolver: ordinalResolver) {
    super.$meta.setFlatMapFunction(
        $meta.getTranslation); // copy base translations to super.$meta
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <hi>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) =>
      $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

  late final TranslationsHi _root = this; // ignore: unused_field

  @override
  TranslationsHi $copyWith(
          {TranslationMetadata<AppLocale, Translations>? meta}) =>
      TranslationsHi(meta: meta ?? this.$meta);

  // Translations
  @override
  String get appTitle => 'Mona';
  @override
  String get nav_home => 'Mona';
  @override
  String get nav_intakes => 'Khurak';
  @override
  String get nav_levels => 'Star';
  @override
  String get nav_supplies => 'Samagri';
  @override
  String get takeAnIntake => 'Khurana le';
  @override
  String get addAnItem => 'Chiz jode';
  @override
  String get empty_home => 'Setting me schedule jodke shuru kare';
  @override
  String get allDone => 'Sab hogya!';
  @override
  String get noIntakesDue => 'Aaj koi khurak bakhi nahi hai';
  @override
  String get upcoming => 'Aanewala';
  @override
  String get asNeeded => 'Zaroorat padne par';
  @override
  String get taken => 'Le liya';
  @override
  String get yesterday => 'Kal';
  @override
  String get tomorrow => 'Kal';
  @override
  String get lastTaken => 'Pichli baar';
  @override
  String get neverTakenYet => 'Abhi tak nahi li';
  @override
  String get scheduleFrequencyDaily => 'Roz';
  @override
  String get scheduleFrequencyDailyDescription => 'Har din, nishchit samay par';
  @override
  String get scheduleFrequencyInterval => 'Antaral';
  @override
  String get scheduleFrequencyIntervalDescription => 'Kuch dino me';
  @override
  String get scheduleFrequencyWeekly => 'Saptahik';
  @override
  String get scheduleFrequencyWeeklyDescription => 'Hafte ke kuch din';
  @override
  String get scheduleFrequencyMonthly => 'Somvar';
  @override
  String get scheduleFrequencyMonthlyDescription => 'Har mahine usi din';
  @override
  String get scheduleFrequencyAsNeeded => 'Zaroorat padne par';
  @override
  String get scheduleFrequencyAsNeededDescription => 'Koi fix schedule';
  @override
  String get newUpdateAvailable => 'Ekta Naya update upland hai!';
  @override
  String get goToSettings => 'Settings me jaye';
  @override
  String get settingsTitle => 'Settings';
  @override
  String get notifications => 'Suchnaye';
  @override
  String get schedulesAndNotifications => 'Schedule aur suchnaye';
  @override
  String get general => 'Samanya';
  @override
  String get schedules => 'Schedule';
  @override
  String get noSchedules => 'Koi schedule nahi';
  @override
  String get language => 'Bhasha';
  @override
  String get languageFollowDevice => 'Device ki bhasha ka palan kare';
  @override
  String get selectLanguage => 'Bhasha chune';
  @override
  String get enableNotifications => 'Notification chalu kare';
  @override
  String get enableNotificationsDescription => 'Reminder bhejo';
  @override
  String get anchorToLastIntake => 'Pickle sevan ki aadhar par';
  @override
  String get anchorToLastIntakeDescription =>
      'Agli khurak ko pichli bar lene ke band ek pure antaral ke baad schedule karta hai';
  @override
  String get notificationsDisabledTitle => 'Notification band hai';
  @override
  String get clickToOpenSettings => 'Setting kholne ke liye click kare';
  @override
  String get exactRemindersDisabled => 'Satik reminded ka samay band hai';
  @override
  String get remindersDelayed =>
      'Yaad dilane me thod Der ho sakti hai settings ke liye type kare।';
  @override
  String get medicalSettings => 'Chikitsya settings';
  @override
  String get theme => 'Vishay';
  @override
  String get themeCustomizeColors => 'App ke rang badle';
  @override
  String get customThemeEnabled => 'Custom vishay';
  @override
  String get themeGenerate => 'Banaye';
  @override
  String get themeVariant => 'Alag roop';
  @override
  String get themeContrast => 'Antar';
  @override
  String get themeContrastStandard => 'Manak';
  @override
  String get themeContrastMedium => 'Madhya';
  @override
  String get themeContrastHigh => 'Uppar';
  @override
  String get autoUpdate => 'Apne aap update';
  @override
  String get autoUpdateDescription =>
      'Apne aap check jab naye updates launch ho jayenge';
  @override
  String get checkForUpdates => 'Updates dekhe';
  @override
  String get checkForUpdatesDescription =>
      'Naye version ke liye manually check kare\n yeh aapko internet se connect karega\(Koi data nahi milega)';
  @override
  String appVersion({required Object version}) => 'मोना संस्करण ${version}';
  @override
  String get backupSaved => 'बैकअप बचाया';
  @override
  String exportFailed({required Object error}) =>
      'निर्यात करने में विफल: ${error}';
  @override
  String get importDataTitle => 'आयात डेटा';
  @override
  String get importDataSubtitle => 'JSON बैकअप से डेटा पुनर्स्थापित करें';
  @override
  String get importDataOverwriteWarning =>
      'यह बैकअप के साथ अपने सभी वर्तमान डेटा को ओवरराइट करेगा। यह कार्रवाई नहीं की जा सकती है। क्या आप जारी रखना चाहते हैं?';
  @override
  String get importConfirm => 'आयात';
  @override
  String get importSuccessfulTitle => 'सफल आयात';
  @override
  String get importRestartRequired =>
      'कृपया ऐप को पुनर्स्थापित किए गए डेटा को लागू करने के लिए पुनः आरंभ करें।।';
  @override
  String get closeApp => 'ऐप बंद करें';
  @override
  String importFailed({required Object error}) =>
      'आयात करने में विफल: ${error}';
  @override
  String get updates => 'अपडेट';
  @override
  String get dataManagement => 'डेटा प्रबंधन';
  @override
  String get exportDataTitle => 'डेटा निर्यात करें';
  @override
  String get exportDataSubtitle => 'अपने डेटा को JSON फाइल में सेव करें';
  @override
  String get units => 'यूनिट';
  @override
  String get updateNoCompatibleApk =>
      'आपके डिवाइस के लिए कोई संगत अपडेट नहीं मिला।।';
  @override
  String get updateAppUpToDate => 'आपका ऐप तारीख तक है!';
  @override
  String get updateCheckNetworkError => 'अभी अद्यतन की जाँच नहीं कर सका।।';
  @override
  String get updateDialogTitle => 'अद्यतन उपलब्ध';
  @override
  String updateDialogBody({required Object latest, required Object current}) =>
      'संस्करण ${latest} उपलब्ध है! (Current: ${current}) \n \nAn अद्यतन अपने डिवाइस के साथ संगत स्थापित करने के लिए तैयार है।।';
  @override
  String get updateDownloadAndInstall => 'डाउनलोड करें';
  @override
  String get updateInstallPermissionRequired =>
      'अनुमति अद्यतन स्थापित करने के लिए आवश्यक है।।';
  @override
  String get updateDownloadingTitle => 'डाउनलोड करें अद्यतन..।';
  @override
  String updateFailedOpenInstaller({required Object message}) =>
      'खोलने के लिए विफल: ${message}';
  @override
  String get updateDownloadFailed =>
      'डाउनलोड विफल रहा। कृपया अपने कनेक्शन की जांच करें।।';
  @override
  String get secretSettings => 'गुप्त सेटिंग्स';
  @override
  String get slimeMode => 'स्लिम मोड';
  @override
  String notificationMedicationReminderTitle({required Object scheduleName}) =>
      'समय लेने के लिए ${scheduleName}';
  @override
  String notificationMedicationReminderBodyDate({required Object date}) =>
      '${date} के लिए अनुसूचित';
  @override
  String notificationMedicationReminderBodyTime({required Object time}) =>
      '${time} के लिए अनुसूचित';
  @override
  String notificationMedicationReminderBodyWeekday({required Object weekday}) =>
      '${weekday} के लिए अनुसूचित';
  @override
  String get addSchedule => 'एक अनुसूची जोड़ें';
  @override
  String get addScheduleToGetStarted => 'शुरू करने के लिए एक अनुसूची जोड़ें।।';
  @override
  String get newSchedule => 'नया कार्यक्रम';
  @override
  String get every => 'हर';
  @override
  String get days => 'दिन';
  @override
  String get dayOfMonth => 'महीना';
  @override
  String get months => 'Mahine';
  @override
  String get startDate => 'प्रारंभ तिथि';
  @override
  String get pickATime => 'एक समय चुनें';
  @override
  String get addIntakeTime => 'समय जोड़ें';
  @override
  String get editScheduleInfo => 'अनुसूची जानकारी संपादित करें';
  @override
  String get scheduling => 'शेड्यूलिंग';
  @override
  String get editSchedule => 'संपादित करें';
  @override
  String deleteSchedule({required Object name}) => '${name}?';
  @override
  String get addNotification => 'अधिसूचना जोड़ें';
  @override
  String get empty_intakes => 'ले लिया गया सेवन यहाँ दिखाई देगा';
  @override
  String daysAgoCount({required num count}) =>
      (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(
        count,
        one: '${count} pehle',
        other: '${count} pehle',
      );
  @override
  String inDaysCount({required num count}) =>
      (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(
        count,
        one: '${count} Dinon me',
        other: '${count} Dinon me',
      );
  @override
  String scheduleFrequencyEveryNDays({required num count}) =>
      (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(
        count,
        one: 'Har din',
        other: 'Har ${count} din',
      );
  @override
  String scheduleFrequencyOnDayEveryNMonths(
          {required num count, required Object day}) =>
      (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(
        count,
        one: 'Din ${day}, har mahine',
        other: 'Har ${count}, mahine, ${day} tarikh',
      );
  @override
  String schedulesCreated({required num count}) =>
      (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(
        count,
        one: '${count} manage gaye',
        other: '${count} banaye gaye',
      );
  @override
  String onHrtForDays({required num count}) =>
      (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(
        count,
        one: '${count} दिनों के लिए HRT पर',
        other: '${count} दिनों के लिए HRT पर',
      );
  @override
  String onHrtForMonths({required num count}) =>
      (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(
        count,
        one: '${count} महीनों के लिए HRT पर',
        other: '${count} महीनों के लिए HRT पर',
      );
}

/// The flat map containing all translations for locale <hi>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHi {
  dynamic _flatMapFunction(String path) {
    return switch (path) {
      'appTitle' => 'Mona',
      'nav_home' => 'Mona',
      'nav_intakes' => 'Khurak',
      'nav_levels' => 'Star',
      'nav_supplies' => 'Samagri',
      'takeAnIntake' => 'Khurana le',
      'addAnItem' => 'Chiz jode',
      'empty_home' => 'Setting me schedule jodke shuru kare',
      'allDone' => 'Sab hogya!',
      'noIntakesDue' => 'Aaj koi khurak bakhi nahi hai',
      'upcoming' => 'Aanewala',
      'asNeeded' => 'Zaroorat padne par',
      'taken' => 'Le liya',
      'yesterday' => 'Kal',
      'tomorrow' => 'Kal',
      'lastTaken' => 'Pichli baar',
      'neverTakenYet' => 'Abhi tak nahi li',
      'scheduleFrequencyDaily' => 'Roz',
      'scheduleFrequencyDailyDescription' => 'Har din, nishchit samay par',
      'scheduleFrequencyInterval' => 'Antaral',
      'scheduleFrequencyIntervalDescription' => 'Kuch dino me',
      'scheduleFrequencyWeekly' => 'Saptahik',
      'scheduleFrequencyWeeklyDescription' => 'Hafte ke kuch din',
      'scheduleFrequencyMonthly' => 'Somvar',
      'scheduleFrequencyMonthlyDescription' => 'Har mahine usi din',
      'scheduleFrequencyAsNeeded' => 'Zaroorat padne par',
      'scheduleFrequencyAsNeededDescription' => 'Koi fix schedule',
      'newUpdateAvailable' => 'Ekta Naya update upland hai!',
      'goToSettings' => 'Settings me jaye',
      'settingsTitle' => 'Settings',
      'notifications' => 'Suchnaye',
      'schedulesAndNotifications' => 'Schedule aur suchnaye',
      'general' => 'Samanya',
      'schedules' => 'Schedule',
      'noSchedules' => 'Koi schedule nahi',
      'language' => 'Bhasha',
      'languageFollowDevice' => 'Device ki bhasha ka palan kare',
      'selectLanguage' => 'Bhasha chune',
      'enableNotifications' => 'Notification chalu kare',
      'enableNotificationsDescription' => 'Reminder bhejo',
      'anchorToLastIntake' => 'Pickle sevan ki aadhar par',
      'anchorToLastIntakeDescription' =>
        'Agli khurak ko pichli bar lene ke band ek pure antaral ke baad schedule karta hai',
      'notificationsDisabledTitle' => 'Notification band hai',
      'clickToOpenSettings' => 'Setting kholne ke liye click kare',
      'exactRemindersDisabled' => 'Satik reminded ka samay band hai',
      'remindersDelayed' =>
        'Yaad dilane me thod Der ho sakti hai settings ke liye type kare।',
      'medicalSettings' => 'Chikitsya settings',
      'theme' => 'Vishay',
      'themeCustomizeColors' => 'App ke rang badle',
      'customThemeEnabled' => 'Custom vishay',
      'themeGenerate' => 'Banaye',
      'themeVariant' => 'Alag roop',
      'themeContrast' => 'Antar',
      'themeContrastStandard' => 'Manak',
      'themeContrastMedium' => 'Madhya',
      'themeContrastHigh' => 'Uppar',
      'autoUpdate' => 'Apne aap update',
      'autoUpdateDescription' =>
        'Apne aap check jab naye updates launch ho jayenge',
      'checkForUpdates' => 'Updates dekhe',
      'checkForUpdatesDescription' =>
        'Naye version ke liye manually check kare\n yeh aapko internet se connect karega\(Koi data nahi milega)',
      'appVersion' => ({required Object version}) => 'मोना संस्करण ${version}',
      'backupSaved' => 'बैकअप बचाया',
      'exportFailed' => ({required Object error}) =>
          'निर्यात करने में विफल: ${error}',
      'importDataTitle' => 'आयात डेटा',
      'importDataSubtitle' => 'JSON बैकअप से डेटा पुनर्स्थापित करें',
      'importDataOverwriteWarning' =>
        'यह बैकअप के साथ अपने सभी वर्तमान डेटा को ओवरराइट करेगा। यह कार्रवाई नहीं की जा सकती है। क्या आप जारी रखना चाहते हैं?',
      'importConfirm' => 'आयात',
      'importSuccessfulTitle' => 'सफल आयात',
      'importRestartRequired' =>
        'कृपया ऐप को पुनर्स्थापित किए गए डेटा को लागू करने के लिए पुनः आरंभ करें।।',
      'closeApp' => 'ऐप बंद करें',
      'importFailed' => ({required Object error}) =>
          'आयात करने में विफल: ${error}',
      'updates' => 'अपडेट',
      'dataManagement' => 'डेटा प्रबंधन',
      'exportDataTitle' => 'डेटा निर्यात करें',
      'exportDataSubtitle' => 'अपने डेटा को JSON फाइल में सेव करें',
      'units' => 'यूनिट',
      'updateNoCompatibleApk' =>
        'आपके डिवाइस के लिए कोई संगत अपडेट नहीं मिला।।',
      'updateAppUpToDate' => 'आपका ऐप तारीख तक है!',
      'updateCheckNetworkError' => 'अभी अद्यतन की जाँच नहीं कर सका।।',
      'updateDialogTitle' => 'अद्यतन उपलब्ध',
      'updateDialogBody' => (
              {required Object latest, required Object current}) =>
          'संस्करण ${latest} उपलब्ध है! (Current: ${current}) \n \nAn अद्यतन अपने डिवाइस के साथ संगत स्थापित करने के लिए तैयार है।।',
      'updateDownloadAndInstall' => 'डाउनलोड करें',
      'updateInstallPermissionRequired' =>
        'अनुमति अद्यतन स्थापित करने के लिए आवश्यक है।।',
      'updateDownloadingTitle' => 'डाउनलोड करें अद्यतन..।',
      'updateFailedOpenInstaller' => ({required Object message}) =>
          'खोलने के लिए विफल: ${message}',
      'updateDownloadFailed' =>
        'डाउनलोड विफल रहा। कृपया अपने कनेक्शन की जांच करें।।',
      'secretSettings' => 'गुप्त सेटिंग्स',
      'slimeMode' => 'स्लिम मोड',
      'notificationMedicationReminderTitle' =>
        ({required Object scheduleName}) => 'समय लेने के लिए ${scheduleName}',
      'notificationMedicationReminderBodyDate' => ({required Object date}) =>
          '${date} के लिए अनुसूचित',
      'notificationMedicationReminderBodyTime' => ({required Object time}) =>
          '${time} के लिए अनुसूचित',
      'notificationMedicationReminderBodyWeekday' =>
        ({required Object weekday}) => '${weekday} के लिए अनुसूचित',
      'addSchedule' => 'एक अनुसूची जोड़ें',
      'addScheduleToGetStarted' => 'शुरू करने के लिए एक अनुसूची जोड़ें।।',
      'newSchedule' => 'नया कार्यक्रम',
      'every' => 'हर',
      'days' => 'दिन',
      'dayOfMonth' => 'महीना',
      'months' => 'Mahine',
      'startDate' => 'प्रारंभ तिथि',
      'pickATime' => 'एक समय चुनें',
      'addIntakeTime' => 'समय जोड़ें',
      'editScheduleInfo' => 'अनुसूची जानकारी संपादित करें',
      'scheduling' => 'शेड्यूलिंग',
      'editSchedule' => 'संपादित करें',
      'deleteSchedule' => ({required Object name}) => '${name}?',
      'addNotification' => 'अधिसूचना जोड़ें',
      'empty_intakes' => 'ले लिया गया सेवन यहाँ दिखाई देगा',
      'daysAgoCount' => ({required num count}) =>
          (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(
            count,
            one: '${count} pehle',
            other: '${count} pehle',
          ),
      'inDaysCount' => ({required num count}) =>
          (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(
            count,
            one: '${count} Dinon me',
            other: '${count} Dinon me',
          ),
      'scheduleFrequencyEveryNDays' => ({required num count}) =>
          (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(
            count,
            one: 'Har din',
            other: 'Har ${count} din',
          ),
      'scheduleFrequencyOnDayEveryNMonths' => (
              {required num count, required Object day}) =>
          (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(
            count,
            one: 'Din ${day}, har mahine',
            other: 'Har ${count}, mahine, ${day} tarikh',
          ),
      'schedulesCreated' => ({required num count}) =>
          (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(
            count,
            one: '${count} manage gaye',
            other: '${count} banaye gaye',
          ),
      'onHrtForDays' => ({required num count}) =>
          (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(
            count,
            one: '${count} दिनों के लिए HRT पर',
            other: '${count} दिनों के लिए HRT पर',
          ),
      'onHrtForMonths' => ({required num count}) =>
          (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(
            count,
            one: '${count} महीनों के लिए HRT पर',
            other: '${count} महीनों के लिए HRT पर',
          ),
      _ => null,
    };
  }
}
