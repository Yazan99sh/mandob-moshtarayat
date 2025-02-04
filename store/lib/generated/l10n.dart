// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null, 'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;
 
      return instance;
    });
  } 

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null, 'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your Email`
  String get pleaseEnterYourEmail {
    return Intl.message(
      'Please Enter Your Email',
      name: 'pleaseEnterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `I have an account`
  String get iHaveAnAccount {
    return Intl.message(
      'I have an account',
      name: 'iHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Error Happened`
  String get errorHappened {
    return Intl.message(
      'Error Happened',
      name: 'errorHappened',
      desc: '',
      args: [],
    );
  }

  /// `Error Loading Data`
  String get errorLoadingData {
    return Intl.message(
      'Error Loading Data',
      name: 'errorLoadingData',
      desc: '',
      args: [],
    );
  }

  /// `Email Address is Required`
  String get emailAddressIsRequired {
    return Intl.message(
      'Email Address is Required',
      name: 'emailAddressIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Captain`
  String get captain {
    return Intl.message(
      'Captain',
      name: 'captain',
      desc: '',
      args: [],
    );
  }

  /// `Store Owner`
  String get storeOwner {
    return Intl.message(
      'Store Owner',
      name: 'storeOwner',
      desc: '',
      args: [],
    );
  }

  /// `Chat Room`
  String get chatRoom {
    return Intl.message(
      'Chat Room',
      name: 'chatRoom',
      desc: '',
      args: [],
    );
  }

  /// `Start Writing`
  String get startWriting {
    return Intl.message(
      'Start Writing',
      name: 'startWriting',
      desc: '',
      args: [],
    );
  }

  /// `Accept Order`
  String get acceptOrder {
    return Intl.message(
      'Accept Order',
      name: 'acceptOrder',
      desc: '',
      args: [],
    );
  }

  /// `I Arrived at the Store`
  String get iArrivedAtTheStore {
    return Intl.message(
      'I Arrived at the Store',
      name: 'iArrivedAtTheStore',
      desc: '',
      args: [],
    );
  }

  /// `I Got the Package`
  String get iGotThePackage {
    return Intl.message(
      'I Got the Package',
      name: 'iGotThePackage',
      desc: '',
      args: [],
    );
  }

  /// `I Got the Cash`
  String get iGotTheCash {
    return Intl.message(
      'I Got the Cash',
      name: 'iGotTheCash',
      desc: '',
      args: [],
    );
  }

  /// `I Finished Delivering`
  String get iFinishedDelivering {
    return Intl.message(
      'I Finished Delivering',
      name: 'iFinishedDelivering',
      desc: '',
      args: [],
    );
  }

  /// `Order is in undefined State`
  String get orderIsInUndefinedState {
    return Intl.message(
      'Order is in undefined State',
      name: 'orderIsInUndefinedState',
      desc: '',
      args: [],
    );
  }

  /// `Searching for Captain`
  String get searchingForCaptain {
    return Intl.message(
      'Searching for Captain',
      name: 'searchingForCaptain',
      desc: '',
      args: [],
    );
  }

  /// `Captain is in the way`
  String get captainIsInTheWay {
    return Intl.message(
      'Captain is in the way',
      name: 'captainIsInTheWay',
      desc: '',
      args: [],
    );
  }

  /// `Captain is in store`
  String get captainIsInStore {
    return Intl.message(
      'Captain is in store',
      name: 'captainIsInStore',
      desc: '',
      args: [],
    );
  }

  /// `Captain is Delivering`
  String get captainIsDelivering {
    return Intl.message(
      'Captain is Delivering',
      name: 'captainIsDelivering',
      desc: '',
      args: [],
    );
  }

  /// `Captain got the cash`
  String get captainGotTheCash {
    return Intl.message(
      'Captain got the cash',
      name: 'captainGotTheCash',
      desc: '',
      args: [],
    );
  }

  /// `Order is done!`
  String get orderIsDone {
    return Intl.message(
      'Order is done!',
      name: 'orderIsDone',
      desc: '',
      args: [],
    );
  }

  /// `Please input phone number`
  String get pleaseInputPhoneNumber {
    return Intl.message(
      'Please input phone number',
      name: 'pleaseInputPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Code`
  String get confirmCode {
    return Intl.message(
      'Confirm Code',
      name: 'confirmCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resendCode {
    return Intl.message(
      'Resend Code',
      name: 'resendCode',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Saudi Arabia`
  String get saudiArabia {
    return Intl.message(
      'Saudi Arabia',
      name: 'saudiArabia',
      desc: '',
      args: [],
    );
  }

  /// `Lebanon`
  String get lebanon {
    return Intl.message(
      'Lebanon',
      name: 'lebanon',
      desc: '',
      args: [],
    );
  }

  /// `Syria`
  String get syria {
    return Intl.message(
      'Syria',
      name: 'syria',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Send me code`
  String get sendMeCode {
    return Intl.message(
      'Send me code',
      name: 'sendMeCode',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get signOut {
    return Intl.message(
      'Sign out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get orderDetails {
    return Intl.message(
      'Order Details',
      name: 'orderDetails',
      desc: '',
      args: [],
    );
  }

  /// `Order Created, Return to Orders`
  String get orderCreatedReturnToOrders {
    return Intl.message(
      'Order Created, Return to Orders',
      name: 'orderCreatedReturnToOrders',
      desc: '',
      args: [],
    );
  }

  /// `New Order`
  String get newOrder {
    return Intl.message(
      'New Order',
      name: 'newOrder',
      desc: '',
      args: [],
    );
  }

  /// `Renew Subscription`
  String get renewSubscription {
    return Intl.message(
      'Renew Subscription',
      name: 'renewSubscription',
      desc: '',
      args: [],
    );
  }

  /// `Register Success, Setup my profile`
  String get registerSuccessSetupMyProfile {
    return Intl.message(
      'Register Success, Setup my profile',
      name: 'registerSuccessSetupMyProfile',
      desc: '',
      args: [],
    );
  }

  /// `Choose Your Size`
  String get chooseYourSize {
    return Intl.message(
      'Choose Your Size',
      name: 'chooseYourSize',
      desc: '',
      args: [],
    );
  }

  /// `1 - 20 Employee`
  String get smallLessThan20Employee {
    return Intl.message(
      '1 - 20 Employee',
      name: 'smallLessThan20Employee',
      desc: '',
      args: [],
    );
  }

  /// `21 - 100 Employees`
  String get mediumMoreThan20EmployeesLessThan100 {
    return Intl.message(
      '21 - 100 Employees',
      name: 'mediumMoreThan20EmployeesLessThan100',
      desc: '',
      args: [],
    );
  }

  /// `+100 Employees`
  String get largeMoreThan100Employees {
    return Intl.message(
      '+100 Employees',
      name: 'largeMoreThan100Employees',
      desc: '',
      args: [],
    );
  }

  /// `Open Chat Room`
  String get openChatRoom {
    return Intl.message(
      'Open Chat Room',
      name: 'openChatRoom',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Current Orders`
  String get currentOrders {
    return Intl.message(
      'Current Orders',
      name: 'currentOrders',
      desc: '',
      args: [],
    );
  }

  /// `Nearby Orders`
  String get nearbyOrders {
    return Intl.message(
      'Nearby Orders',
      name: 'nearbyOrders',
      desc: '',
      args: [],
    );
  }

  /// `Chat with Store Owner`
  String get chatWithStoreOwner {
    return Intl.message(
      'Chat with Store Owner',
      name: 'chatWithStoreOwner',
      desc: '',
      args: [],
    );
  }

  /// `Chat with Captain`
  String get chatWithCaptain {
    return Intl.message(
      'Chat with Captain',
      name: 'chatWithCaptain',
      desc: '',
      args: [],
    );
  }

  /// `Store Owner`
  String get whatsappWithStoreOwner {
    return Intl.message(
      'Store Owner',
      name: 'whatsappWithStoreOwner',
      desc: '',
      args: [],
    );
  }

  /// `Client`
  String get whatsappWithClient {
    return Intl.message(
      'Client',
      name: 'whatsappWithClient',
      desc: '',
      args: [],
    );
  }

  /// `Get Direction`
  String get getDirection {
    return Intl.message(
      'Get Direction',
      name: 'getDirection',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `I am`
  String get iAm {
    return Intl.message(
      'I am',
      name: 'iAm',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Preferred language`
  String get iSpeak {
    return Intl.message(
      'Preferred language',
      name: 'iSpeak',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `And I am`
  String get andIAm {
    return Intl.message(
      'And I am',
      name: 'andIAm',
      desc: '',
      args: [],
    );
  }

  /// `ME`
  String get me {
    return Intl.message(
      'ME',
      name: 'me',
      desc: '',
      args: [],
    );
  }

  /// `We need your image and your driver licence in order to sign up`
  String get weNeedYourImageAndYourDriverLicenceInOrder {
    return Intl.message(
      'We need your image and your driver licence in order to sign up',
      name: 'weNeedYourImageAndYourDriverLicenceInOrder',
      desc: '',
      args: [],
    );
  }

  /// `We need  your image in order to sign up`
  String get weNeedYourImageInOrderToSignUp {
    return Intl.message(
      'We need  your image in order to sign up',
      name: 'weNeedYourImageInOrderToSignUp',
      desc: '',
      args: [],
    );
  }

  /// `Upload and submit`
  String get uploadAndSubmit {
    return Intl.message(
      'Upload and submit',
      name: 'uploadAndSubmit',
      desc: '',
      args: [],
    );
  }

  /// `This Might Take a while, please wait`
  String get thisMightTakeAWhilePleaseWait {
    return Intl.message(
      'This Might Take a while, please wait',
      name: 'thisMightTakeAWhilePleaseWait',
      desc: '',
      args: [],
    );
  }

  /// `Uploading Image, Please Wait`
  String get uploadingImagesPleaseWait {
    return Intl.message(
      'Uploading Image, Please Wait',
      name: 'uploadingImagesPleaseWait',
      desc: '',
      args: [],
    );
  }

  /// `Driver Licence`
  String get driverLicence {
    return Intl.message(
      'Driver Licence',
      name: 'driverLicence',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Uploading and Submitting`
  String get uploadingAndSubmitting {
    return Intl.message(
      'Uploading and Submitting',
      name: 'uploadingAndSubmitting',
      desc: '',
      args: [],
    );
  }

  /// `Uploading Images`
  String get uploadingImages {
    return Intl.message(
      'Uploading Images',
      name: 'uploadingImages',
      desc: '',
      args: [],
    );
  }

  /// `Submitting Profile`
  String get submittingProfile {
    return Intl.message(
      'Submitting Profile',
      name: 'submittingProfile',
      desc: '',
      args: [],
    );
  }

  /// `Error Uploading Images!!`
  String get errorUploadingImages {
    return Intl.message(
      'Error Uploading Images!!',
      name: 'errorUploadingImages',
      desc: '',
      args: [],
    );
  }

  /// `Account Created`
  String get accountCreated {
    return Intl.message(
      'Account Created',
      name: 'accountCreated',
      desc: '',
      args: [],
    );
  }

  /// `Move to Orders`
  String get moveToOrders {
    return Intl.message(
      'Move to Orders',
      name: 'moveToOrders',
      desc: '',
      args: [],
    );
  }

  /// `Contact Phone Number`
  String get contactPhoneNumber {
    return Intl.message(
      'Contact Phone Number',
      name: 'contactPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Pay Subscription`
  String get paySubscription {
    return Intl.message(
      'Pay Subscription',
      name: 'paySubscription',
      desc: '',
      args: [],
    );
  }

  /// `Earn Cash`
  String get earnCash {
    return Intl.message(
      'Earn Cash',
      name: 'earnCash',
      desc: '',
      args: [],
    );
  }

  /// `Deliver`
  String get deliver {
    return Intl.message(
      'Deliver',
      name: 'deliver',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get accept {
    return Intl.message(
      'Accept',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `Check Orders`
  String get checkOrders {
    return Intl.message(
      'Check Orders',
      name: 'checkOrders',
      desc: '',
      args: [],
    );
  }

  /// `Open the app`
  String get openTheApp {
    return Intl.message(
      'Open the app',
      name: 'openTheApp',
      desc: '',
      args: [],
    );
  }

  /// `Book a car`
  String get bookACar {
    return Intl.message(
      'Book a car',
      name: 'bookACar',
      desc: '',
      args: [],
    );
  }

  /// `We Deliver`
  String get weDeliver {
    return Intl.message(
      'We Deliver',
      name: 'weDeliver',
      desc: '',
      args: [],
    );
  }

  /// `Help me more`
  String get helpMeMore {
    return Intl.message(
      'Help me more',
      name: 'helpMeMore',
      desc: '',
      args: [],
    );
  }

  /// `Request Meeting`
  String get requestMeeting {
    return Intl.message(
      'Request Meeting',
      name: 'requestMeeting',
      desc: '',
      args: [],
    );
  }

  /// `To find out more, please leave your phone.\nand we will contact you personally`
  String get toFindOutMorePleaseLeaveYourPhonenandWeWill {
    return Intl.message(
      'To find out more, please leave your phone.\nand we will contact you personally',
      name: 'toFindOutMorePleaseLeaveYourPhonenandWeWill',
      desc: '',
      args: [],
    );
  }

  /// `We will contact you soon`
  String get weWillContactYouSoon {
    return Intl.message(
      'We will contact you soon',
      name: 'weWillContactYouSoon',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Mandob Moshtarayat`
  String get welcomeTomandob_moshtarayat {
    return Intl.message(
      'Welcome to Mandob Moshtarayat',
      name: 'welcomeTomandob_moshtarayat',
      desc: '',
      args: [],
    );
  }

  /// `Init Data`
  String get initData {
    return Intl.message(
      'Init Data',
      name: 'initData',
      desc: '',
      args: [],
    );
  }

  /// `Save Location as Branch 01`
  String get saveLocationAsBranch01 {
    return Intl.message(
      'Save Location as Branch 01',
      name: 'saveLocationAsBranch01',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Orders Screen`
  String get welcomeToOrdersScreen {
    return Intl.message(
      'Welcome to Orders Screen',
      name: 'welcomeToOrdersScreen',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password is too short`
  String get passwordIsTooShort {
    return Intl.message(
      'Password is too short',
      name: 'passwordIsTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Name is required`
  String get nameIsRequired {
    return Intl.message(
      'Name is required',
      name: 'nameIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Choose Your City`
  String get chooseYourCity {
    return Intl.message(
      'Choose Your City',
      name: 'chooseYourCity',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `From WhatsApp`
  String get fromWhatsapp {
    return Intl.message(
      'From WhatsApp',
      name: 'fromWhatsapp',
      desc: '',
      args: [],
    );
  }

  /// `Default Branch`
  String get defaultBranch {
    return Intl.message(
      'Default Branch',
      name: 'defaultBranch',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get cash {
    return Intl.message(
      'Cash',
      name: 'cash',
      desc: '',
      args: [],
    );
  }

  /// `online`
  String get online {
    return Intl.message(
      'online',
      name: 'online',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get to {
    return Intl.message(
      'To',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `Info`
  String get info {
    return Intl.message(
      'Info',
      name: 'info',
      desc: '',
      args: [],
    );
  }

  /// `Mohammad`
  String get mohammad {
    return Intl.message(
      'Mohammad',
      name: 'mohammad',
      desc: '',
      args: [],
    );
  }

  /// `Deliver To`
  String get deliverTo {
    return Intl.message(
      'Deliver To',
      name: 'deliverTo',
      desc: '',
      args: [],
    );
  }

  /// `Captain`
  String get whatsappWithCaptain {
    return Intl.message(
      'Captain',
      name: 'whatsappWithCaptain',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get order {
    return Intl.message(
      'Order',
      name: 'order',
      desc: '',
      args: [],
    );
  }

  /// `order`
  String get sOrder {
    return Intl.message(
      'order',
      name: 'sOrder',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Branch 01`
  String get branch01 {
    return Intl.message(
      'Branch 01',
      name: 'branch01',
      desc: '',
      args: [],
    );
  }

  /// `Create new order`
  String get createNewOrder {
    return Intl.message(
      'Create new order',
      name: 'createNewOrder',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Branch`
  String get branch {
    return Intl.message(
      'Branch',
      name: 'branch',
      desc: '',
      args: [],
    );
  }

  /// `Save Branches`
  String get saveBranches {
    return Intl.message(
      'Save Branches',
      name: 'saveBranches',
      desc: '',
      args: [],
    );
  }

  /// `Bank Name`
  String get bankName {
    return Intl.message(
      'Bank Name',
      name: 'bankName',
      desc: '',
      args: [],
    );
  }

  /// `Account Number`
  String get accountNumber {
    return Intl.message(
      'Account Number',
      name: 'accountNumber',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Error Loading Branches`
  String get errorLoadingBranches {
    return Intl.message(
      'Error Loading Branches',
      name: 'errorLoadingBranches',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Our Bank Name`
  String get ourBankName {
    return Intl.message(
      'Our Bank Name',
      name: 'ourBankName',
      desc: '',
      args: [],
    );
  }

  /// `Our Bank Account Number`
  String get ourBankAccountNumber {
    return Intl.message(
      'Our Bank Account Number',
      name: 'ourBankAccountNumber',
      desc: '',
      args: [],
    );
  }

  /// `Package`
  String get package {
    return Intl.message(
      'Package',
      name: 'package',
      desc: '',
      args: [],
    );
  }

  /// `Order/Month`
  String get ordermonth {
    return Intl.message(
      'Order/Month',
      name: 'ordermonth',
      desc: '',
      args: [],
    );
  }

  /// `Car`
  String get car {
    return Intl.message(
      'Car',
      name: 'car',
      desc: '',
      args: [],
    );
  }

  /// `APPLY`
  String get apply {
    return Intl.message(
      'APPLY',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Recipient Phone Number`
  String get recipientPhoneNumber {
    return Intl.message(
      'Recipient Phone Number',
      name: 'recipientPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Pick a Language`
  String get pickALanguage {
    return Intl.message(
      'Pick a Language',
      name: 'pickALanguage',
      desc: '',
      args: [],
    );
  }

  /// `Pick a Job`
  String get pickAJob {
    return Intl.message(
      'Pick a Job',
      name: 'pickAJob',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Please Select a Branch`
  String get pleaseSelectABranch {
    return Intl.message(
      'Please Select a Branch',
      name: 'pleaseSelectABranch',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service`
  String get termsOfService {
    return Intl.message(
      'Terms of Service',
      name: 'termsOfService',
      desc: '',
      args: [],
    );
  }

  /// `Created`
  String get created {
    return Intl.message(
      'Created',
      name: 'created',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message(
      'Unknown',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Captain Accepted Order`
  String get captainAcceptedOrder {
    return Intl.message(
      'Captain Accepted Order',
      name: 'captainAcceptedOrder',
      desc: '',
      args: [],
    );
  }

  /// `Captain in Store`
  String get captainInStore {
    return Intl.message(
      'Captain in Store',
      name: 'captainInStore',
      desc: '',
      args: [],
    );
  }

  /// `Captain Started Delivery`
  String get captainStartedDelivery {
    return Intl.message(
      'Captain Started Delivery',
      name: 'captainStartedDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Captain Got Cash`
  String get captainGotCash {
    return Intl.message(
      'Captain Got Cash',
      name: 'captainGotCash',
      desc: '',
      args: [],
    );
  }

  /// `Order is finished`
  String get orderIsFinished {
    return Intl.message(
      'Order is finished',
      name: 'orderIsFinished',
      desc: '',
      args: [],
    );
  }

  /// `Order is created`
  String get orderIsCreated {
    return Intl.message(
      'Order is created',
      name: 'orderIsCreated',
      desc: '',
      args: [],
    );
  }

  /// `Activity Log`
  String get activityLog {
    return Intl.message(
      'Activity Log',
      name: 'activityLog',
      desc: '',
      args: [],
    );
  }

  /// `Save Success`
  String get saveSuccess {
    return Intl.message(
      'Save Success',
      name: 'saveSuccess',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get myProfile {
    return Intl.message(
      'My Profile',
      name: 'myProfile',
      desc: '',
      args: [],
    );
  }

  /// `Reason of the report`
  String get reasonOfTheReport {
    return Intl.message(
      'Reason of the report',
      name: 'reasonOfTheReport',
      desc: '',
      args: [],
    );
  }

  /// `Create new Report`
  String get createNewReport {
    return Intl.message(
      'Create new Report',
      name: 'createNewReport',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Please Complete the Form`
  String get pleaseCompleteTheForm {
    return Intl.message(
      'Please Complete the Form',
      name: 'pleaseCompleteTheForm',
      desc: '',
      args: [],
    );
  }

  /// `Report sent`
  String get reportSent {
    return Intl.message(
      'Report sent',
      name: 'reportSent',
      desc: '',
      args: [],
    );
  }

  /// `Reason is Required`
  String get reasonIsRequired {
    return Intl.message(
      'Reason is Required',
      name: 'reasonIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please Provide us with the Client Name`
  String get pleaseProvideUsWithTheClientName {
    return Intl.message(
      'Please Provide us with the Client Name',
      name: 'pleaseProvideUsWithTheClientName',
      desc: '',
      args: [],
    );
  }

  /// `Please Provide us the client phone number`
  String get pleaseProvideUsTheClientPhoneNumber {
    return Intl.message(
      'Please Provide us the client phone number',
      name: 'pleaseProvideUsTheClientPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Store Name`
  String get storeName {
    return Intl.message(
      'Store Name',
      name: 'storeName',
      desc: '',
      args: [],
    );
  }

  /// `Store Phone`
  String get storePhone {
    return Intl.message(
      'Store Phone',
      name: 'storePhone',
      desc: '',
      args: [],
    );
  }

  /// `Phone is required`
  String get phoneIsRequired {
    return Intl.message(
      'Phone is required',
      name: 'phoneIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `New name`
  String get newName {
    return Intl.message(
      'New name',
      name: 'newName',
      desc: '',
      args: [],
    );
  }

  /// `Our Packages`
  String get ourPackages {
    return Intl.message(
      'Our Packages',
      name: 'ourPackages',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Please Provide the distance`
  String get pleaseProvideTheDistance {
    return Intl.message(
      'Please Provide the distance',
      name: 'pleaseProvideTheDistance',
      desc: '',
      args: [],
    );
  }

  /// `Finish Order, Provide distance in KM`
  String get finishOrderProvideDistanceInKm {
    return Intl.message(
      'Finish Order, Provide distance in KM',
      name: 'finishOrderProvideDistanceInKm',
      desc: '',
      args: [],
    );
  }

  /// `My Status`
  String get myStatus {
    return Intl.message(
      'My Status',
      name: 'myStatus',
      desc: '',
      args: [],
    );
  }

  /// `Direct Support`
  String get directSupport {
    return Intl.message(
      'Direct Support',
      name: 'directSupport',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get myOrders {
    return Intl.message(
      'My Orders',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Please Download mandob_moshtarayat`
  String get pleaseDownloadmandob_moshtarayat {
    return Intl.message(
      'Please Download mandob_moshtarayat',
      name: 'pleaseDownloadmandob_moshtarayat',
      desc: '',
      args: [],
    );
  }

  /// `My Plan`
  String get myPlan {
    return Intl.message(
      'My Plan',
      name: 'myPlan',
      desc: '',
      args: [],
    );
  }

  /// `Bank Account Number`
  String get bankAccountNumber {
    return Intl.message(
      'Bank Account Number',
      name: 'bankAccountNumber',
      desc: '',
      args: [],
    );
  }

  /// `STC Pay Code`
  String get stcPayCode {
    return Intl.message(
      'STC Pay Code',
      name: 'stcPayCode',
      desc: '',
      args: [],
    );
  }

  /// `Current Balance:`
  String get currentBalance {
    return Intl.message(
      'Current Balance:',
      name: 'currentBalance',
      desc: '',
      args: [],
    );
  }

  /// `Next Payment Date:`
  String get nextPaymentDate {
    return Intl.message(
      'Next Payment Date:',
      name: 'nextPaymentDate',
      desc: '',
      args: [],
    );
  }

  /// `Saudi Riyal`
  String get saudiRiyal {
    return Intl.message(
      'Saudi Riyal',
      name: 'saudiRiyal',
      desc: '',
      args: [],
    );
  }

  /// `Active Plan`
  String get activePlan {
    return Intl.message(
      'Active Plan',
      name: 'activePlan',
      desc: '',
      args: [],
    );
  }

  /// `Active Cars`
  String get activeCars {
    return Intl.message(
      'Active Cars',
      name: 'activeCars',
      desc: '',
      args: [],
    );
  }

  /// `Orders / Month`
  String get ordersMonth {
    return Intl.message(
      'Orders / Month',
      name: 'ordersMonth',
      desc: '',
      args: [],
    );
  }

  /// `Payment History`
  String get paymentHistory {
    return Intl.message(
      'Payment History',
      name: 'paymentHistory',
      desc: '',
      args: [],
    );
  }

  /// `Completed Orders`
  String get completedOrders {
    return Intl.message(
      'Completed Orders',
      name: 'completedOrders',
      desc: '',
      args: [],
    );
  }

  /// `Latest Updates`
  String get latestUpdates {
    return Intl.message(
      'Latest Updates',
      name: 'latestUpdates',
      desc: '',
      args: [],
    );
  }

  /// `My Balance`
  String get myBalance {
    return Intl.message(
      'My Balance',
      name: 'myBalance',
      desc: '',
      args: [],
    );
  }

  /// `No Image`
  String get noImage {
    return Intl.message(
      'No Image',
      name: 'noImage',
      desc: '',
      args: [],
    );
  }

  /// `How we work`
  String get howWeWork {
    return Intl.message(
      'How we work',
      name: 'howWeWork',
      desc: '',
      args: [],
    );
  }

  /// `Took`
  String get took {
    return Intl.message(
      'Took',
      name: 'took',
      desc: '',
      args: [],
    );
  }

  /// `I Agree to the Terms os service.`
  String get iAgreeToTheTermsOsService {
    return Intl.message(
      'I Agree to the Terms os service.',
      name: 'iAgreeToTheTermsOsService',
      desc: '',
      args: [],
    );
  }

  /// `I agree to the terms of service & privacy policy`
  String get iAgreeToTheTermsOfServicePrivacyPolicy {
    return Intl.message(
      'I agree to the terms of service & privacy policy',
      name: 'iAgreeToTheTermsOfServicePrivacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Business Name`
  String get businessName {
    return Intl.message(
      'Business Name',
      name: 'businessName',
      desc: '',
      args: [],
    );
  }

  /// `The number of cars unknown`
  String get unknownNumberOfCar {
    return Intl.message(
      'The number of cars unknown',
      name: 'unknownNumberOfCar',
      desc: '',
      args: [],
    );
  }

  /// `Recipient Name`
  String get recipientName {
    return Intl.message(
      'Recipient Name',
      name: 'recipientName',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Go`
  String get go {
    return Intl.message(
      'Go',
      name: 'go',
      desc: '',
      args: [],
    );
  }

  /// `Error logging in, firebase account not found`
  String get errorLoggingInFirebaseAccountNotFound {
    return Intl.message(
      'Error logging in, firebase account not found',
      name: 'errorLoggingInFirebaseAccountNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Location of customer`
  String get locationOfCustomer {
    return Intl.message(
      'Location of customer',
      name: 'locationOfCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure about deleting this product , please confirm`
  String get sureForDelete {
    return Intl.message(
      'Are you sure about deleting this product , please confirm',
      name: 'sureForDelete',
      desc: '',
      args: [],
    );
  }

  /// `the product has been deleted successfully`
  String get deleteSuccess {
    return Intl.message(
      'the product has been deleted successfully',
      name: 'deleteSuccess',
      desc: '',
      args: [],
    );
  }

  /// `distance in KM`
  String get ProvideDistanceInKm {
    return Intl.message(
      'distance in KM',
      name: 'ProvideDistanceInKm',
      desc: '',
      args: [],
    );
  }

  /// `Your subscription not verified yet`
  String get notVerified {
    return Intl.message(
      'Your subscription not verified yet',
      name: 'notVerified',
      desc: '',
      args: [],
    );
  }

  /// `Subscription options`
  String get renewPlan {
    return Intl.message(
      'Subscription options',
      name: 'renewPlan',
      desc: '',
      args: [],
    );
  }

  /// `Renew old package`
  String get renewOldPlan {
    return Intl.message(
      'Renew old package',
      name: 'renewOldPlan',
      desc: '',
      args: [],
    );
  }

  /// `Subscription with new package`
  String get renewNewPlan {
    return Intl.message(
      'Subscription with new package',
      name: 'renewNewPlan',
      desc: '',
      args: [],
    );
  }

  /// `Your subscription has been renewed`
  String get successRenew {
    return Intl.message(
      'Your subscription has been renewed',
      name: 'successRenew',
      desc: '',
      args: [],
    );
  }

  /// `Important Note`
  String get warnning {
    return Intl.message(
      'Important Note',
      name: 'warnning',
      desc: '',
      args: [],
    );
  }

  /// `Your subscription not activate yet please wait`
  String get inactive {
    return Intl.message(
      'Your subscription not activate yet please wait',
      name: 'inactive',
      desc: '',
      args: [],
    );
  }

  /// `You reach your limit of orders you can renew your subscription from settings`
  String get outOforders {
    return Intl.message(
      'You reach your limit of orders you can renew your subscription from settings',
      name: 'outOforders',
      desc: '',
      args: [],
    );
  }

  /// `Your subscription is out of date please renew your subscription`
  String get finishedDate {
    return Intl.message(
      'Your subscription is out of date please renew your subscription',
      name: 'finishedDate',
      desc: '',
      args: [],
    );
  }

  /// `Your request not accepted from administration you can contact us to get info`
  String get unaccept {
    return Intl.message(
      'Your request not accepted from administration you can contact us to get info',
      name: 'unaccept',
      desc: '',
      args: [],
    );
  }

  /// `There is no car available please wait your ongoing orders to finish`
  String get outOfCars {
    return Intl.message(
      'There is no car available please wait your ongoing orders to finish',
      name: 'outOfCars',
      desc: '',
      args: [],
    );
  }

  /// `You dont have a subscription yet`
  String get notSubscription {
    return Intl.message(
      'You dont have a subscription yet',
      name: 'notSubscription',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe`
  String get subscribe {
    return Intl.message(
      'Subscribe',
      name: 'subscribe',
      desc: '',
      args: [],
    );
  }

  /// `Your account not activated yet please wait`
  String get captainNotActive {
    return Intl.message(
      'Your account not activated yet please wait',
      name: 'captainNotActive',
      desc: '',
      args: [],
    );
  }

  /// `Your renew has been failed please try again`
  String get failureRenew {
    return Intl.message(
      'Your renew has been failed please try again',
      name: 'failureRenew',
      desc: '',
      args: [],
    );
  }

  /// `Store`
  String get store {
    return Intl.message(
      'Store',
      name: 'store',
      desc: '',
      args: [],
    );
  }

  /// `Update Branches`
  String get updateBranches {
    return Intl.message(
      'Update Branches',
      name: 'updateBranches',
      desc: '',
      args: [],
    );
  }

  /// `Update Branch`
  String get updateBranch {
    return Intl.message(
      'Update Branch',
      name: 'updateBranch',
      desc: '',
      args: [],
    );
  }

  /// `Save Branch`
  String get saveBranch {
    return Intl.message(
      'Save Branch',
      name: 'saveBranch',
      desc: '',
      args: [],
    );
  }

  /// `Edit Branch Name`
  String get editBranchName {
    return Intl.message(
      'Edit Branch Name',
      name: 'editBranchName',
      desc: '',
      args: [],
    );
  }

  /// `Branch has been updated successfully`
  String get updateBranchSuccess {
    return Intl.message(
      'Branch has been updated successfully',
      name: 'updateBranchSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Sorry your request for update branch faild please try again`
  String get updateBranchFailure {
    return Intl.message(
      'Sorry your request for update branch faild please try again',
      name: 'updateBranchFailure',
      desc: '',
      args: [],
    );
  }

  /// `Phone number is too short`
  String get phoneNumbertooShort {
    return Intl.message(
      'Phone number is too short',
      name: 'phoneNumbertooShort',
      desc: '',
      args: [],
    );
  }

  /// `Add Branch`
  String get addBranch {
    return Intl.message(
      'Add Branch',
      name: 'addBranch',
      desc: '',
      args: [],
    );
  }

  /// `Branch has been added successfully`
  String get addBranchSuccess {
    return Intl.message(
      'Branch has been added successfully',
      name: 'addBranchSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Sorry your request for add branch faild please try again`
  String get addBranchFailure {
    return Intl.message(
      'Sorry your request for add branch faild please try again',
      name: 'addBranchFailure',
      desc: '',
      args: [],
    );
  }

  /// `Our Service`
  String get ourService {
    return Intl.message(
      'Our Service',
      name: 'ourService',
      desc: '',
      args: [],
    );
  }

  /// `Most Sold Product`
  String get mostSoldProduct {
    return Intl.message(
      'Most Sold Product',
      name: 'mostSoldProduct',
      desc: '',
      args: [],
    );
  }

  /// `Best Store`
  String get bestStore {
    return Intl.message(
      'Best Store',
      name: 'bestStore',
      desc: '',
      args: [],
    );
  }

  /// `Nearby Store`
  String get nearbyStore {
    return Intl.message(
      'Nearby Store',
      name: 'nearbyStore',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Show All`
  String get showAll {
    return Intl.message(
      'Show All',
      name: 'showAll',
      desc: '',
      args: [],
    );
  }

  /// `Deliver on me`
  String get deliverForMe {
    return Intl.message(
      'Deliver on me',
      name: 'deliverForMe',
      desc: '',
      args: [],
    );
  }

  /// `External Order`
  String get externalOrder {
    return Intl.message(
      'External Order',
      name: 'externalOrder',
      desc: '',
      args: [],
    );
  }

  /// `Best Stores`
  String get BestStores {
    return Intl.message(
      'Best Stores',
      name: 'BestStores',
      desc: '',
      args: [],
    );
  }

  /// `Search for store , product`
  String get searchFor {
    return Intl.message(
      'Search for store , product',
      name: 'searchFor',
      desc: '',
      args: [],
    );
  }

  /// `views`
  String get views {
    return Intl.message(
      'views',
      name: 'views',
      desc: '',
      args: [],
    );
  }

  /// `highest rate`
  String get sortByRate {
    return Intl.message(
      'highest rate',
      name: 'sortByRate',
      desc: '',
      args: [],
    );
  }

  /// `Order Number`
  String get orderNumber {
    return Intl.message(
      'Order Number',
      name: 'orderNumber',
      desc: '',
      args: [],
    );
  }

  /// `order date`
  String get orderDate {
    return Intl.message(
      'order date',
      name: 'orderDate',
      desc: '',
      args: [],
    );
  }

  /// `Order Status`
  String get orderStatus {
    return Intl.message(
      'Order Status',
      name: 'orderStatus',
      desc: '',
      args: [],
    );
  }

  /// `cost`
  String get cost {
    return Intl.message(
      'cost',
      name: 'cost',
      desc: '',
      args: [],
    );
  }

  /// `Highest Rate`
  String get highestRate {
    return Intl.message(
      'Highest Rate',
      name: 'highestRate',
      desc: '',
      args: [],
    );
  }

  /// `By Earlier`
  String get sortByEarlier {
    return Intl.message(
      'By Earlier',
      name: 'sortByEarlier',
      desc: '',
      args: [],
    );
  }

  /// `search for order by order number`
  String get searchForOrder {
    return Intl.message(
      'search for order by order number',
      name: 'searchForOrder',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Orders Log`
  String get orderLog {
    return Intl.message(
      'Orders Log',
      name: 'orderLog',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Social Media`
  String get socialMedia {
    return Intl.message(
      'Social Media',
      name: 'socialMedia',
      desc: '',
      args: [],
    );
  }

  /// `Search for a notification`
  String get searchForNotifications {
    return Intl.message(
      'Search for a notification',
      name: 'searchForNotifications',
      desc: '',
      args: [],
    );
  }

  /// `category`
  String get category {
    return Intl.message(
      'category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `product`
  String get product {
    return Intl.message(
      'product',
      name: 'product',
      desc: '',
      args: [],
    );
  }

  /// `There is problem with your connection , please try again`
  String get networkError {
    return Intl.message(
      'There is problem with your connection , please try again',
      name: 'networkError',
      desc: '',
      args: [],
    );
  }

  /// `Search for`
  String get searchF {
    return Intl.message(
      'Search for',
      name: 'searchF',
      desc: '',
      args: [],
    );
  }

  /// `Most wanted`
  String get mostWanted {
    return Intl.message(
      'Most wanted',
      name: 'mostWanted',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Birth Date`
  String get birthDate {
    return Intl.message(
      'Birth Date',
      name: 'birthDate',
      desc: '',
      args: [],
    );
  }

  /// `store name`
  String get nameHint {
    return Intl.message(
      'store name',
      name: 'nameHint',
      desc: '',
      args: [],
    );
  }

  /// `choose your birth data`
  String get birthDateHint {
    return Intl.message(
      'choose your birth data',
      name: 'birthDateHint',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Personal Data`
  String get personalData {
    return Intl.message(
      'Personal Data',
      name: 'personalData',
      desc: '',
      args: [],
    );
  }

  /// `Update Data`
  String get updateYourData {
    return Intl.message(
      'Update Data',
      name: 'updateYourData',
      desc: '',
      args: [],
    );
  }

  /// `Community`
  String get community {
    return Intl.message(
      'Community',
      name: 'community',
      desc: '',
      args: [],
    );
  }

  /// `waiting`
  String get waiting {
    return Intl.message(
      'waiting',
      name: 'waiting',
      desc: '',
      args: [],
    );
  }

  /// `Product List`
  String get orderList {
    return Intl.message(
      'Product List',
      name: 'orderList',
      desc: '',
      args: [],
    );
  }

  /// `Bill`
  String get bill {
    return Intl.message(
      'Bill',
      name: 'bill',
      desc: '',
      args: [],
    );
  }

  /// `order price`
  String get orderPrice {
    return Intl.message(
      'order price',
      name: 'orderPrice',
      desc: '',
      args: [],
    );
  }

  /// `total`
  String get sum {
    return Intl.message(
      'total',
      name: 'sum',
      desc: '',
      args: [],
    );
  }

  /// `SAR`
  String get sar {
    return Intl.message(
      'SAR',
      name: 'sar',
      desc: '',
      args: [],
    );
  }

  /// `Deliver Price`
  String get deliverPrice {
    return Intl.message(
      'Deliver Price',
      name: 'deliverPrice',
      desc: '',
      args: [],
    );
  }

  /// `waiting for a captain to accept this order`
  String get waitingDescription {
    return Intl.message(
      'waiting for a captain to accept this order',
      name: 'waitingDescription',
      desc: '',
      args: [],
    );
  }

  /// `captain packing your order`
  String get captainInStoreDescription {
    return Intl.message(
      'captain packing your order',
      name: 'captainInStoreDescription',
      desc: '',
      args: [],
    );
  }

  /// `captain on his way to you`
  String get deliveringDescription {
    return Intl.message(
      'captain on his way to you',
      name: 'deliveringDescription',
      desc: '',
      args: [],
    );
  }

  /// `captain headed to store`
  String get captainAcceptOrderDescription {
    return Intl.message(
      'captain headed to store',
      name: 'captainAcceptOrderDescription',
      desc: '',
      args: [],
    );
  }

  /// `your order has delivered`
  String get orderDeliveredDescription {
    return Intl.message(
      'your order has delivered',
      name: 'orderDeliveredDescription',
      desc: '',
      args: [],
    );
  }

  /// `You can know your order status in this interface`
  String get orderStatusDescription {
    return Intl.message(
      'You can know your order status in this interface',
      name: 'orderStatusDescription',
      desc: '',
      args: [],
    );
  }

  /// `Destination Address`
  String get destinationAddress {
    return Intl.message(
      'Destination Address',
      name: 'destinationAddress',
      desc: '',
      args: [],
    );
  }

  /// `Receipt point`
  String get myAddress {
    return Intl.message(
      'Receipt point',
      name: 'myAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please place your order details here`
  String get orderDetailHint {
    return Intl.message(
      'Please place your order details here',
      name: 'orderDetailHint',
      desc: '',
      args: [],
    );
  }

  /// `Please place your destination address`
  String get destinationAddressHint {
    return Intl.message(
      'Please place your destination address',
      name: 'destinationAddressHint',
      desc: '',
      args: [],
    );
  }

  /// `Please place your address`
  String get myAddressHint {
    return Intl.message(
      'Please place your address',
      name: 'myAddressHint',
      desc: '',
      args: [],
    );
  }

  /// `Card`
  String get card {
    return Intl.message(
      'Card',
      name: 'card',
      desc: '',
      args: [],
    );
  }

  /// `Please update your current location if you want to`
  String get chooseAddressNote {
    return Intl.message(
      'Please update your current location if you want to',
      name: 'chooseAddressNote',
      desc: '',
      args: [],
    );
  }

  /// `Order Time`
  String get orderTime {
    return Intl.message(
      'Order Time',
      name: 'orderTime',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Time`
  String get deliveryTime {
    return Intl.message(
      'Delivery Time',
      name: 'deliveryTime',
      desc: '',
      args: [],
    );
  }

  /// `Choose`
  String get paymentMethodHint {
    return Intl.message(
      'Choose',
      name: 'paymentMethodHint',
      desc: '',
      args: [],
    );
  }

  /// `Data fetched succesfuly`
  String get statusCodeOk {
    return Intl.message(
      'Data fetched succesfuly',
      name: 'statusCodeOk',
      desc: '',
      args: [],
    );
  }

  /// `The request has succeeded and a new resource has been created as a result`
  String get statusCodeCreated {
    return Intl.message(
      'The request has succeeded and a new resource has been created as a result',
      name: 'statusCodeCreated',
      desc: '',
      args: [],
    );
  }

  /// `The server could not understand the request due to invalid syntax`
  String get statusCodeBadRequest {
    return Intl.message(
      'The server could not understand the request due to invalid syntax',
      name: 'statusCodeBadRequest',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorized`
  String get statusCodeUnauthorized {
    return Intl.message(
      'Unauthorized',
      name: 'statusCodeUnauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Data not found`
  String get StatusCodeNotFound {
    return Intl.message(
      'Data not found',
      name: 'StatusCodeNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get note {
    return Intl.message(
      'Note',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message(
      'Notes',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `Order created successfully`
  String get successCreateOrder {
    return Intl.message(
      'Order created successfully',
      name: 'successCreateOrder',
      desc: '',
      args: [],
    );
  }

  /// `Please choose payment method`
  String get pleaseProvidePaymentMethode {
    return Intl.message(
      'Please choose payment method',
      name: 'pleaseProvidePaymentMethode',
      desc: '',
      args: [],
    );
  }

  /// `Please provide your address on our map`
  String get pleaseProvideYourAddress {
    return Intl.message(
      'Please provide your address on our map',
      name: 'pleaseProvideYourAddress',
      desc: '',
      args: [],
    );
  }

  /// `Your cart is empty please choose items to add`
  String get yourCartEmpty {
    return Intl.message(
      'Your cart is empty please choose items to add',
      name: 'yourCartEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Please place your order notes`
  String get noteOfOrder {
    return Intl.message(
      'Please place your order notes',
      name: 'noteOfOrder',
      desc: '',
      args: [],
    );
  }

  /// `choose location`
  String get chooseLocation {
    return Intl.message(
      'choose location',
      name: 'chooseLocation',
      desc: '',
      args: [],
    );
  }

  /// `Choose Receipt Location`
  String get chooseReceiptPoint {
    return Intl.message(
      'Choose Receipt Location',
      name: 'chooseReceiptPoint',
      desc: '',
      args: [],
    );
  }

  /// `Choose Destination Location`
  String get chooseDestinationPoint {
    return Intl.message(
      'Choose Destination Location',
      name: 'chooseDestinationPoint',
      desc: '',
      args: [],
    );
  }

  /// `Finish Order`
  String get finishedOrdering {
    return Intl.message(
      'Finish Order',
      name: 'finishedOrdering',
      desc: '',
      args: [],
    );
  }

  /// `Private Order`
  String get privateOrder {
    return Intl.message(
      'Private Order',
      name: 'privateOrder',
      desc: '',
      args: [],
    );
  }

  /// `Store Products`
  String get storeProducts {
    return Intl.message(
      'Store Products',
      name: 'storeProducts',
      desc: '',
      args: [],
    );
  }

  /// `Order Type`
  String get orderType {
    return Intl.message(
      'Order Type',
      name: 'orderType',
      desc: '',
      args: [],
    );
  }

  /// `Order number not found!!`
  String get orderNumberNotFound {
    return Intl.message(
      'Order number not found!!',
      name: 'orderNumberNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Can not remove it, Exceeded time allowed`
  String get exceededAllowedTime {
    return Intl.message(
      'Can not remove it, Exceeded time allowed',
      name: 'exceededAllowedTime',
      desc: '',
      args: [],
    );
  }

  /// `Can not remove it, The captain received the order`
  String get notAllowedCaptainReceived {
    return Intl.message(
      'Can not remove it, The captain received the order',
      name: 'notAllowedCaptainReceived',
      desc: '',
      args: [],
    );
  }

  /// `Orders Details`
  String get updateOrders {
    return Intl.message(
      'Orders Details',
      name: 'updateOrders',
      desc: '',
      args: [],
    );
  }

  /// `You can update your order item from this interface`
  String get updateOrderNote {
    return Intl.message(
      'You can update your order item from this interface',
      name: 'updateOrderNote',
      desc: '',
      args: [],
    );
  }

  /// `WELCOME TO TWASLNA APP`
  String get welcomeToOurApp {
    return Intl.message(
      'WELCOME TO TWASLNA APP',
      name: 'welcomeToOurApp',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been updated`
  String get updateOrderSuccess {
    return Intl.message(
      'Your order has been updated',
      name: 'updateOrderSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `username or phone number`
  String get registerHint {
    return Intl.message(
      'username or phone number',
      name: 'registerHint',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been registered successfully`
  String get registerSuccess {
    return Intl.message(
      'Your account has been registered successfully',
      name: 'registerSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been logged successfully`
  String get loginSuccess {
    return Intl.message(
      'Your account has been logged successfully',
      name: 'loginSuccess',
      desc: '',
      args: [],
    );
  }

  /// `There is no data to show you yet`
  String get homeDataEmpty {
    return Intl.message(
      'There is no data to show you yet',
      name: 'homeDataEmpty',
      desc: '',
      args: [],
    );
  }

  /// `refresh`
  String get refresh {
    return Intl.message(
      'refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `The next problems occurred`
  String get errOc {
    return Intl.message(
      'The next problems occurred',
      name: 'errOc',
      desc: '',
      args: [],
    );
  }

  /// `Please login to resuming order sending`
  String get pleaseLoginToMakeOrder {
    return Intl.message(
      'Please login to resuming order sending',
      name: 'pleaseLoginToMakeOrder',
      desc: '',
      args: [],
    );
  }

  /// `Please fill the field`
  String get pleaseCompleteField {
    return Intl.message(
      'Please fill the field',
      name: 'pleaseCompleteField',
      desc: '',
      args: [],
    );
  }

  /// `Internal server error`
  String get internalServerError {
    return Intl.message(
      'Internal server error',
      name: 'internalServerError',
      desc: '',
      args: [],
    );
  }

  /// `This Error happened`
  String get thisErrorHappened {
    return Intl.message(
      'This Error happened',
      name: 'thisErrorHappened',
      desc: '',
      args: [],
    );
  }

  /// `Please login to continue`
  String get pleaseLoginToContinue {
    return Intl.message(
      'Please login to continue',
      name: 'pleaseLoginToContinue',
      desc: '',
      args: [],
    );
  }

  /// `You can't edit, captain in the store.`
  String get notAllowedCaptainInStore {
    return Intl.message(
      'You can\'t edit, captain in the store.',
      name: 'notAllowedCaptainInStore',
      desc: '',
      args: [],
    );
  }

  /// `Wrong username or password`
  String get invalidCredentials {
    return Intl.message(
      'Wrong username or password',
      name: 'invalidCredentials',
      desc: '',
      args: [],
    );
  }

  /// `Error with Decoding Data`
  String get dataDecodeError {
    return Intl.message(
      'Error with Decoding Data',
      name: 'dataDecodeError',
      desc: '',
      args: [],
    );
  }

  /// `Add Products`
  String get addProducts {
    return Intl.message(
      'Add Products',
      name: 'addProducts',
      desc: '',
      args: [],
    );
  }

  /// `There is no profile data available`
  String get profileDataEmpty {
    return Intl.message(
      'There is no profile data available',
      name: 'profileDataEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Profile Data Fetched Successfully`
  String get profileFetchedSuccessfully {
    return Intl.message(
      'Profile Data Fetched Successfully',
      name: 'profileFetchedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Upload profile was a success`
  String get uploadProfileSuccess {
    return Intl.message(
      'Upload profile was a success',
      name: 'uploadProfileSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Upload image was a success`
  String get uploadImageSuccess {
    return Intl.message(
      'Upload image was a success',
      name: 'uploadImageSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `error download image`
  String get errorDownloadingImage {
    return Intl.message(
      'error download image',
      name: 'errorDownloadingImage',
      desc: '',
      args: [],
    );
  }

  /// `Launch our app`
  String get launch {
    return Intl.message(
      'Launch our app',
      name: 'launch',
      desc: '',
      args: [],
    );
  }

  /// `If you have somthing to deliver far from you dont wory just open our app`
  String get lanchDescribtion {
    return Intl.message(
      'If you have somthing to deliver far from you dont wory just open our app',
      name: 'lanchDescribtion',
      desc: '',
      args: [],
    );
  }

  /// `You need to book a car to deliver your package to your destenation`
  String get bookACarDescribtion {
    return Intl.message(
      'You need to book a car to deliver your package to your destenation',
      name: 'bookACarDescribtion',
      desc: '',
      args: [],
    );
  }

  /// `We will deliver your package for you in the fastest way and the best`
  String get weDeliverDescribtion {
    return Intl.message(
      'We will deliver your package for you in the fastest way and the best',
      name: 'weDeliverDescribtion',
      desc: '',
      args: [],
    );
  }

  /// `If you have the ability to deliver packages for us you are welcome`
  String get lanchDescribtionCaptain {
    return Intl.message(
      'If you have the ability to deliver packages for us you are welcome',
      name: 'lanchDescribtionCaptain',
      desc: '',
      args: [],
    );
  }

  /// `You can check the app for packages near you to deliver`
  String get checkOrdersDescribtion {
    return Intl.message(
      'You can check the app for packages near you to deliver',
      name: 'checkOrdersDescribtion',
      desc: '',
      args: [],
    );
  }

  /// `You can accept your mission to deliver package`
  String get acceptOrderDescribtion {
    return Intl.message(
      'You can accept your mission to deliver package',
      name: 'acceptOrderDescribtion',
      desc: '',
      args: [],
    );
  }

  /// `After accepting your mission you will deliver package to the right destination`
  String get deliverDescribtion {
    return Intl.message(
      'After accepting your mission you will deliver package to the right destination',
      name: 'deliverDescribtion',
      desc: '',
      args: [],
    );
  }

  /// `After you doing your job your effort will be rewarded by earning money`
  String get earnCashDescribtion {
    return Intl.message(
      'After you doing your job your effort will be rewarded by earning money',
      name: 'earnCashDescribtion',
      desc: '',
      args: [],
    );
  }

  /// `Are you want to update this order status , please confirm`
  String get confirmUpdateOrderStatus {
    return Intl.message(
      'Are you want to update this order status , please confirm',
      name: 'confirmUpdateOrderStatus',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `The order has been receved by another captain`
  String get orderReceved {
    return Intl.message(
      'The order has been receved by another captain',
      name: 'orderReceved',
      desc: '',
      args: [],
    );
  }

  /// `All City`
  String get allcity {
    return Intl.message(
      'All City',
      name: 'allcity',
      desc: '',
      args: [],
    );
  }

  /// `Empty Stuff`
  String get emptyStaff {
    return Intl.message(
      'Empty Stuff',
      name: 'emptyStaff',
      desc: '',
      args: [],
    );
  }

  /// `You have reached `
  String get youReached {
    return Intl.message(
      'You have reached ',
      name: 'youReached',
      desc: '',
      args: [],
    );
  }

  /// `percent of your orders limit`
  String get orderAverage {
    return Intl.message(
      'percent of your orders limit',
      name: 'orderAverage',
      desc: '',
      args: [],
    );
  }

  /// `Are your sure about renewing your subscription`
  String get confirmRenewSub {
    return Intl.message(
      'Are your sure about renewing your subscription',
      name: 'confirmRenewSub',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Mechanich Licence`
  String get mechanichLicence {
    return Intl.message(
      'Mechanich Licence',
      name: 'mechanichLicence',
      desc: '',
      args: [],
    );
  }

  /// `Identity`
  String get identity {
    return Intl.message(
      'Identity',
      name: 'identity',
      desc: '',
      args: [],
    );
  }

  /// `Bonus`
  String get bonus {
    return Intl.message(
      'Bonus',
      name: 'bonus',
      desc: '',
      args: [],
    );
  }

  /// `Fuel Bonus`
  String get kiloBonus {
    return Intl.message(
      'Fuel Bonus',
      name: 'kiloBonus',
      desc: '',
      args: [],
    );
  }

  /// `Sum Balance`
  String get sumBalance {
    return Intl.message(
      'Sum Balance',
      name: 'sumBalance',
      desc: '',
      args: [],
    );
  }

  /// `Total Salary`
  String get totalBonus {
    return Intl.message(
      'Total Salary',
      name: 'totalBonus',
      desc: '',
      args: [],
    );
  }

  /// `General Profite`
  String get netProfite {
    return Intl.message(
      'General Profite',
      name: 'netProfite',
      desc: '',
      args: [],
    );
  }

  /// `Balance Details`
  String get balanceDetails {
    return Intl.message(
      'Balance Details',
      name: 'balanceDetails',
      desc: '',
      args: [],
    );
  }

  /// `Sending record has been failed`
  String get sendToRecordFaild {
    return Intl.message(
      'Sending record has been failed',
      name: 'sendToRecordFaild',
      desc: '',
      args: [],
    );
  }

  /// `The report send with a success`
  String get sendToRecordSuccess {
    return Intl.message(
      'The report send with a success',
      name: 'sendToRecordSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Confirm with yes and no if captain reach you`
  String get confirmingCaptainLocation {
    return Intl.message(
      'Confirm with yes and no if captain reach you',
      name: 'confirmingCaptainLocation',
      desc: '',
      args: [],
    );
  }

  /// `Redo`
  String get redo {
    return Intl.message(
      'Redo',
      name: 'redo',
      desc: '',
      args: [],
    );
  }

  /// `Sending report within 15 seconds`
  String get sendingReport {
    return Intl.message(
      'Sending report within 15 seconds',
      name: 'sendingReport',
      desc: '',
      args: [],
    );
  }

  /// `Company contact info`
  String get social {
    return Intl.message(
      'Company contact info',
      name: 'social',
      desc: '',
      args: [],
    );
  }

  /// `You have consumed 35%`
  String get orderAverage35 {
    return Intl.message(
      'You have consumed 35%',
      name: 'orderAverage35',
      desc: '',
      args: [],
    );
  }

  /// `You have consumed 40%`
  String get orderAverage40 {
    return Intl.message(
      'You have consumed 40%',
      name: 'orderAverage40',
      desc: '',
      args: [],
    );
  }

  /// `You have consumed 75%`
  String get orderAverage75 {
    return Intl.message(
      'You have consumed 75%',
      name: 'orderAverage75',
      desc: '',
      args: [],
    );
  }

  /// `You have consumed 80%`
  String get orderAverage80 {
    return Intl.message(
      'You have consumed 80%',
      name: 'orderAverage80',
      desc: '',
      args: [],
    );
  }

  /// `Dear`
  String get dear {
    return Intl.message(
      'Dear',
      name: 'dear',
      desc: '',
      args: [],
    );
  }

  /// `Whatsapp`
  String get whatsapp {
    return Intl.message(
      'Whatsapp',
      name: 'whatsapp',
      desc: '',
      args: [],
    );
  }

  /// `Kilometers limit`
  String get kilometerLimt {
    return Intl.message(
      'Kilometers limit',
      name: 'kilometerLimt',
      desc: '',
      args: [],
    );
  }

  /// `bonus on max limit`
  String get kilometerLimtMax {
    return Intl.message(
      'bonus on max limit',
      name: 'kilometerLimtMax',
      desc: '',
      args: [],
    );
  }

  /// `bonus on min limit`
  String get kilometerLimtMin {
    return Intl.message(
      'bonus on min limit',
      name: 'kilometerLimtMin',
      desc: '',
      args: [],
    );
  }

  /// `You have new notification`
  String get newMessageCommingOut {
    return Intl.message(
      'You have new notification',
      name: 'newMessageCommingOut',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get captainStateActive {
    return Intl.message(
      'Active',
      name: 'captainStateActive',
      desc: '',
      args: [],
    );
  }

  /// `UnActive`
  String get captainStateInactive {
    return Intl.message(
      'UnActive',
      name: 'captainStateInactive',
      desc: '',
      args: [],
    );
  }

  /// `choose your state`
  String get chooseYourState {
    return Intl.message(
      'choose your state',
      name: 'chooseYourState',
      desc: '',
      args: [],
    );
  }

  /// `update profile`
  String get updateProfile {
    return Intl.message(
      'update profile',
      name: 'updateProfile',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure about dispose your changes`
  String get areYouSureToDisposeThis {
    return Intl.message(
      'Are you sure about dispose your changes',
      name: 'areYouSureToDisposeThis',
      desc: '',
      args: [],
    );
  }

  /// `Distance`
  String get distance {
    return Intl.message(
      'Distance',
      name: 'distance',
      desc: '',
      args: [],
    );
  }

  /// `km`
  String get km {
    return Intl.message(
      'km',
      name: 'km',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get cancelled {
    return Intl.message(
      'Cancelled',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Store location`
  String get storeLocation {
    return Intl.message(
      'Store location',
      name: 'storeLocation',
      desc: '',
      args: [],
    );
  }

  /// `chat with client`
  String get chatWithClient {
    return Intl.message(
      'chat with client',
      name: 'chatWithClient',
      desc: '',
      args: [],
    );
  }

  /// `The order has been cancelled by the client`
  String get cancelledHint {
    return Intl.message(
      'The order has been cancelled by the client',
      name: 'cancelledHint',
      desc: '',
      args: [],
    );
  }

  /// `Upload Bill`
  String get makeBill {
    return Intl.message(
      'Upload Bill',
      name: 'makeBill',
      desc: '',
      args: [],
    );
  }

  /// `Please provide the bill of the order`
  String get pleaseProvideStoreBill {
    return Intl.message(
      'Please provide the bill of the order',
      name: 'pleaseProvideStoreBill',
      desc: '',
      args: [],
    );
  }

  /// `Receipt Location`
  String get receiptPoint {
    return Intl.message(
      'Receipt Location',
      name: 'receiptPoint',
      desc: '',
      args: [],
    );
  }

  /// `Destination Location`
  String get destinationPoint {
    return Intl.message(
      'Destination Location',
      name: 'destinationPoint',
      desc: '',
      args: [],
    );
  }

  /// `Expected Order Bill`
  String get expectedOrderBill {
    return Intl.message(
      'Expected Order Bill',
      name: 'expectedOrderBill',
      desc: '',
      args: [],
    );
  }

  /// `Receipt`
  String get receipt {
    return Intl.message(
      'Receipt',
      name: 'receipt',
      desc: '',
      args: [],
    );
  }

  /// `Saving invoice process has been failed`
  String get saveInvoiceFailed {
    return Intl.message(
      'Saving invoice process has been failed',
      name: 'saveInvoiceFailed',
      desc: '',
      args: [],
    );
  }

  /// `Saving invoice was a success`
  String get saveInvoiceSuccess {
    return Intl.message(
      'Saving invoice was a success',
      name: 'saveInvoiceSuccess',
      desc: '',
      args: [],
    );
  }

  /// `The total cost without delivery cost`
  String get totalBillCostHint {
    return Intl.message(
      'The total cost without delivery cost',
      name: 'totalBillCostHint',
      desc: '',
      args: [],
    );
  }

  /// `Total cost of store invoice`
  String get totalBillCost {
    return Intl.message(
      'Total cost of store invoice',
      name: 'totalBillCost',
      desc: '',
      args: [],
    );
  }

  /// `Please wait we are invoice saving ...`
  String get savingInvoice {
    return Intl.message(
      'Please wait we are invoice saving ...',
      name: 'savingInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Be the first one to send message`
  String get firstSendMessage {
    return Intl.message(
      'Be the first one to send message',
      name: 'firstSendMessage',
      desc: '',
      args: [],
    );
  }

  /// `New Messages`
  String get lastSeenMessage {
    return Intl.message(
      'New Messages',
      name: 'lastSeenMessage',
      desc: '',
      args: [],
    );
  }

  /// `Actual`
  String get actual {
    return Intl.message(
      'Actual',
      name: 'actual',
      desc: '',
      args: [],
    );
  }

  /// `Last Month`
  String get lastMonth {
    return Intl.message(
      'Last Month',
      name: 'lastMonth',
      desc: '',
      args: [],
    );
  }

  /// `Here we are showing captain balance status`
  String get myBalanceHint {
    return Intl.message(
      'Here we are showing captain balance status',
      name: 'myBalanceHint',
      desc: '',
      args: [],
    );
  }

  /// `Total Payments To Company`
  String get sumPaymentsToCompany {
    return Intl.message(
      'Total Payments To Company',
      name: 'sumPaymentsToCompany',
      desc: '',
      args: [],
    );
  }

  /// `Total Payments From Company`
  String get sumPaymentsFromCompany {
    return Intl.message(
      'Total Payments From Company',
      name: 'sumPaymentsFromCompany',
      desc: '',
      args: [],
    );
  }

  /// `Total Payments To Captain`
  String get sumPaymentsToCaptain {
    return Intl.message(
      'Total Payments To Captain',
      name: 'sumPaymentsToCaptain',
      desc: '',
      args: [],
    );
  }

  /// `Total Payments From Captain`
  String get sumPaymentsFromCaptain {
    return Intl.message(
      'Total Payments From Captain',
      name: 'sumPaymentsFromCaptain',
      desc: '',
      args: [],
    );
  }

  /// `Count Orders Delivered`
  String get countOrdersDelivered {
    return Intl.message(
      'Count Orders Delivered',
      name: 'countOrdersDelivered',
      desc: '',
      args: [],
    );
  }

  /// `My Actual Balance`
  String get amountYouOwn {
    return Intl.message(
      'My Actual Balance',
      name: 'amountYouOwn',
      desc: '',
      args: [],
    );
  }

  /// `Remaining Amount For Company`
  String get remainingAmountForCompany {
    return Intl.message(
      'Remaining Amount For Company',
      name: 'remainingAmountForCompany',
      desc: '',
      args: [],
    );
  }

  /// `Bounce`
  String get bounce {
    return Intl.message(
      'Bounce',
      name: 'bounce',
      desc: '',
      args: [],
    );
  }

  /// `Kilometer Bonus`
  String get kilometerBonus {
    return Intl.message(
      'Kilometer Bonus',
      name: 'kilometerBonus',
      desc: '',
      args: [],
    );
  }

  /// `Profit`
  String get netProfit {
    return Intl.message(
      'Profit',
      name: 'netProfit',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `There is no permission to handle this feature`
  String get thereIsNoPermission {
    return Intl.message(
      'There is no permission to handle this feature',
      name: 'thereIsNoPermission',
      desc: '',
      args: [],
    );
  }

  /// `Completion Time`
  String get completeTime {
    return Intl.message(
      'Completion Time',
      name: 'completeTime',
      desc: '',
      args: [],
    );
  }

  /// `day`
  String get day {
    return Intl.message(
      'day',
      name: 'day',
      desc: '',
      args: [],
    );
  }

  /// `days`
  String get days {
    return Intl.message(
      'days',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `second`
  String get second {
    return Intl.message(
      'second',
      name: 'second',
      desc: '',
      args: [],
    );
  }

  /// `seconds`
  String get seconds {
    return Intl.message(
      'seconds',
      name: 'seconds',
      desc: '',
      args: [],
    );
  }

  /// `hour`
  String get hour {
    return Intl.message(
      'hour',
      name: 'hour',
      desc: '',
      args: [],
    );
  }

  /// `hours`
  String get hours {
    return Intl.message(
      'hours',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `minutes`
  String get minutes {
    return Intl.message(
      'minutes',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `minute`
  String get minute {
    return Intl.message(
      'minute',
      name: 'minute',
      desc: '',
      args: [],
    );
  }

  /// `This account already exist`
  String get accountAlreadyExist {
    return Intl.message(
      'This account already exist',
      name: 'accountAlreadyExist',
      desc: '',
      args: [],
    );
  }

  /// `Stores Categories`
  String get storeCategories {
    return Intl.message(
      'Stores Categories',
      name: 'storeCategories',
      desc: '',
      args: [],
    );
  }

  /// `Add Category`
  String get addNewCategory {
    return Intl.message(
      'Add Category',
      name: 'addNewCategory',
      desc: '',
      args: [],
    );
  }

  /// `CategoryName`
  String get categoryName {
    return Intl.message(
      'CategoryName',
      name: 'categoryName',
      desc: '',
      args: [],
    );
  }

  /// `Category created successfully`
  String get categoryCreatedSuccessfully {
    return Intl.message(
      'Category created successfully',
      name: 'categoryCreatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Stores List`
  String get storesList {
    return Intl.message(
      'Stores List',
      name: 'storesList',
      desc: '',
      args: [],
    );
  }

  /// `Add Stores`
  String get addStore {
    return Intl.message(
      'Add Stores',
      name: 'addStore',
      desc: '',
      args: [],
    );
  }

  /// `Product Category`
  String get productCategory {
    return Intl.message(
      'Product Category',
      name: 'productCategory',
      desc: '',
      args: [],
    );
  }

  /// `Product Categories`
  String get productCategories {
    return Intl.message(
      'Product Categories',
      name: 'productCategories',
      desc: '',
      args: [],
    );
  }

  /// `Choose Category`
  String get chooseCategory {
    return Intl.message(
      'Choose Category',
      name: 'chooseCategory',
      desc: '',
      args: [],
    );
  }

  /// `Store Info`
  String get storeInfo {
    return Intl.message(
      'Store Info',
      name: 'storeInfo',
      desc: '',
      args: [],
    );
  }

  /// `Don't Serve`
  String get notServe {
    return Intl.message(
      'Don\'t Serve',
      name: 'notServe',
      desc: '',
      args: [],
    );
  }

  /// `Serve`
  String get serve {
    return Intl.message(
      'Serve',
      name: 'serve',
      desc: '',
      args: [],
    );
  }

  /// `Store Management`
  String get storeManagment {
    return Intl.message(
      'Store Management',
      name: 'storeManagment',
      desc: '',
      args: [],
    );
  }

  /// `Product Name`
  String get productName {
    return Intl.message(
      'Product Name',
      name: 'productName',
      desc: '',
      args: [],
    );
  }

  /// `Product Price`
  String get productPrice {
    return Intl.message(
      'Product Price',
      name: 'productPrice',
      desc: '',
      args: [],
    );
  }

  /// `In Active Captains`
  String get inActiveCaptains {
    return Intl.message(
      'In Active Captains',
      name: 'inActiveCaptains',
      desc: '',
      args: [],
    );
  }

  /// `Salary`
  String get salary {
    return Intl.message(
      'Salary',
      name: 'salary',
      desc: '',
      args: [],
    );
  }

  /// `Account Status`
  String get captainStatus {
    return Intl.message(
      'Account Status',
      name: 'captainStatus',
      desc: '',
      args: [],
    );
  }

  /// `Online Status`
  String get status {
    return Intl.message(
      'Online Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Captain Activated Successfully`
  String get captainActivated {
    return Intl.message(
      'Captain Activated Successfully',
      name: 'captainActivated',
      desc: '',
      args: [],
    );
  }

  /// `Store Category Updated Successfully`
  String get updateStoreCategory {
    return Intl.message(
      'Store Category Updated Successfully',
      name: 'updateStoreCategory',
      desc: '',
      args: [],
    );
  }

  /// `update`
  String get update {
    return Intl.message(
      'update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Update Store`
  String get updateStore {
    return Intl.message(
      'Update Store',
      name: 'updateStore',
      desc: '',
      args: [],
    );
  }

  /// `Update Product Category`
  String get updateProductCategory {
    return Intl.message(
      'Update Product Category',
      name: 'updateProductCategory',
      desc: '',
      args: [],
    );
  }

  /// `Update Product`
  String get updateProduct {
    return Intl.message(
      'Update Product',
      name: 'updateProduct',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Phone 2`
  String get phone2 {
    return Intl.message(
      'Phone 2',
      name: 'phone2',
      desc: '',
      args: [],
    );
  }

  /// `Fax`
  String get fax {
    return Intl.message(
      'Fax',
      name: 'fax',
      desc: '',
      args: [],
    );
  }

  /// `STC`
  String get stc {
    return Intl.message(
      'STC',
      name: 'stc',
      desc: '',
      args: [],
    );
  }

  /// `Company Info`
  String get companyInfo {
    return Intl.message(
      'Company Info',
      name: 'companyInfo',
      desc: '',
      args: [],
    );
  }

  /// `Captains`
  String get captains {
    return Intl.message(
      'Captains',
      name: 'captains',
      desc: '',
      args: [],
    );
  }

  /// `Stores`
  String get stores {
    return Intl.message(
      'Stores',
      name: 'stores',
      desc: '',
      args: [],
    );
  }

  /// `Completed Orders`
  String get countCompletedOrders {
    return Intl.message(
      'Completed Orders',
      name: 'countCompletedOrders',
      desc: '',
      args: [],
    );
  }

  /// `Ongoing Orders`
  String get countOngoingOrders {
    return Intl.message(
      'Ongoing Orders',
      name: 'countOngoingOrders',
      desc: '',
      args: [],
    );
  }

  /// `Clients Count`
  String get countClients {
    return Intl.message(
      'Clients Count',
      name: 'countClients',
      desc: '',
      args: [],
    );
  }

  /// `Captains Count`
  String get countCaptains {
    return Intl.message(
      'Captains Count',
      name: 'countCaptains',
      desc: '',
      args: [],
    );
  }

  /// `Products Count`
  String get countProducts {
    return Intl.message(
      'Products Count',
      name: 'countProducts',
      desc: '',
      args: [],
    );
  }

  /// `Stores Count`
  String get countStores {
    return Intl.message(
      'Stores Count',
      name: 'countStores',
      desc: '',
      args: [],
    );
  }

  /// `Captains Balance`
  String get captainPayments {
    return Intl.message(
      'Captains Balance',
      name: 'captainPayments',
      desc: '',
      args: [],
    );
  }

  /// `Invoice Image`
  String get invoiceImage {
    return Intl.message(
      'Invoice Image',
      name: 'invoiceImage',
      desc: '',
      args: [],
    );
  }

  /// `Invoice Cost`
  String get invoiceCost {
    return Intl.message(
      'Invoice Cost',
      name: 'invoiceCost',
      desc: '',
      args: [],
    );
  }

  /// `Pending Orders`
  String get orderPending {
    return Intl.message(
      'Pending Orders',
      name: 'orderPending',
      desc: '',
      args: [],
    );
  }

  /// `Company Finance`
  String get companyFinance {
    return Intl.message(
      'Company Finance',
      name: 'companyFinance',
      desc: '',
      args: [],
    );
  }

  /// `Updated Successfully`
  String get financeProfileUpdateSuccessfully {
    return Intl.message(
      'Updated Successfully',
      name: 'financeProfileUpdateSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get company {
    return Intl.message(
      'Company',
      name: 'company',
      desc: '',
      args: [],
    );
  }

  /// `Twaslna Dashboard`
  String get twaslnaDashboard {
    return Intl.message(
      'Twaslna Dashboard',
      name: 'twaslnaDashboard',
      desc: '',
      args: [],
    );
  }

  /// `OnGoing Orders`
  String get ongoingOrders {
    return Intl.message(
      'OnGoing Orders',
      name: 'ongoingOrders',
      desc: '',
      args: [],
    );
  }

  /// `Category Image`
  String get categoryImage {
    return Intl.message(
      'Category Image',
      name: 'categoryImage',
      desc: '',
      args: [],
    );
  }

  /// `Store Created Successfully`
  String get storeCreatedSuccessfully {
    return Intl.message(
      'Store Created Successfully',
      name: 'storeCreatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Store Updated Successfully`
  String get storeUpdatedSuccessfully {
    return Intl.message(
      'Store Updated Successfully',
      name: 'storeUpdatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Store Image`
  String get storeImage {
    return Intl.message(
      'Store Image',
      name: 'storeImage',
      desc: '',
      args: [],
    );
  }

  /// `Store Service`
  String get storeService {
    return Intl.message(
      'Store Service',
      name: 'storeService',
      desc: '',
      args: [],
    );
  }

  /// `Make Payments`
  String get paymentsManagement {
    return Intl.message(
      'Make Payments',
      name: 'paymentsManagement',
      desc: '',
      args: [],
    );
  }

  /// `Payment From Captain`
  String get paymentFromCaptain {
    return Intl.message(
      'Payment From Captain',
      name: 'paymentFromCaptain',
      desc: '',
      args: [],
    );
  }

  /// `Payment To Captain`
  String get paymentToCaptain {
    return Intl.message(
      'Payment To Captain',
      name: 'paymentToCaptain',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Payment amount`
  String get paymentAmount {
    return Intl.message(
      'Payment amount',
      name: 'paymentAmount',
      desc: '',
      args: [],
    );
  }

  /// `Captain Info`
  String get captainInfo {
    return Intl.message(
      'Captain Info',
      name: 'captainInfo',
      desc: '',
      args: [],
    );
  }

  /// `Captain Balance Info`
  String get captainInfoBalance {
    return Intl.message(
      'Captain Balance Info',
      name: 'captainInfoBalance',
      desc: '',
      args: [],
    );
  }

  /// `Payments From Captain`
  String get paymentsFromCaptain {
    return Intl.message(
      'Payments From Captain',
      name: 'paymentsFromCaptain',
      desc: '',
      args: [],
    );
  }

  /// `Payments To Captain`
  String get paymentsToCaptain {
    return Intl.message(
      'Payments To Captain',
      name: 'paymentsToCaptain',
      desc: '',
      args: [],
    );
  }

  /// `Payment has been registered successfully`
  String get paymentSuccessfully {
    return Intl.message(
      'Payment has been registered successfully',
      name: 'paymentSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Store Shift`
  String get workTime {
    return Intl.message(
      'Store Shift',
      name: 'workTime',
      desc: '',
      args: [],
    );
  }

  /// `Opening Time`
  String get openingTime {
    return Intl.message(
      'Opening Time',
      name: 'openingTime',
      desc: '',
      args: [],
    );
  }

  /// `Closing Time`
  String get closingTime {
    return Intl.message(
      'Closing Time',
      name: 'closingTime',
      desc: '',
      args: [],
    );
  }

  /// `Searching for categories`
  String get searchingForCategories {
    return Intl.message(
      'Searching for categories',
      name: 'searchingForCategories',
      desc: '',
      args: [],
    );
  }

  /// `searching for store`
  String get searchingForStores {
    return Intl.message(
      'searching for store',
      name: 'searchingForStores',
      desc: '',
      args: [],
    );
  }

  /// `Financial Dues`
  String get captainMoney {
    return Intl.message(
      'Financial Dues',
      name: 'captainMoney',
      desc: '',
      args: [],
    );
  }

  /// `Orders Account`
  String get ordersAccount {
    return Intl.message(
      'Orders Account',
      name: 'ordersAccount',
      desc: '',
      args: [],
    );
  }

  /// `Company profile created successfully`
  String get companyProfileCreatedSuccessfully {
    return Intl.message(
      'Company profile created successfully',
      name: 'companyProfileCreatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Company profile updated successfully`
  String get companyProfileUpdatedSuccessfully {
    return Intl.message(
      'Company profile updated successfully',
      name: 'companyProfileUpdatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Logs`
  String get Logs {
    return Intl.message(
      'Logs',
      name: 'Logs',
      desc: '',
      args: [],
    );
  }

  /// `Captain Logs`
  String get captainLogs {
    return Intl.message(
      'Captain Logs',
      name: 'captainLogs',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Search for store`
  String get searchForStore {
    return Intl.message(
      'Search for store',
      name: 'searchForStore',
      desc: '',
      args: [],
    );
  }

  /// `Store Logs`
  String get storeLogs {
    return Intl.message(
      'Store Logs',
      name: 'storeLogs',
      desc: '',
      args: [],
    );
  }

  /// `Today Order`
  String get countTodayOrder {
    return Intl.message(
      'Today Order',
      name: 'countTodayOrder',
      desc: '',
      args: [],
    );
  }

  /// `First Date`
  String get firstDate {
    return Intl.message(
      'First Date',
      name: 'firstDate',
      desc: '',
      args: [],
    );
  }

  /// `Last Date`
  String get lastDate {
    return Intl.message(
      'Last Date',
      name: 'lastDate',
      desc: '',
      args: [],
    );
  }

  /// `Captain Updated Successfully`
  String get captainUpdatedSuccessfully {
    return Intl.message(
      'Captain Updated Successfully',
      name: 'captainUpdatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Reports`
  String get reports {
    return Intl.message(
      'Reports',
      name: 'reports',
      desc: '',
      args: [],
    );
  }

  /// `Products Report`
  String get productsReport {
    return Intl.message(
      'Products Report',
      name: 'productsReport',
      desc: '',
      args: [],
    );
  }

  /// `Clients Report`
  String get clientsReport {
    return Intl.message(
      'Clients Report',
      name: 'clientsReport',
      desc: '',
      args: [],
    );
  }

  /// `Stores Report`
  String get storesReports {
    return Intl.message(
      'Stores Report',
      name: 'storesReports',
      desc: '',
      args: [],
    );
  }

  /// `Captain Report`
  String get captainsReports {
    return Intl.message(
      'Captain Report',
      name: 'captainsReports',
      desc: '',
      args: [],
    );
  }

  /// `Score`
  String get score {
    return Intl.message(
      'Score',
      name: 'score',
      desc: '',
      args: [],
    );
  }

  /// `deliver an order`
  String get captainDelivered {
    return Intl.message(
      'deliver an order',
      name: 'captainDelivered',
      desc: '',
      args: [],
    );
  }

  /// `Captain`
  String get captainDid {
    return Intl.message(
      'Captain',
      name: 'captainDid',
      desc: '',
      args: [],
    );
  }

  /// `received order`
  String get clientOrdered {
    return Intl.message(
      'received order',
      name: 'clientOrdered',
      desc: '',
      args: [],
    );
  }

  /// `Client`
  String get clientDid {
    return Intl.message(
      'Client',
      name: 'clientDid',
      desc: '',
      args: [],
    );
  }

  /// `Order requested from store`
  String get storeDid {
    return Intl.message(
      'Order requested from store',
      name: 'storeDid',
      desc: '',
      args: [],
    );
  }

  /// `Request product`
  String get productOrdered {
    return Intl.message(
      'Request product',
      name: 'productOrdered',
      desc: '',
      args: [],
    );
  }

  /// `Specific`
  String get specific {
    return Intl.message(
      'Specific',
      name: 'specific',
      desc: '',
      args: [],
    );
  }

  /// `Clients`
  String get clients {
    return Intl.message(
      'Clients',
      name: 'clients',
      desc: '',
      args: [],
    );
  }

  /// `Store Availability`
  String get storeAvailable {
    return Intl.message(
      'Store Availability',
      name: 'storeAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Store Account In Active , Please wait the administration to activate your account`
  String get storesInActive {
    return Intl.message(
      'Store Account In Active , Please wait the administration to activate your account',
      name: 'storesInActive',
      desc: '',
      args: [],
    );
  }

  /// `discount`
  String get discount {
    return Intl.message(
      'discount',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `Product Created Successfully`
  String get productCreatedSuccessfully {
    return Intl.message(
      'Product Created Successfully',
      name: 'productCreatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Select language`
  String get selectLanguage {
    return Intl.message(
      'Select language',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Last product`
  String get lastProduct {
    return Intl.message(
      'Last product',
      name: 'lastProduct',
      desc: '',
      args: [],
    );
  }

  /// `Another stores and products`
  String get anotherStore {
    return Intl.message(
      'Another stores and products',
      name: 'anotherStore',
      desc: '',
      args: [],
    );
  }

  /// `Product Quantity`
  String get productQuantity {
    return Intl.message(
      'Product Quantity',
      name: 'productQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Rating`
  String get rating {
    return Intl.message(
      'Rating',
      name: 'rating',
      desc: '',
      args: [],
    );
  }

  /// `price`
  String get price {
    return Intl.message(
      'price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Store balance`
  String get storeBalance {
    return Intl.message(
      'Store balance',
      name: 'storeBalance',
      desc: '',
      args: [],
    );
  }

  /// `Payments: `
  String get payments {
    return Intl.message(
      'Payments: ',
      name: 'payments',
      desc: '',
      args: [],
    );
  }

  /// `At: `
  String get at {
    return Intl.message(
      'At: ',
      name: 'at',
      desc: '',
      args: [],
    );
  }

  /// `تمهيد/ حيث أن الطرف الأول متخصص في مجال التسويق الالكتروني على شبكة الانترنت ومرخص له بمزاولة التسويق الالكتروني للسلع والمنتجات والخدمات ويمتلك القدرة البشرية والامكانيات بشقيها المالي والتقني المتمثل في الأدوات والوسائل التسويقية من خلال تطبيق مندوب مشتريات  الالكتروني،  وحيث أن الطرف الثاني أبدى استعداده للقيام بالعمل والتسوق نيابة عن الغير وإتمامه وفقاً للشروط المتفق عليها، وعليه فقد تلاقت ارادة الطرفين وهما بكامل اهليتهما الكاملة للتعاقد واتفقا على ما يلي: \n\nالبند الأول/ يعتبر التمهيد والمرفقات و الملاحق جزء لا يتجزأ من العقد ومكمل ومفسر لها\n\nالبند الثاني/التزامات الأطراف\n١- يلتزم الطرف الاول  بخدمة التسويق والنقل نيابة عن الغير داخل المدن دون تحمل الطرف الثاني  أي تكلفة وتكون تكلفة التسوق والنقل على العميل.\n٢- يلتزم الطرف الاول  بضمان المنتجات عند استلامها والحفاظ عليها وتوصيلها للعميل.\n٣- يلتزم الطرف الأول بتزويد الطرف الثاني الخطة التسويقية بما يخص نشاطه التجاري من خطة التسويق العامة والتي اعدتها ادارة التطبيق لجميع النشاطات الموجودة في التطبيق.\n٤- يلتزم الطرف الاول  بخدمات العملاء   وذلك بالرد على استفسارات العملاء وتلقي الشكاوى والملاحظات ونقلها للطرف الثاني إذا كانت بأحد الخدمات المقدمة في التطبيق، كما يحق للطرف الأول في حال عدم تجاوب الطرف الثاني مع شكاوى العملاء المرسلة له من قبل الطرف الاول  والمتعلقة بأحد الخدمات المتعلقة بالتطبيق التدخل وحل المشكلة مهما كانت ثم الرجوع على الطرف الثاني بأي مبالغ مالية دفعت للعميل في سبيل حل المشكلة.\n٥- يلتزم الطرف الثاني بعملية التأكد من صحة المنتجات والبضائع واستلام فاتورة الكترونية    .\n\nالبند الثالث: النسب المترتبة على العقد :\n١- اتفق الطرفان على ان يحصل الطرف الاول على سعر السلعة بسعر مخفض ويحق للطرف الاول اضافة اتعابه بحسب مايراه مناسبا لتكلفة التسويق والتوصيل   على كل عملية بيع تتم عن طريقة التطبيق   .\n \n\n\nالبند الرابع: مدة العقد :\nاتفق الطرفان ان تكون مدة العقد هي سنة ميلادية تبدا من تاريخ توقيع العقد. \n \n\nالبند الخامس/ فسخ العقد:\nيحق للطرف الأول فسخ هذا العقد في الحالات التالية :\n1-	اذا قصر الطرف الثاني او اخل بأي شرط من شروط العقد.\n2-	اذا أظهر الطرف الثاني بطئاً في تنفيذ هذا العقد بصورة تنبئ بأنه لن يستطيع إتمام العقد  .\n3-	اذا ارتكب الطرف الثاني او من ينوب عنه شيئاً من قبيل الغش.\n\nالبند السادس: تسوية الخلافات :\nيكون هذا العقد خاضع للأنظمة المعمول بها في المملكة العربية السعودية ، و يتم حل أي نزاع ينشأ فيما  يتعلق بتفسير أي بند من بنوده بالطرق الودية ، فاذا تعذر ذلك فيحال النزاع الى جهات الاختصاص بمحافظة جدة.\n\nالبند السابع: القوة القاهرة:\nلا يتحمل طرفي هذا العقد قبل بعضهم البعض أية مسؤولية تترتب على عدم تنفيذ التزاماتهما الواردة بهذا العقد وملاحقه اذا تعرضا (لا قدر الله) لأضرار جسيمة ناتجة عن قوة قاهرة أو كوارث طبيعية أو حوادث طارئة أو الأوامر النظامية التي تؤدي الى تعطيل العمل كلياً أو جزئياً بمدينة جدة بشكل يتعذر الإستمرار في العمل بمعنى أن عدم التنفيذ أو التأخير في الالتزام يرجع لقوة قاهرة او حادث فجائي خارج عن إرادة الطرفين.\n\nالبند الثامن:التعديلات على العقد:\nلا يجوز لأي من الطرفين تعديل أو تغيير أو حذف أي بند من بنود هذا العقد وملاحقه ومستنداته بأي حال من الأحوال إلا إذا نُظم لهذا الغرض ملحقاً موقع عليه من قبل الطرفين أو من ينوب عنهما بموجب وكالة شرعية أو تفويض مصدّق من الجهات المختصة، وأي تعديل أو تغيير في بنود هذا العقد وملاحقه يكون غير ملزم لأي طرف لم يقم بالتوقيع عليه.\n\nالبند التاسع : الإخطارات:\nاختار كل طرف عنوانه الموضح بمقدمة هذا العقد كموطن مختار له وأي إخطارات أو مراسلات تتم عن طريق التطبيق او الايميل  أو تطبيق الواتس اب   يرسلها أي من الطرفين للآخر على عنوانه الموضح أعلاه تكون محققة لمضمونها ومؤكدة لاستلامها .\nالبند العاشر: سرية المعلومات: \n١- اتفق الطرفان على ان تكون جميع انواع البيانات والمعلومات المتداولة بين الطرفين تمتاز بالخصوصية وتم التعامل معها على هذا الأساس.\n٢- لا تستخدم البيانات والمعلومات إلا في الأغراض المنصوص عليها بهذا العقد وليس مصرحاً بتداولها خارج حدود الطرفين الموقعين على هذا العقد .\n`
  String get contract {
    return Intl.message(
      'تمهيد/ حيث أن الطرف الأول متخصص في مجال التسويق الالكتروني على شبكة الانترنت ومرخص له بمزاولة التسويق الالكتروني للسلع والمنتجات والخدمات ويمتلك القدرة البشرية والامكانيات بشقيها المالي والتقني المتمثل في الأدوات والوسائل التسويقية من خلال تطبيق مندوب مشتريات  الالكتروني،  وحيث أن الطرف الثاني أبدى استعداده للقيام بالعمل والتسوق نيابة عن الغير وإتمامه وفقاً للشروط المتفق عليها، وعليه فقد تلاقت ارادة الطرفين وهما بكامل اهليتهما الكاملة للتعاقد واتفقا على ما يلي: \n\nالبند الأول/ يعتبر التمهيد والمرفقات و الملاحق جزء لا يتجزأ من العقد ومكمل ومفسر لها\n\nالبند الثاني/التزامات الأطراف\n١- يلتزم الطرف الاول  بخدمة التسويق والنقل نيابة عن الغير داخل المدن دون تحمل الطرف الثاني  أي تكلفة وتكون تكلفة التسوق والنقل على العميل.\n٢- يلتزم الطرف الاول  بضمان المنتجات عند استلامها والحفاظ عليها وتوصيلها للعميل.\n٣- يلتزم الطرف الأول بتزويد الطرف الثاني الخطة التسويقية بما يخص نشاطه التجاري من خطة التسويق العامة والتي اعدتها ادارة التطبيق لجميع النشاطات الموجودة في التطبيق.\n٤- يلتزم الطرف الاول  بخدمات العملاء   وذلك بالرد على استفسارات العملاء وتلقي الشكاوى والملاحظات ونقلها للطرف الثاني إذا كانت بأحد الخدمات المقدمة في التطبيق، كما يحق للطرف الأول في حال عدم تجاوب الطرف الثاني مع شكاوى العملاء المرسلة له من قبل الطرف الاول  والمتعلقة بأحد الخدمات المتعلقة بالتطبيق التدخل وحل المشكلة مهما كانت ثم الرجوع على الطرف الثاني بأي مبالغ مالية دفعت للعميل في سبيل حل المشكلة.\n٥- يلتزم الطرف الثاني بعملية التأكد من صحة المنتجات والبضائع واستلام فاتورة الكترونية    .\n\nالبند الثالث: النسب المترتبة على العقد :\n١- اتفق الطرفان على ان يحصل الطرف الاول على سعر السلعة بسعر مخفض ويحق للطرف الاول اضافة اتعابه بحسب مايراه مناسبا لتكلفة التسويق والتوصيل   على كل عملية بيع تتم عن طريقة التطبيق   .\n \n\n\nالبند الرابع: مدة العقد :\nاتفق الطرفان ان تكون مدة العقد هي سنة ميلادية تبدا من تاريخ توقيع العقد. \n \n\nالبند الخامس/ فسخ العقد:\nيحق للطرف الأول فسخ هذا العقد في الحالات التالية :\n1-	اذا قصر الطرف الثاني او اخل بأي شرط من شروط العقد.\n2-	اذا أظهر الطرف الثاني بطئاً في تنفيذ هذا العقد بصورة تنبئ بأنه لن يستطيع إتمام العقد  .\n3-	اذا ارتكب الطرف الثاني او من ينوب عنه شيئاً من قبيل الغش.\n\nالبند السادس: تسوية الخلافات :\nيكون هذا العقد خاضع للأنظمة المعمول بها في المملكة العربية السعودية ، و يتم حل أي نزاع ينشأ فيما  يتعلق بتفسير أي بند من بنوده بالطرق الودية ، فاذا تعذر ذلك فيحال النزاع الى جهات الاختصاص بمحافظة جدة.\n\nالبند السابع: القوة القاهرة:\nلا يتحمل طرفي هذا العقد قبل بعضهم البعض أية مسؤولية تترتب على عدم تنفيذ التزاماتهما الواردة بهذا العقد وملاحقه اذا تعرضا (لا قدر الله) لأضرار جسيمة ناتجة عن قوة قاهرة أو كوارث طبيعية أو حوادث طارئة أو الأوامر النظامية التي تؤدي الى تعطيل العمل كلياً أو جزئياً بمدينة جدة بشكل يتعذر الإستمرار في العمل بمعنى أن عدم التنفيذ أو التأخير في الالتزام يرجع لقوة قاهرة او حادث فجائي خارج عن إرادة الطرفين.\n\nالبند الثامن:التعديلات على العقد:\nلا يجوز لأي من الطرفين تعديل أو تغيير أو حذف أي بند من بنود هذا العقد وملاحقه ومستنداته بأي حال من الأحوال إلا إذا نُظم لهذا الغرض ملحقاً موقع عليه من قبل الطرفين أو من ينوب عنهما بموجب وكالة شرعية أو تفويض مصدّق من الجهات المختصة، وأي تعديل أو تغيير في بنود هذا العقد وملاحقه يكون غير ملزم لأي طرف لم يقم بالتوقيع عليه.\n\nالبند التاسع : الإخطارات:\nاختار كل طرف عنوانه الموضح بمقدمة هذا العقد كموطن مختار له وأي إخطارات أو مراسلات تتم عن طريق التطبيق او الايميل  أو تطبيق الواتس اب   يرسلها أي من الطرفين للآخر على عنوانه الموضح أعلاه تكون محققة لمضمونها ومؤكدة لاستلامها .\nالبند العاشر: سرية المعلومات: \n١- اتفق الطرفان على ان تكون جميع انواع البيانات والمعلومات المتداولة بين الطرفين تمتاز بالخصوصية وتم التعامل معها على هذا الأساس.\n٢- لا تستخدم البيانات والمعلومات إلا في الأغراض المنصوص عليها بهذا العقد وليس مصرحاً بتداولها خارج حدود الطرفين الموقعين على هذا العقد .\n',
      name: 'contract',
      desc: '',
      args: [],
    );
  }

  /// `Supply Contract`
  String get supplyContract {
    return Intl.message(
      'Supply Contract',
      name: 'supplyContract',
      desc: '',
      args: [],
    );
  }

  /// `من نحن – مندوب مبيعات\nتطبيق مندوب مشتريات هو وسيط موثوق بين المصانع وتجار الجملة مع تجار التجزئة و أصحاب المنشآات و المؤسسات حيث يقدم تطبيقنا منصة لعرض المنتجات ولقاء الموردين في فضاء رقمي وعملي بالكامل، وقد سعت شركتنا مند تأسيسها على توفير منصة سهلة الاستخدام ليخدم جميع المستخدمين سواء من التجار المبتدئين او الكبار وحتى ملاك المصانع، كما توفر منصتنا تقديم خدمات أخرى من بينها الدفع الالكتروني والتواصل وحتى بناء علاقات احترافية بين التجار.\nويوفر تطبيقنا أيضا خدمة الإعلان والترويج داخل التطبيق لمن يريد ترويج منتجاته والوصول الى الفئة المستهدفة بسهولة وسرعة دون تنافس مع باقي المستخدمين.\nونحن نسعى مند انطلاقتنا على التميز بتقديم تطبيق بأحدث المعايير التكنولوجية والبرمجية لتسهيل عرض المنتجات والتواصل بين البائع والمشتري والأداء الرقمي بوسائل دفع متنوعة لكل المستخدمين حيث يعمل تطبيقنا على حث كلا الطرفين سواء البائع او المشتري على اتباع قواعد وقوانين محددة لاستخدام منصتنا من شأن هذه القواعد ضمان حقوق كلا الطرفين وتسهيل عملية البيع والشراء.\nولم يكن لنا ان نحصد هذا النجاح الا بدعم وثقة عملائنا، ولأن لديهم دائما الرغبة المستمرة في التميز فنسعى دائما لتطوير التطبيق بكل ما هو جديد ومواكب لتلبية طموحات عملائنا.\n \nقيمنا\nايمانا منا بأهمية التحول الرقمي الذي تعرفه المملكة السعودية قمنا بتصميم تطبيق الكتروني يجعل من تقديم خدمات البيع والشراء عملية رقمية بالكامل، وتجربة فريدة ومميزة لكافة المواطنين، حيث سيجد المشتري في تطبيقنا التنوع في العروض والسهولة في اختيارها والبحث عنها، كما سيجد البائع جميع الخصائص التي ستسهل عليه عرض منتجاته عبر فئات تقسم المنتجات حسب نوعها، فقد بذل طاقم تطبيق مندوب مشتريات جهده لجعل التطبيق بأعلى قدر من الأمان وسهولة الاستخدام الممكنة لراحة عملائنا.\n\n  \nاستراتيجيتنا\nيحث تطبيقنا على تقديم وعرض المنتجات بكل شفافية ووضوح مع الأخذ بالاعتبار ذكر كافة التفاصيل عن المنتج المراد بيعه، كما يحت المهتمين بالشراء الجادين فقط على الالتزام الفعال مع أصحاب المصانع وتجار الجملة  بما فيه منفعة لكلا الطرفين.\nومن ضمن اهدافنا ايضا جعل تطبيق مندوب مشتريات عنوانا للتميز والجودة وايضا سهولة الاستخدام لذلك سنعمل على الاشراف الدقيق على كل المنتجات التي يتم طرحها على منصتنا وعلى تقديم تجربة مستخدم جيدة من خلال الاعتماد على  واجهة سهلة الاستخدام User Friendly تتيح لزوارنا التنقل بين ارجاء التطبيق بسهولة، بالإضافة الى ان تطبيقنا Responsive  أي قابل للعرض على كافة الأجهزة سواء الموبايل او التابلت، وما يميز تطبيقنا أيضا هو التواصل المستمر مع المستعملين سواء عبر صفحة اتصل بنا والتي يمكن للجميع استعمالها للوصول الينا او عبر صفحاتنا في مواقع التواصل الاجتماعي مما يجعل موقعنا مواكبا لاهتمامات زوراه الكرام وهو ما يطلق عليه أيضا User Feedback.\n\n\nكيف يمكنني استخدام تطبيق مندوب مبيعات؟\n تفضل بتحميل التطبيق عبر متاجر التطبيقات الرسمية الاب ستور او الجوجل بلاي، تم قم بتسجيل حساب على تطبيقنا في حال كنت مهتم بالبيع او الشراء \n\nتواصل معنا \nتطبيق مندوب مبيعات بالمملكة العربية السعودية\n•	المملكة العربية السعودية , جدة , شارع الأمير سلطان , برج رانيا\n•	mandoobquick@gmail.com\n•	0122330005\n`
  String get aboutUs {
    return Intl.message(
      'من نحن – مندوب مبيعات\nتطبيق مندوب مشتريات هو وسيط موثوق بين المصانع وتجار الجملة مع تجار التجزئة و أصحاب المنشآات و المؤسسات حيث يقدم تطبيقنا منصة لعرض المنتجات ولقاء الموردين في فضاء رقمي وعملي بالكامل، وقد سعت شركتنا مند تأسيسها على توفير منصة سهلة الاستخدام ليخدم جميع المستخدمين سواء من التجار المبتدئين او الكبار وحتى ملاك المصانع، كما توفر منصتنا تقديم خدمات أخرى من بينها الدفع الالكتروني والتواصل وحتى بناء علاقات احترافية بين التجار.\nويوفر تطبيقنا أيضا خدمة الإعلان والترويج داخل التطبيق لمن يريد ترويج منتجاته والوصول الى الفئة المستهدفة بسهولة وسرعة دون تنافس مع باقي المستخدمين.\nونحن نسعى مند انطلاقتنا على التميز بتقديم تطبيق بأحدث المعايير التكنولوجية والبرمجية لتسهيل عرض المنتجات والتواصل بين البائع والمشتري والأداء الرقمي بوسائل دفع متنوعة لكل المستخدمين حيث يعمل تطبيقنا على حث كلا الطرفين سواء البائع او المشتري على اتباع قواعد وقوانين محددة لاستخدام منصتنا من شأن هذه القواعد ضمان حقوق كلا الطرفين وتسهيل عملية البيع والشراء.\nولم يكن لنا ان نحصد هذا النجاح الا بدعم وثقة عملائنا، ولأن لديهم دائما الرغبة المستمرة في التميز فنسعى دائما لتطوير التطبيق بكل ما هو جديد ومواكب لتلبية طموحات عملائنا.\n \nقيمنا\nايمانا منا بأهمية التحول الرقمي الذي تعرفه المملكة السعودية قمنا بتصميم تطبيق الكتروني يجعل من تقديم خدمات البيع والشراء عملية رقمية بالكامل، وتجربة فريدة ومميزة لكافة المواطنين، حيث سيجد المشتري في تطبيقنا التنوع في العروض والسهولة في اختيارها والبحث عنها، كما سيجد البائع جميع الخصائص التي ستسهل عليه عرض منتجاته عبر فئات تقسم المنتجات حسب نوعها، فقد بذل طاقم تطبيق مندوب مشتريات جهده لجعل التطبيق بأعلى قدر من الأمان وسهولة الاستخدام الممكنة لراحة عملائنا.\n\n  \nاستراتيجيتنا\nيحث تطبيقنا على تقديم وعرض المنتجات بكل شفافية ووضوح مع الأخذ بالاعتبار ذكر كافة التفاصيل عن المنتج المراد بيعه، كما يحت المهتمين بالشراء الجادين فقط على الالتزام الفعال مع أصحاب المصانع وتجار الجملة  بما فيه منفعة لكلا الطرفين.\nومن ضمن اهدافنا ايضا جعل تطبيق مندوب مشتريات عنوانا للتميز والجودة وايضا سهولة الاستخدام لذلك سنعمل على الاشراف الدقيق على كل المنتجات التي يتم طرحها على منصتنا وعلى تقديم تجربة مستخدم جيدة من خلال الاعتماد على  واجهة سهلة الاستخدام User Friendly تتيح لزوارنا التنقل بين ارجاء التطبيق بسهولة، بالإضافة الى ان تطبيقنا Responsive  أي قابل للعرض على كافة الأجهزة سواء الموبايل او التابلت، وما يميز تطبيقنا أيضا هو التواصل المستمر مع المستعملين سواء عبر صفحة اتصل بنا والتي يمكن للجميع استعمالها للوصول الينا او عبر صفحاتنا في مواقع التواصل الاجتماعي مما يجعل موقعنا مواكبا لاهتمامات زوراه الكرام وهو ما يطلق عليه أيضا User Feedback.\n\n\nكيف يمكنني استخدام تطبيق مندوب مبيعات؟\n تفضل بتحميل التطبيق عبر متاجر التطبيقات الرسمية الاب ستور او الجوجل بلاي، تم قم بتسجيل حساب على تطبيقنا في حال كنت مهتم بالبيع او الشراء \n\nتواصل معنا \nتطبيق مندوب مبيعات بالمملكة العربية السعودية\n•	المملكة العربية السعودية , جدة , شارع الأمير سلطان , برج رانيا\n•	mandoobquick@gmail.com\n•	0122330005\n',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `شروط الاستخدام \nتتغير شروط استخدام تطبيق مندوب مبيعات باستمرار فـأحرص على مداومة زيارة هذه الصفحة كي تبقى على اطلاع بالتغييرات، بتحميلك واستعمالك لتطبيقنا فانت توافق ضمنيا على الشروط والاحكام الموضحة في هذه الصفحة. \nكافة الشروط والبنود المبينة في هذه الصفحة لا تتنافى مع أي من القوانين الجاري بها العمل أو قوانين انتهاك الخصوصية والملكية الفكرية والملكية المشتركة المعمول بها دوليا. ويمكنكم معرفة المزيد عن هذا عبر مطالعة بنود "سياسة الخصوصية" \nسياسة وشروط الاستخدام هذه تخص حصرا تطبيق مشتريات مبيعات، وكل ما يندرج ضمنها من بنود ساري على تطبيقنا فقط واي بند لا تتضمنه الصفحة فانه لا يلزم وجوبا تطبيقنا بتبنيه او اتباعه، سنشير الى تطبيقنا مندوب مشتريات في باقي البنود باسم (التطبيق، او نحن)، ونحن لا نتحمل مسؤولية اي ضرر عند اساءة استخدام تطبيقنا او استعماله بما لا يتناسب مع البنود المدرجة اسفله.\nالبنود الواجب عليك الالتزام بها: \n \n(1) تقديم: \nمرحبا بكم في تطبيقنا، فيما يلي الشروط والأحكام التي تخص استخدامك ودخولك لتطبيقنا: \nإن دخولك واستخدامك لتطبيقنا هو موافقة منك على القبول ببنود وشروط هذه الاتفاقية والتي تشمل كافة التفاصيل أدناه وهو تأكيد لالتزامك بالاستجابة لمضمون هذه الاتفاقية الخاصة بـتطبيقنا والمشار إليه فيما يلي باسم "نحن" والمشار اليها أيضا بالـ "التطبيق"، في باقي بنود "هذه الصفحة" وتعتبر هذه الاتفاقية سارية المفعول حال تحميلك للتطبيق. \n \n(2) العضوية: \nيتوفر تطبيقنا على نظام عضويات يتيح لك بعد التسجيل فيه الدخول على تطبيقنا والتعرف على تجار البيع بالجملة وكذا إيجاد المصانع والمعامل التي تنتج منتجات وسواء كنت فردا او شركة فيمكنك ربط الاتصال بالتجار المنضوين تحت تطبيقنا يكفي ان تكون مسجلا على التطبيق وتكون قد ادليت بكافة المعلومات المطلوبة منك من قبيل البريد الالكتروني والاسم واي معلومة أخرى قد نراها مناسبة.\n \n(3) مزودو الخدمة: \nيحق لنا أن نوظف شركات وأفراد وحتى خدمات الكترونية من أطراف ثالثة لتسهيل إدارة تطبيقنا ("إدارة العضويات كمثال")، أو تقديم الخدمة نيابة عنا، أو لمساعدتنا في تحليل كيفية استخدام خدمتنا. \nويحق لهذه الأطراف الثالثة الوصول إلى بياناتك الشخصية فقط لأداء هذه المهام نيابة عنا، وهي ملزمة بعدم الكشف عنها أو استخدامها لأي غرض آخر. \n \n(4) التعديل على الشروط والأحكام: \n1. أنت تعلم وموافق على أن يقوم تطبيقنا بأي تعديل على اتفاقية الشروط والأحكام، وبموجبه تتضاعف التزاماتك أو تتضاءل حقوقك وفقاً لأي تعديلات قد تجرى على اتفاقية الشروط والأحكام دون الحاجة الى اعلامك. \n2. أنت توافق على ان تطبيقنا يملك بمطلق صلاحيته ودون تحمله المسؤولية القانونية أن يجري تعديلات أساسية أو فرعية على هذه الاتفاقية دون أن يتطلب ذاك موافقة إضافية من طرفك، وذلك في أي وقت وبأثر فوري، دون إلزام بأخبارك، ويمكنك دائما معرفة التعديلات عبر الرجوع لهذه الصفحة. \n3. أنت توافق على ان تطبيقنا يعتبر تطبيق إلكترونيا تقنيا يتيح للمستخدم إيجاد تجار ومصانع تعرض خدماتها ومنتجاتها حيت يعمل تطبيقنا كوسيط بينك وبينهم.\n4. لا يقدم تطبيقنا خدمة مدفوعة ولكن يحصل التطبيق على نسبة من كل عملية بيع تتم داخل التطبيق وانت مطالب بأداء هذه النسبة عبر الوسائل المتوفرة لذلك.\n5. قد نستعمل اعلانات من أطراف ثالثة. \n \n(5) معلوماتك الشخصية: \n توافق على ان لتطبيقنا الحق في التصرف في معلوماتك ضمن ما هو محدد في بنود شروط الاستخدام وفي بنود سياسة الخصوصية، بشكل دائم وغير قابل للإلغاء، وذلك من خلال التسجيل او استعمال النماذج المخصصة للتواصل، أو عبر أية رسالة إلكترونية أو أي من قنوات الاتصال المتاحة بالتطبيق. وذلك بهدف تشغيل وترويج التطبيق وفق اتفاقية إخلاء المسئولية وبيان الخصوصية. \n \n(6) حقوق الطبع: \n1.كافة المحتويات التي يتضمنها التطبيق، بما في ذلك وليس محصوراً في النصوص، التصاميم الجرافيكية، الشعارات، أيقونات الأزرار، الرموز، المقاطع الصوتية، الأحمال الرقمية، البيانات المجمّعة والبرامج الإلكترونية، هي ملك وحقوقها محفوظة إما لـتطبيقنا أو للجهة المسؤولة عن تصميم تطبيقنا، والمعدين لهذه المحتويات وللمفوضين وهي محمية ضمن حقوق الملكية الفكرية والإبداعية. \n \n(7) سرية المعطيات: \n1.يتخذ تطبيقنا معايير (ملموسة وتنظيمية وتكنولوجية) للحماية من وصول شخص غير مفوض إلى معلومات هويتك الشخصية، وحفظها.\n 2. تطبيقنا ليس له سيطرة على أفعال أي طرف ثالث، مثل صفحات الانترنت الأخرى الموصولة بهذا التطبيق، او الاعلانات أو اي أطراف ثالثة. \n3.أنت تعلم وموافق أن تطبيقنا قد يستخدم معلوماتك التي زودته بها، بهدف تحسين الخدمات المقدمة لك، ولإرسال رسائل تسويقية لك، وان بيان الخصوصية في هذا التطبيق يضبط عمليات الجمع والمعالجة والاستخدام والتحويل لمعلومات هويتك الشخصية. \n \n \n(8) نقض اتفاقية الشروط والأحكام: \nان ادارة تطبيقنا بحسب اتفاقية الشروط والأحكام وبحسب القانون قد يلجأ إلى وقف مؤقت أو دائم للمحتوى وللخدمة التي يقدمها مهما كانت أو الى إلغاء وصولك إلى التطبيق دون الإضرار بحقوقه الأخرى ووسائله المشروعة في استرداد حقوقك في حالة: \n1. إذا انتهكت اتفاقية الشروط والأحكام. \n2. إذا اكتشفنا أن نشاطاتك قد تتسبب لك أو لمستخدمين آخرين ولـتطبيقنا في إشكالات قانونية. \n3. في حالة القرصنة او محاولة القرصنة لتطبيقنا فأننا نحتفظ بكامل الحق في اتخاذ الإجراءات القانونية و/أو اللجوء الى القضاء حسبما تراه ادارة التطبيق مناسباً. \n4. إن قيامك أو قيام آخرين بانتهاك الاتفاقية هذه لا يلزم تطبيقنا بالتنازل عن حقه في اتخاذ الإجراءات المناسبة لمثل هذا الفعل ولغيره من أفعال الانتهاك المشابهة. وتطبيقنا لا يضمن اتخاذه إجراءات ضد كل الانتهاكات لاتفاقية الشروط والأحكام. \n \n \n(9) محتويات غير قانونية: \nممنوع منعا كليا استخدام خصائص التطبيق او محتوياته او صوره او أي شيء يدخل ضمن تطبيقنا في أي نشاط غير قانوني او من اجل الدعاية او الخداع او النصب باسم التطبيق او تشهير بشخص او شركة من خلال أي جزء من التطبيق، ويعتبر ذلك بمثابة انتهاك للشروط والأحكام. \n \n(10) التغذية الرجعية: \nتطبيقنا يشجع جميع الأعضاء على التطبيق لتقديم مساهمات (فيد باك Feedback) من شأنها المساعدة على تطوير تطبيقنا او المحتوى المقدم وذلك عبر مراسلتنا، وسوف نحرص على اخدها بعين الاعتبار كي نطور من التطبيق ومن سهولة استخدامه.\n \n(11) إلغاء الوصول: \nبدون إلحاق الضرر بحقوقه الأخرى ووسائله المشروعة لاسترداد حقوقه، يمكن لـتطبيقنا وقف أو إلغاء وصولك لعضويتك في أي وقت وبدون إنذار ولأي سبب، ودون تحديد، ويمكنه أيضا إلغاء اتفاقية الشروط والأحكام هذه. \n \n(12) تحديد المسؤوليات: \nبحسب ما هو مسموح في القانون فإن تطبيقنا وموظفيه ومدراءه والمتفرعين عنه والمجهزين له لن يكونوا مسؤولين عن أي خسارة مباشرة أو غير مباشرة أو أعطال تنشأ عن استخدامك للتطبيق. إذا لم تكن راض عن التطبيق أو عن أي من محتوياته فالحل هو بعدم استمرارك باستخدامه، علاوة على ذلك فأنت موافق أن أي استخدام غير مفوض للتطبيق وخدماته، بسبب إهمالك سوف يتسبب بإلحاق الأذى بـتطبيقنا، وعليه سيضطر التطبيق حينها إلى اللجوء إلى الشروط والأحكام. \n \n(13) الأمان: \nأنت موافق على استخدامك الأمن لتطبيقنا مع الحفاظ على امن مدراءه وموظفيه ووكلائه ومجهزيه ووقايتهم من أي ضرر قد يلحق بهم جراء مطالبات وخسائر وأعطال وتكاليف ونفقات، تحدث بسبب انتهاك لاتفاقية الشروط والأحكام أو خرقك لأي قانون أو تعديلات أو تعدي على حقوق أطراف ثالثة. \n \n(14) العلاقة والإشعارات: \nلا تتضمن أي من بنود اتفاقية الشروط والأحكام إشارة إلى وجود شراكة بينك وبين التطبيق. وأنت ليس لك سلطة في إلزام تطبيقنا بأي حال من الأحوال، وأن أي إشعارات تود إرسالها لـتطبيقنا، عليك إرسالها بالبريد الإلكتروني، دون إلزام لتطبيقنا بالرد او عدم الرد على الرسالة الإلكترونية. أنت تعرف وموافق على أن أية إشعارات ترسل إليك من تطبيقنا سوف تعلن على التطبيق أو بواسطة البريد الإلكتروني الذي زودتنا به خلال عملية التسجيل. \n \n(15) تحويل الحقوق والالتزامات: \nأنت هنا تمنح تطبيقنا الحق في تحويل جزء أو كل حقوقه ومنافعه والتزاماته ومسؤولياته، إلى أطراف أخرى تعمل معه، دون الحاجة للرجوع إليك، وذلك بحسب نصوص اتفاقية الشروط والحكام، وتطبيقنا ملتزم بإشعارك عن مثل هذه التحويلات إذا حصلت عبر هذه الصفحة. \n \n \n(16) معلومات عامة: \nإذا كانت أية فقرة واردة في اتفاقية الشروط والأحكام هذه غير صالحة أو ملغاة أو أنها لأي سبب لم تعد نافذة، فإن مثل هذه الفقرة لا تلغي صلاحية بقية الفقرات الواردة في الاتفاقية. هذه الاتفاقية (والتي تعدل بين حين وآخر بحسب بنودها) تضع كافة الخطوط العريضة للتفاهم والاتفاق بينك وبين تطبيقنا مع الاعتبار لما يلي: \n•	-ليس من حق أي شخص لا يكون طرفاً في هذه الاتفاقية أن يفرض أية بنود أو شروط فيها. \n•	-إذا تمت ترجمة اتفاقية الشروط والأحكام لأي لغة أخرى، سواء على التطبيق أو بطرق أخرى، فإن النص العربي لها يظل هو السائد. \n \n(17) المحتوى: \nتطبيقنا عبارة عن وسيط بين المصانع و الموردين لبيع المنتجات بالتجزئة لكن هذا لا يمنع انه قد يضم محتوى اخر حسب ما تراه ادارة التطبيق مناسبا.\n \n(18) القانون والتشريع الحاكمان: \nاتفاقية الشروط والأحكام هذه محكومة ومصاغة بما يتوافق مع القوانين المحلية، وهي خاضعة تماماً وكلياً للتشريع المعمول به في المحاكم بالمملكة العربية السعودية، وهذه الفقرة توجد بديلاً يتم اللجوء إليه في حال انتهاء مفعول اتفاقية الشروط والأحكام هذه أو إلغاؤها لأي سبب كان. \n \n(19) التغييرات: \nنحتفظ - وفقًا لتقديرنا الخاص - بحق تعديل أو استبدال هذه الشروط في أي وقت. وإذا كانت المراجعة تخص مادة من المواد، فسوف نحاول تقديم إشعار قبل 30 يومًا على الأقل من تفعيل أي شروط جديدة. وسيتم تحديد ما يشكل التغيير المادي وفقًا لتقديرنا فقط. \nومن خلال الاستمرار في الوصول إلى خدمتنا أو استخدامها بعد أن تصبح تلك المراجعات فعالة، فإنك توافق على الالتزام بالشروط المعدلة. \n \n(20) إخلاء المسئولية: \nإن استخدامك للخدمة يقع على مسؤوليتك وحدك. ويتم توفير الخدمة "كما هي" وبناء على "ما هو متوفر". وإلى الحد الأقصى المسموح به وفقًا للقانون المعمول به، يتم توفير الخدمة بدون ضمانات من أي نوع، سواء كانت صريحة أو ضمنية، بما في ذلك على سبيل المثال لا الحصر، الضمانات الخاصة بالتسويق أو الملاءمة لغرض معين أو عدم الانتهاك أو دورة الأداء. \nلا يضمن تطبيقنا: (أ) عدم انقطاع الخدمة؛ (ب) أو عدم حدوث أي أخطاء أو عيوب؛ (ج) أو خلو التطبيق من الفيروسات أو المكونات الضارة الأخرى؛ (د) أو إيفاء الخدمة لمتطلباتك. \n \nفي حالة كان لديك استفسار المرجو مراسلتنا، وفي حال كنت غير موافق على أي من البنود سواء في سياسة الخصوصية او شروط الاستخدام او كافتها المرجو التوقف عن استخدام التطبيق. \n`
  String get termOfServiceMessage {
    return Intl.message(
      'شروط الاستخدام \nتتغير شروط استخدام تطبيق مندوب مبيعات باستمرار فـأحرص على مداومة زيارة هذه الصفحة كي تبقى على اطلاع بالتغييرات، بتحميلك واستعمالك لتطبيقنا فانت توافق ضمنيا على الشروط والاحكام الموضحة في هذه الصفحة. \nكافة الشروط والبنود المبينة في هذه الصفحة لا تتنافى مع أي من القوانين الجاري بها العمل أو قوانين انتهاك الخصوصية والملكية الفكرية والملكية المشتركة المعمول بها دوليا. ويمكنكم معرفة المزيد عن هذا عبر مطالعة بنود "سياسة الخصوصية" \nسياسة وشروط الاستخدام هذه تخص حصرا تطبيق مشتريات مبيعات، وكل ما يندرج ضمنها من بنود ساري على تطبيقنا فقط واي بند لا تتضمنه الصفحة فانه لا يلزم وجوبا تطبيقنا بتبنيه او اتباعه، سنشير الى تطبيقنا مندوب مشتريات في باقي البنود باسم (التطبيق، او نحن)، ونحن لا نتحمل مسؤولية اي ضرر عند اساءة استخدام تطبيقنا او استعماله بما لا يتناسب مع البنود المدرجة اسفله.\nالبنود الواجب عليك الالتزام بها: \n \n(1) تقديم: \nمرحبا بكم في تطبيقنا، فيما يلي الشروط والأحكام التي تخص استخدامك ودخولك لتطبيقنا: \nإن دخولك واستخدامك لتطبيقنا هو موافقة منك على القبول ببنود وشروط هذه الاتفاقية والتي تشمل كافة التفاصيل أدناه وهو تأكيد لالتزامك بالاستجابة لمضمون هذه الاتفاقية الخاصة بـتطبيقنا والمشار إليه فيما يلي باسم "نحن" والمشار اليها أيضا بالـ "التطبيق"، في باقي بنود "هذه الصفحة" وتعتبر هذه الاتفاقية سارية المفعول حال تحميلك للتطبيق. \n \n(2) العضوية: \nيتوفر تطبيقنا على نظام عضويات يتيح لك بعد التسجيل فيه الدخول على تطبيقنا والتعرف على تجار البيع بالجملة وكذا إيجاد المصانع والمعامل التي تنتج منتجات وسواء كنت فردا او شركة فيمكنك ربط الاتصال بالتجار المنضوين تحت تطبيقنا يكفي ان تكون مسجلا على التطبيق وتكون قد ادليت بكافة المعلومات المطلوبة منك من قبيل البريد الالكتروني والاسم واي معلومة أخرى قد نراها مناسبة.\n \n(3) مزودو الخدمة: \nيحق لنا أن نوظف شركات وأفراد وحتى خدمات الكترونية من أطراف ثالثة لتسهيل إدارة تطبيقنا ("إدارة العضويات كمثال")، أو تقديم الخدمة نيابة عنا، أو لمساعدتنا في تحليل كيفية استخدام خدمتنا. \nويحق لهذه الأطراف الثالثة الوصول إلى بياناتك الشخصية فقط لأداء هذه المهام نيابة عنا، وهي ملزمة بعدم الكشف عنها أو استخدامها لأي غرض آخر. \n \n(4) التعديل على الشروط والأحكام: \n1. أنت تعلم وموافق على أن يقوم تطبيقنا بأي تعديل على اتفاقية الشروط والأحكام، وبموجبه تتضاعف التزاماتك أو تتضاءل حقوقك وفقاً لأي تعديلات قد تجرى على اتفاقية الشروط والأحكام دون الحاجة الى اعلامك. \n2. أنت توافق على ان تطبيقنا يملك بمطلق صلاحيته ودون تحمله المسؤولية القانونية أن يجري تعديلات أساسية أو فرعية على هذه الاتفاقية دون أن يتطلب ذاك موافقة إضافية من طرفك، وذلك في أي وقت وبأثر فوري، دون إلزام بأخبارك، ويمكنك دائما معرفة التعديلات عبر الرجوع لهذه الصفحة. \n3. أنت توافق على ان تطبيقنا يعتبر تطبيق إلكترونيا تقنيا يتيح للمستخدم إيجاد تجار ومصانع تعرض خدماتها ومنتجاتها حيت يعمل تطبيقنا كوسيط بينك وبينهم.\n4. لا يقدم تطبيقنا خدمة مدفوعة ولكن يحصل التطبيق على نسبة من كل عملية بيع تتم داخل التطبيق وانت مطالب بأداء هذه النسبة عبر الوسائل المتوفرة لذلك.\n5. قد نستعمل اعلانات من أطراف ثالثة. \n \n(5) معلوماتك الشخصية: \n توافق على ان لتطبيقنا الحق في التصرف في معلوماتك ضمن ما هو محدد في بنود شروط الاستخدام وفي بنود سياسة الخصوصية، بشكل دائم وغير قابل للإلغاء، وذلك من خلال التسجيل او استعمال النماذج المخصصة للتواصل، أو عبر أية رسالة إلكترونية أو أي من قنوات الاتصال المتاحة بالتطبيق. وذلك بهدف تشغيل وترويج التطبيق وفق اتفاقية إخلاء المسئولية وبيان الخصوصية. \n \n(6) حقوق الطبع: \n1.كافة المحتويات التي يتضمنها التطبيق، بما في ذلك وليس محصوراً في النصوص، التصاميم الجرافيكية، الشعارات، أيقونات الأزرار، الرموز، المقاطع الصوتية، الأحمال الرقمية، البيانات المجمّعة والبرامج الإلكترونية، هي ملك وحقوقها محفوظة إما لـتطبيقنا أو للجهة المسؤولة عن تصميم تطبيقنا، والمعدين لهذه المحتويات وللمفوضين وهي محمية ضمن حقوق الملكية الفكرية والإبداعية. \n \n(7) سرية المعطيات: \n1.يتخذ تطبيقنا معايير (ملموسة وتنظيمية وتكنولوجية) للحماية من وصول شخص غير مفوض إلى معلومات هويتك الشخصية، وحفظها.\n 2. تطبيقنا ليس له سيطرة على أفعال أي طرف ثالث، مثل صفحات الانترنت الأخرى الموصولة بهذا التطبيق، او الاعلانات أو اي أطراف ثالثة. \n3.أنت تعلم وموافق أن تطبيقنا قد يستخدم معلوماتك التي زودته بها، بهدف تحسين الخدمات المقدمة لك، ولإرسال رسائل تسويقية لك، وان بيان الخصوصية في هذا التطبيق يضبط عمليات الجمع والمعالجة والاستخدام والتحويل لمعلومات هويتك الشخصية. \n \n \n(8) نقض اتفاقية الشروط والأحكام: \nان ادارة تطبيقنا بحسب اتفاقية الشروط والأحكام وبحسب القانون قد يلجأ إلى وقف مؤقت أو دائم للمحتوى وللخدمة التي يقدمها مهما كانت أو الى إلغاء وصولك إلى التطبيق دون الإضرار بحقوقه الأخرى ووسائله المشروعة في استرداد حقوقك في حالة: \n1. إذا انتهكت اتفاقية الشروط والأحكام. \n2. إذا اكتشفنا أن نشاطاتك قد تتسبب لك أو لمستخدمين آخرين ولـتطبيقنا في إشكالات قانونية. \n3. في حالة القرصنة او محاولة القرصنة لتطبيقنا فأننا نحتفظ بكامل الحق في اتخاذ الإجراءات القانونية و/أو اللجوء الى القضاء حسبما تراه ادارة التطبيق مناسباً. \n4. إن قيامك أو قيام آخرين بانتهاك الاتفاقية هذه لا يلزم تطبيقنا بالتنازل عن حقه في اتخاذ الإجراءات المناسبة لمثل هذا الفعل ولغيره من أفعال الانتهاك المشابهة. وتطبيقنا لا يضمن اتخاذه إجراءات ضد كل الانتهاكات لاتفاقية الشروط والأحكام. \n \n \n(9) محتويات غير قانونية: \nممنوع منعا كليا استخدام خصائص التطبيق او محتوياته او صوره او أي شيء يدخل ضمن تطبيقنا في أي نشاط غير قانوني او من اجل الدعاية او الخداع او النصب باسم التطبيق او تشهير بشخص او شركة من خلال أي جزء من التطبيق، ويعتبر ذلك بمثابة انتهاك للشروط والأحكام. \n \n(10) التغذية الرجعية: \nتطبيقنا يشجع جميع الأعضاء على التطبيق لتقديم مساهمات (فيد باك Feedback) من شأنها المساعدة على تطوير تطبيقنا او المحتوى المقدم وذلك عبر مراسلتنا، وسوف نحرص على اخدها بعين الاعتبار كي نطور من التطبيق ومن سهولة استخدامه.\n \n(11) إلغاء الوصول: \nبدون إلحاق الضرر بحقوقه الأخرى ووسائله المشروعة لاسترداد حقوقه، يمكن لـتطبيقنا وقف أو إلغاء وصولك لعضويتك في أي وقت وبدون إنذار ولأي سبب، ودون تحديد، ويمكنه أيضا إلغاء اتفاقية الشروط والأحكام هذه. \n \n(12) تحديد المسؤوليات: \nبحسب ما هو مسموح في القانون فإن تطبيقنا وموظفيه ومدراءه والمتفرعين عنه والمجهزين له لن يكونوا مسؤولين عن أي خسارة مباشرة أو غير مباشرة أو أعطال تنشأ عن استخدامك للتطبيق. إذا لم تكن راض عن التطبيق أو عن أي من محتوياته فالحل هو بعدم استمرارك باستخدامه، علاوة على ذلك فأنت موافق أن أي استخدام غير مفوض للتطبيق وخدماته، بسبب إهمالك سوف يتسبب بإلحاق الأذى بـتطبيقنا، وعليه سيضطر التطبيق حينها إلى اللجوء إلى الشروط والأحكام. \n \n(13) الأمان: \nأنت موافق على استخدامك الأمن لتطبيقنا مع الحفاظ على امن مدراءه وموظفيه ووكلائه ومجهزيه ووقايتهم من أي ضرر قد يلحق بهم جراء مطالبات وخسائر وأعطال وتكاليف ونفقات، تحدث بسبب انتهاك لاتفاقية الشروط والأحكام أو خرقك لأي قانون أو تعديلات أو تعدي على حقوق أطراف ثالثة. \n \n(14) العلاقة والإشعارات: \nلا تتضمن أي من بنود اتفاقية الشروط والأحكام إشارة إلى وجود شراكة بينك وبين التطبيق. وأنت ليس لك سلطة في إلزام تطبيقنا بأي حال من الأحوال، وأن أي إشعارات تود إرسالها لـتطبيقنا، عليك إرسالها بالبريد الإلكتروني، دون إلزام لتطبيقنا بالرد او عدم الرد على الرسالة الإلكترونية. أنت تعرف وموافق على أن أية إشعارات ترسل إليك من تطبيقنا سوف تعلن على التطبيق أو بواسطة البريد الإلكتروني الذي زودتنا به خلال عملية التسجيل. \n \n(15) تحويل الحقوق والالتزامات: \nأنت هنا تمنح تطبيقنا الحق في تحويل جزء أو كل حقوقه ومنافعه والتزاماته ومسؤولياته، إلى أطراف أخرى تعمل معه، دون الحاجة للرجوع إليك، وذلك بحسب نصوص اتفاقية الشروط والحكام، وتطبيقنا ملتزم بإشعارك عن مثل هذه التحويلات إذا حصلت عبر هذه الصفحة. \n \n \n(16) معلومات عامة: \nإذا كانت أية فقرة واردة في اتفاقية الشروط والأحكام هذه غير صالحة أو ملغاة أو أنها لأي سبب لم تعد نافذة، فإن مثل هذه الفقرة لا تلغي صلاحية بقية الفقرات الواردة في الاتفاقية. هذه الاتفاقية (والتي تعدل بين حين وآخر بحسب بنودها) تضع كافة الخطوط العريضة للتفاهم والاتفاق بينك وبين تطبيقنا مع الاعتبار لما يلي: \n•	-ليس من حق أي شخص لا يكون طرفاً في هذه الاتفاقية أن يفرض أية بنود أو شروط فيها. \n•	-إذا تمت ترجمة اتفاقية الشروط والأحكام لأي لغة أخرى، سواء على التطبيق أو بطرق أخرى، فإن النص العربي لها يظل هو السائد. \n \n(17) المحتوى: \nتطبيقنا عبارة عن وسيط بين المصانع و الموردين لبيع المنتجات بالتجزئة لكن هذا لا يمنع انه قد يضم محتوى اخر حسب ما تراه ادارة التطبيق مناسبا.\n \n(18) القانون والتشريع الحاكمان: \nاتفاقية الشروط والأحكام هذه محكومة ومصاغة بما يتوافق مع القوانين المحلية، وهي خاضعة تماماً وكلياً للتشريع المعمول به في المحاكم بالمملكة العربية السعودية، وهذه الفقرة توجد بديلاً يتم اللجوء إليه في حال انتهاء مفعول اتفاقية الشروط والأحكام هذه أو إلغاؤها لأي سبب كان. \n \n(19) التغييرات: \nنحتفظ - وفقًا لتقديرنا الخاص - بحق تعديل أو استبدال هذه الشروط في أي وقت. وإذا كانت المراجعة تخص مادة من المواد، فسوف نحاول تقديم إشعار قبل 30 يومًا على الأقل من تفعيل أي شروط جديدة. وسيتم تحديد ما يشكل التغيير المادي وفقًا لتقديرنا فقط. \nومن خلال الاستمرار في الوصول إلى خدمتنا أو استخدامها بعد أن تصبح تلك المراجعات فعالة، فإنك توافق على الالتزام بالشروط المعدلة. \n \n(20) إخلاء المسئولية: \nإن استخدامك للخدمة يقع على مسؤوليتك وحدك. ويتم توفير الخدمة "كما هي" وبناء على "ما هو متوفر". وإلى الحد الأقصى المسموح به وفقًا للقانون المعمول به، يتم توفير الخدمة بدون ضمانات من أي نوع، سواء كانت صريحة أو ضمنية، بما في ذلك على سبيل المثال لا الحصر، الضمانات الخاصة بالتسويق أو الملاءمة لغرض معين أو عدم الانتهاك أو دورة الأداء. \nلا يضمن تطبيقنا: (أ) عدم انقطاع الخدمة؛ (ب) أو عدم حدوث أي أخطاء أو عيوب؛ (ج) أو خلو التطبيق من الفيروسات أو المكونات الضارة الأخرى؛ (د) أو إيفاء الخدمة لمتطلباتك. \n \nفي حالة كان لديك استفسار المرجو مراسلتنا، وفي حال كنت غير موافق على أي من البنود سواء في سياسة الخصوصية او شروط الاستخدام او كافتها المرجو التوقف عن استخدام التطبيق. \n',
      name: 'termOfServiceMessage',
      desc: '',
      args: [],
    );
  }

  /// `سياسة الخصوصية\n\nنقدر مخاوفكم واهتمامكم بشأن خصوصية بياناتكم على شبكة الإنترنت وعلى تطبيقنا مندوب مشتريات.\nيقوم مندوب مشتريات والذي قد نشير اليه في باقي البنود بالآتي ("نحن" أو "تطبيقنا") بجمع ومعالجة بياناتك الشخصية وفقًا لسياسة الخصوصية هذه وبما يتوافق مع قوانين حماية البيانات المعمول بها في المملكة العربية السعودية. تزودك هذه السياسة بالمعلومات اللازمة فيما يتعلق بحقوقك والتزاماتنا، وتشرح كيف ولماذا ومتى نعالج بياناتك الشخصية. مبدأنا العام هو جمع المعلومات الضرورية فقط لتزويدك بالوظائف الكاملة لمنتجاتنا وخدماتنا.\nلقد تم إعداد هذه السياسة لمساعدتكم على تفهم طبيعة هذه البيانات التي نقوم بتجميعها عنكم عند استخدامكم لتطبيقنا وكيفية تعاملنا مع هذه البيانات الشخصية. \nباستخدامك لتطبيقنا انت توافق على كل بنود سياسة الخصوصية الموضحة، وتلزمك هذه البنود بتقبل كافة الشروط والبنود المطبقة عليك مند تحميلك للتطبيق. \nوتلتزم إدارة التطبيق، وفق القانون المنظم محليا، ووفق قوانين حماية المعطيات والتي تقرها المنظمات الدولية بعدم كشف أي معلومات شخصية عن المستخدم لتطبيقنا مثل العنوان أو رقم الهاتف أو عنوان البريد الإلكتروني وغيرها. \nويلتزم تطبيقنا بعدم تبادل، أو تداول أي من تلك المعلومات أو بيعها لأي طرف آخر طالما كان ذلك في حدود قدرات إدارة التطبيق الممكنة، ولن يُسمح بالوصول إلى المعلومات إلا للأشخاص المؤهلين والمحترفين الذين يشرفون على تطبيقنا. \n \nاخلاء المسؤولية \nيقر المستخدم لتطبيقنا على انه المسؤول الحصري والوحيد على طبيعة الاستخدام لتطبيقنا وعلى سلامة المعطيات والمعلومات التي يدخلها او يقدمها للتطبيق، وتخلي ادارة التطبيق مسؤوليتها من كل ضرر او تسريب او اختلال يتعرض له المستخدم جراء استخدام تطبيقنا. . \n \nالاعلانات على التطبيق \nقد يشتمل تطبيقنا على روابط لمواقع أخرى على شبكة الإنترنت. او اعلانات من شركات اعلانية مثل أدموب ولا نعتبر مسؤولين عن أساليب تجميع البيانات من قبل تلك المواقع، يمكنك الاطلاع على سياسات الخصوصية والمحتويات الخاصة بتلك المواقع لتعرف طبيعة المعطيات التي تجمعها عنك. \nقد نستعين بشركات إعلانية لأطراف ثالثة لعرض الإعلانات عندما تزور تطبيقنا. يحق لهذه الشركات أن تستخدم معلومات حول زياراتك لتطبيقنا (باستثناء الاسم أو العنوان أو عنوان البريد الإلكتروني أو رقم الهاتف)، وذلك من أجل تقديم إعلانات حول البضائع والخدمات التي تهمك. \n \nحماية المعطيات الشخصية\nنحن نتبع إجراءات أمنية مادية وإلكترونية وتقنية وتدابير أمنية وتنظيمية مناسبة، بما في ذلك نماذج الحوكمة لحماية بياناتك الشخصية وفقا لقانون حماية البيانات من الوصول غير المصرح به إلى البيانات الشخصية أو استخدامها أو تغييرها أو الإفصاح عنها أو إتلافها.\nيرجى الملاحظة أنه لا يمكن ضمان نقل أية بيانات عبر الإنترنت أو التطبيق الإلكتروني من دون أي تدخل. بالإضافة إلى ذلك، عليك أيضا اتخاذ الإجراءات المناسبة لحماية بياناتك الشخصية. إن كنا نعلم أو لدينا سبب للاعتقاد أن بياناتك الشخصية قد تعرضت للاختراق، سوف نقوم فورا بإبلاغ المستخدمين المتضررين من حدوث خرق وفقا للقوانين المعمول بها.\n \nإفشاء المعلومات \nسنحافظ في كافة الأوقات على خصوصية وسرية كافة البيانات الشخصية التي نتحصل عليها. ولن يتم إفشاء هذه المعلومات إلا إذا كان ذلك مطلوباً بموجب أي قانون أو مذكرة قضائية، وفقط عندما نعتقد بحسن نية أن مثل هذا الإجراء سيكون مطلوباً أو مرغوباً فيه للتمشي مع القانون، أو للدفاع أو حماية حقوق الملكية الخاصة بهذا التطبيق أو الجهات المستفيدة منه. \n \nمحتوى تطبيقنا \nيلتزم الزائر بكل الشروط والبنود الموضحة في سياسة الخصوصية، ويلتزم بألا يستعمل تطبيقنا او خصائصه او أي شيء يدخل ضمن محتواه في أي شيء يخالف الشريعة الإسلامية بأي شكل من الأشكال، أو في أغراض غير قانونية، على سبيل المثال لا الحصر، مثل: القرصنة ونشر وتوزيع مواد أو برامج منسوخة، أو الخداع والتزوير أو الاحتيال أو التهديد أو إزعاج أي شخص أو شركة أو جماعة أو في نشر فيروسات أو ملفات تجسس أو وضع روابط إلى مواقع تحتوي على مثل هذه المخالفات.. \nيمنع انتهاك / استعمال أي جزء من تطبيقنا كصورة / فيديو / رابط او أي شيء اخر في نشاط ينتهك حقوق الملكية الفكرية أو تشويه سمعة شخص أو مؤسسة أو شركة أو تعمد نشر أي معلومات تسبب ضررا لشركة أو شخص أو دولة أو جماعة وبعدم وضع أي جزء من تطبيقنا على أي تطبيق او موقع يحتوي على مواد قرصنة وبرامج مسروقة وجميع ما يخالف الأعراف والقوانين المنظمة.\n \nالتعديلات على البنود \nنحتفظ بالحق في تعديل بنود وشروط سياسة الخصوصية وشروط الاستخدام دون الحاجة الى اشعارك وستعتبر التغييرات في البنود على هذه الصفحة بمثابة الاشعار لكل زائر يدخل تطبيقنا لذلك احرص على مواكبة قراءة هذه الصفحة لتعلم بجديد التغييرات. \n \nالاتصال بنا \nيمكنكم الاتصال بنا عند الحاجة من خلال الصفحة المخصصة لذلك او عبر بريدنا الالكتروني، وستحتاج للقيام بهذه العملية لإدخال بريدك الالكتروني واسمك وبضع معلومات أخرى ضرورية، ويلتزم تطبيقنا بعدم مشاركة المعلومات المدخلة مع أي طرف كان. \n \nاخيرا \nإن مخاوفك واهتمامك بشأن خصوصية البيانات تعتبر مسألة في غاية الأهمية بالنسبة لنا. نحن نأمل أن يتم تبديد كل مخاوفك وتوضيح مسارات كافة معطياتك من خلال هذه الصفحة. \n`
  String get policies {
    return Intl.message(
      'سياسة الخصوصية\n\nنقدر مخاوفكم واهتمامكم بشأن خصوصية بياناتكم على شبكة الإنترنت وعلى تطبيقنا مندوب مشتريات.\nيقوم مندوب مشتريات والذي قد نشير اليه في باقي البنود بالآتي ("نحن" أو "تطبيقنا") بجمع ومعالجة بياناتك الشخصية وفقًا لسياسة الخصوصية هذه وبما يتوافق مع قوانين حماية البيانات المعمول بها في المملكة العربية السعودية. تزودك هذه السياسة بالمعلومات اللازمة فيما يتعلق بحقوقك والتزاماتنا، وتشرح كيف ولماذا ومتى نعالج بياناتك الشخصية. مبدأنا العام هو جمع المعلومات الضرورية فقط لتزويدك بالوظائف الكاملة لمنتجاتنا وخدماتنا.\nلقد تم إعداد هذه السياسة لمساعدتكم على تفهم طبيعة هذه البيانات التي نقوم بتجميعها عنكم عند استخدامكم لتطبيقنا وكيفية تعاملنا مع هذه البيانات الشخصية. \nباستخدامك لتطبيقنا انت توافق على كل بنود سياسة الخصوصية الموضحة، وتلزمك هذه البنود بتقبل كافة الشروط والبنود المطبقة عليك مند تحميلك للتطبيق. \nوتلتزم إدارة التطبيق، وفق القانون المنظم محليا، ووفق قوانين حماية المعطيات والتي تقرها المنظمات الدولية بعدم كشف أي معلومات شخصية عن المستخدم لتطبيقنا مثل العنوان أو رقم الهاتف أو عنوان البريد الإلكتروني وغيرها. \nويلتزم تطبيقنا بعدم تبادل، أو تداول أي من تلك المعلومات أو بيعها لأي طرف آخر طالما كان ذلك في حدود قدرات إدارة التطبيق الممكنة، ولن يُسمح بالوصول إلى المعلومات إلا للأشخاص المؤهلين والمحترفين الذين يشرفون على تطبيقنا. \n \nاخلاء المسؤولية \nيقر المستخدم لتطبيقنا على انه المسؤول الحصري والوحيد على طبيعة الاستخدام لتطبيقنا وعلى سلامة المعطيات والمعلومات التي يدخلها او يقدمها للتطبيق، وتخلي ادارة التطبيق مسؤوليتها من كل ضرر او تسريب او اختلال يتعرض له المستخدم جراء استخدام تطبيقنا. . \n \nالاعلانات على التطبيق \nقد يشتمل تطبيقنا على روابط لمواقع أخرى على شبكة الإنترنت. او اعلانات من شركات اعلانية مثل أدموب ولا نعتبر مسؤولين عن أساليب تجميع البيانات من قبل تلك المواقع، يمكنك الاطلاع على سياسات الخصوصية والمحتويات الخاصة بتلك المواقع لتعرف طبيعة المعطيات التي تجمعها عنك. \nقد نستعين بشركات إعلانية لأطراف ثالثة لعرض الإعلانات عندما تزور تطبيقنا. يحق لهذه الشركات أن تستخدم معلومات حول زياراتك لتطبيقنا (باستثناء الاسم أو العنوان أو عنوان البريد الإلكتروني أو رقم الهاتف)، وذلك من أجل تقديم إعلانات حول البضائع والخدمات التي تهمك. \n \nحماية المعطيات الشخصية\nنحن نتبع إجراءات أمنية مادية وإلكترونية وتقنية وتدابير أمنية وتنظيمية مناسبة، بما في ذلك نماذج الحوكمة لحماية بياناتك الشخصية وفقا لقانون حماية البيانات من الوصول غير المصرح به إلى البيانات الشخصية أو استخدامها أو تغييرها أو الإفصاح عنها أو إتلافها.\nيرجى الملاحظة أنه لا يمكن ضمان نقل أية بيانات عبر الإنترنت أو التطبيق الإلكتروني من دون أي تدخل. بالإضافة إلى ذلك، عليك أيضا اتخاذ الإجراءات المناسبة لحماية بياناتك الشخصية. إن كنا نعلم أو لدينا سبب للاعتقاد أن بياناتك الشخصية قد تعرضت للاختراق، سوف نقوم فورا بإبلاغ المستخدمين المتضررين من حدوث خرق وفقا للقوانين المعمول بها.\n \nإفشاء المعلومات \nسنحافظ في كافة الأوقات على خصوصية وسرية كافة البيانات الشخصية التي نتحصل عليها. ولن يتم إفشاء هذه المعلومات إلا إذا كان ذلك مطلوباً بموجب أي قانون أو مذكرة قضائية، وفقط عندما نعتقد بحسن نية أن مثل هذا الإجراء سيكون مطلوباً أو مرغوباً فيه للتمشي مع القانون، أو للدفاع أو حماية حقوق الملكية الخاصة بهذا التطبيق أو الجهات المستفيدة منه. \n \nمحتوى تطبيقنا \nيلتزم الزائر بكل الشروط والبنود الموضحة في سياسة الخصوصية، ويلتزم بألا يستعمل تطبيقنا او خصائصه او أي شيء يدخل ضمن محتواه في أي شيء يخالف الشريعة الإسلامية بأي شكل من الأشكال، أو في أغراض غير قانونية، على سبيل المثال لا الحصر، مثل: القرصنة ونشر وتوزيع مواد أو برامج منسوخة، أو الخداع والتزوير أو الاحتيال أو التهديد أو إزعاج أي شخص أو شركة أو جماعة أو في نشر فيروسات أو ملفات تجسس أو وضع روابط إلى مواقع تحتوي على مثل هذه المخالفات.. \nيمنع انتهاك / استعمال أي جزء من تطبيقنا كصورة / فيديو / رابط او أي شيء اخر في نشاط ينتهك حقوق الملكية الفكرية أو تشويه سمعة شخص أو مؤسسة أو شركة أو تعمد نشر أي معلومات تسبب ضررا لشركة أو شخص أو دولة أو جماعة وبعدم وضع أي جزء من تطبيقنا على أي تطبيق او موقع يحتوي على مواد قرصنة وبرامج مسروقة وجميع ما يخالف الأعراف والقوانين المنظمة.\n \nالتعديلات على البنود \nنحتفظ بالحق في تعديل بنود وشروط سياسة الخصوصية وشروط الاستخدام دون الحاجة الى اشعارك وستعتبر التغييرات في البنود على هذه الصفحة بمثابة الاشعار لكل زائر يدخل تطبيقنا لذلك احرص على مواكبة قراءة هذه الصفحة لتعلم بجديد التغييرات. \n \nالاتصال بنا \nيمكنكم الاتصال بنا عند الحاجة من خلال الصفحة المخصصة لذلك او عبر بريدنا الالكتروني، وستحتاج للقيام بهذه العملية لإدخال بريدك الالكتروني واسمك وبضع معلومات أخرى ضرورية، ويلتزم تطبيقنا بعدم مشاركة المعلومات المدخلة مع أي طرف كان. \n \nاخيرا \nإن مخاوفك واهتمامك بشأن خصوصية البيانات تعتبر مسألة في غاية الأهمية بالنسبة لنا. نحن نأمل أن يتم تبديد كل مخاوفك وتوضيح مسارات كافة معطياتك من خلال هذه الصفحة. \n',
      name: 'policies',
      desc: '',
      args: [],
    );
  }

  /// `Invalid number`
  String get invalidNumber {
    return Intl.message(
      'Invalid number',
      name: 'invalidNumber',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Code`
  String get invalidCode {
    return Intl.message(
      'Invalid Code',
      name: 'invalidCode',
      desc: '',
      args: [],
    );
  }

  /// `Code number`
  String get codeNumber {
    return Intl.message(
      'Code number',
      name: 'codeNumber',
      desc: '',
      args: [],
    );
  }

  /// `Code has expired`
  String get codeTimeOut {
    return Intl.message(
      'Code has expired',
      name: 'codeTimeOut',
      desc: '',
      args: [],
    );
  }

  /// `The code has been successfully sent`
  String get resendCodeSuccessfully {
    return Intl.message(
      'The code has been successfully sent',
      name: 'resendCodeSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `You must enter the code first`
  String get notVerifiedNumber {
    return Intl.message(
      'You must enter the code first',
      name: 'notVerifiedNumber',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPass {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPass',
      desc: '',
      args: [],
    );
  }

  /// `Our partners`
  String get partners {
    return Intl.message(
      'Our partners',
      name: 'partners',
      desc: '',
      args: [],
    );
  }

  /// `Payments via`
  String get paymentsVia {
    return Intl.message(
      'Payments via',
      name: 'paymentsVia',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPassword {
    return Intl.message(
      'New password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm new password`
  String get confirmNewPass {
    return Intl.message(
      'Confirm new password',
      name: 'confirmNewPass',
      desc: '',
      args: [],
    );
  }

  /// `Password updated successfully`
  String get passwordUpdatedSuccess {
    return Intl.message(
      'Password updated successfully',
      name: 'passwordUpdatedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `We will send a verification code to your number`
  String get informSendCode {
    return Intl.message(
      'We will send a verification code to your number',
      name: 'informSendCode',
      desc: '',
      args: [],
    );
  }

  /// `Password not matching`
  String get passwordNotMatch {
    return Intl.message(
      'Password not matching',
      name: 'passwordNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Account not exist`
  String get accountNotExist {
    return Intl.message(
      'Account not exist',
      name: 'accountNotExist',
      desc: '',
      args: [],
    );
  }

  /// `You must complete your account information first`
  String get profileIncomplete {
    return Intl.message(
      'You must complete your account information first',
      name: 'profileIncomplete',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `inactive`
  String get inactiveProduct {
    return Intl.message(
      'inactive',
      name: 'inactiveProduct',
      desc: '',
      args: [],
    );
  }

  /// `Product available`
  String get productAvailable {
    return Intl.message(
      'Product available',
      name: 'productAvailable',
      desc: '',
      args: [],
    );
  }

  /// `quantity`
  String get quantity {
    return Intl.message(
      'quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'ur'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}