class AppStrings {
  AppStrings._internal();
  static final AppStrings _instance = AppStrings._internal();
  factory AppStrings() => _instance;
  //! Using a factory constructor (AppStrings._internal()) is a way to create a
  //! singleton, ensuring that there is only one instance of AppStrings.
  final String selectPreferredLanguage = 'Select Preferred Language';
  final String arabic = 'العربية';
  final String english = 'English (US)';
  static const String select = 'Select';
  final String next = 'Next';
  final String skip = 'skip';
  final String services = 'Services';
  final String topLoaners = 'Top Loaners';
  final String signIn = 'Sign in';
  final String proceed = 'Proceed';
  final String applyNow = 'Apply Now';
  static const String accountInformation = 'Account Information';
  static const String faqQuesstion1 = "How do I apply for a loan?";
  static const String faqAnswer =
      "We offer a variety of loans including personal loans, business loans, education loans, and more. You can select the type of loan during the application process.";

  static const String faqQuesstion2 = "What types of loans can I apply for?";

  static const String faqQuesstion3 = "How long does it take to get approved?";

  static const String faqQuesstion4 = "Can I repay my loan early?";

  static const String faqQuesstion5 = "What happens if I miss a repayment?";

  static const String faqQuesstion6 = "Is my personal information safe?";

  final String email = 'Email';
  final String addressLine1 = 'Address Line 1';
  final String addressLine2 = 'Address Line 2 (Optional)';
  final String city = 'City';
  final String zip = 'ZIP / Postcode';
  final String nationalID = 'National ID';
  final String employmentState = 'Employment State';
  final String dateOfBirth = 'Date of birth';
  final String liveChat = 'Live Chat';
  final String home = 'Home';
  final String wallet = 'Wallet';
  final String loans = 'Loans';
  static const String profile = 'Profile';
  static const String faq = 'FAQs';
  final String explore = 'Explore';
  final String qrCode = 'QR Code';
  final String workPlace = 'Workplace';
  final String signUp = 'Sign Up';
  final String logIn = 'Log in';
  final String sendOTP = 'Send OTP';
  final String chooseService = 'Which service are you providing?';
  final String onBoarding1Title = 'Get Instant Loans up to \n5000 SAR';
  final String onBoarding2Title = 'Fuel Up Today, Pay When It’s \nConvenient';
  final String onBoarding3Title =
      'Control Your Transactions with \nthe E-Wallet';
  final String onBoarding1SubTitle =
      'Whether you\'re borrowing or lending, Easy makes the process simple, transparent and Connects you with trusted partners.';
  final String onBoarding2SubTitle =
      'Running low on oil? No problem. With Easy, you can fill up at any partner station and pay later at your convenience.';
  final String onBoarding3SubTitle =
      'With the E-wallet feature, you can easily add money to your account and stay in control of your transactions.';
  final String welcomeBack = 'Welcome Back!';
  static const String currentBalance = 'Current Balance';
  final String welcomeOnBoard = 'Welcome Onboard!';
  final String logInToYourAccount = 'Log in to your account';
  final String enterThePhoneNumber =
      'Enter the phone number associated with your account.';
  final String letsCreateAccount = 'Let’s create your account';
  final String firstName = 'First Name';
  final String lastName = 'Last Name';
  final String confirmPassword = 'Confirm Password';
  final String useRegex =
      'Use 8+ characters with letters, numbers, and symbols.';
  final String bothPasswordMustMatch = 'Both Password must match';
  final String phoneNumber = 'Phone Number';
  final String password = 'Password';
  final String rememberMe = 'Remember me';
  final String applyForALoan = 'Apply For a Loan';
  final String loanRepayment = 'loan Repayment';
  final String easyFuel = 'Easy Fuel';
  static const String manageCards = 'Manage Cards';
  final String forgetPassword = 'Forgot Password?';
  final String orLoginWith = 'or Log in with';
  final String doNotHaveAnAccount = 'Don’t have an account?';
  final String alreadyHaveAnAccount = 'Already have an account?';
  final String bySigningUpIConfirm =
      'By Signing in, you confirm you’ve agreed to our';
  final String didNotGetACode = 'Didn’t get a code?';
  final String sendAgain = 'send again';
  final String termsOfService = 'terms of service';
  final String and = 'and';
  final String privacyPolicy = 'privacy policy.';
  final String enterOtpCode = 'Enter OTP Code';
  final String enterTheFourDigits = 'Enter the 4 digit code sent to';
  final String changeNumber = 'Change Number';
  final String continueText = 'Continue';
  final String submit = 'Submit';
  final String resetPassword = 'Reset Password';
  final String passwordMustBeDifferent =
      'Your new password must be different from previous used passwords.';
  final String awesome = 'Awesome!';
  static const String congratulations = 'Congratulations!';
  final String accountCreated =
      'Your account has been successfully created,Click proceed to go to your homepage.!';
  final String passwordResetSuccess =
      'Your password has been reset successfully! Please login with your new password.';
  final String completeYourProfile = 'Complete your profile';
  final String thisFormInclude =
      'This form include data that has been autofilled using Nafez.';
  static const String personalInfo = 'Personal Info';
  static const String addressInfo = 'Address Info';
  static const String accountType = 'Account Type';
  final String customer = 'Customer';
  static const String money = 'Money';
  final String provider = 'Provider';
  static const String oil = 'Oil';

  final String createAccount = 'createAccount';
  final String nameError = 'nameError';
  final String enterPassword = 'enterPassword';
  final String certificationError = "certification_error";
  final String connectionError = "connection_error";
  final String cacheWriteSuccess = "cache_write_success";
  final String notFoundInCache = "not_found_in_cache";
  final String cacheReadSuccess = "cache_read_success";
  final String confirmPasswordError = 'confirmPasswordError';
  final String destinationAddress = "destinationAddress";
  final String deny = "deny";
  final String notificationPermission = "notificationPermission";
  final String cameraPermission = "cameraPermission";
  final String locationPermission = "locationPermission";

  /// ********************** verification screen ************
  final String removeImage = 'Remove Image';
  String chooseAction = "Choose Action";

  /// ***************** validators ***********************

  final String appName = "appName";
  final String hours = "Hours";
  final String minutes = "Minutes";
  final String seconds = "Seconds";
  final String allow = "allow";
  final String serverError = 'SERVER_ERROR';
  static const String notifications = "notifications";

  /// **************************** done screen************************************
  // error handler
  final String badRequestError = "bad_request_error";
  final String noContent = "no_content";
  final String forbiddenError = "forbidden_error";
  final String unauthorizedError = "unauthorized_error";
  final String notFoundError = "not_found_error";
  final String conflictError = "conflict_error";
  final String internalServerError = "internal_server_error";
  final String unknownError = "unknown_error";
  final String connectTimeOutError = "timeout_error";
  final String defaultError = "default_error";
  final String cacheReadError = "cache_read_error";
  final String cacheWriteError = "cache_write_error";
  final String noInternetError = "no_internet_error";
  final String phoneError = 'phoneError';
  final String passwordError = 'passwordError';
  final String otpCodeError = 'otpCodeError';
  final String locationPermissionFailed = "locationPermissionFailed";
  final String useCommentError = 'Please enter your reason';
  final String success = "success";
  final String emailError = 'emailError';
  final String gallery = "Gallery";
  final String camera = "camera";
  final String location = "location";

  static String settingAndPrivacy = "Setting And Privacy";
  static String chatSupport = "Chat Support";
  static String loansPolicy = "Loans Policy";
  static String faqs = "FAQS";
  static String logout = "Log Out";
  static String logoutFromEasy = "Log out from Easy";
  static String logoutFromEasyWarning =
      "Are you sure you would like to log out from your account?";
  static String cancel = "Cancel";

  /// **************************** Account Info screens ********************************************
  static const String saveButtonText = "Save";
  static const String companyName = "Company Name";
  static const String workplace = "Workplace";
  static const String fullNameLabel = "Full Name";
  static const String lastNameLabel = "Last Name";
  static const String hintFirstName = "Ahmed";
  static const String hintLastName = "Adel";
  static const String hintNationalId = "7862 4396 8757 8322";
  static const String titleNationalId = "National ID";
  static const String hintEmploymentType = "Non-Salaried";
  static const String titleEmploymentType = "Employment Type";
  static const String birthDateLabel = "Date of Birth";
  static const String hintBirthDate = "27/10/2001";
  static const String emailLabel = "Email";
  static const String hintEmail = "AhmedAdel@gmail.com";
  static const String hintZipCode = "ZIP / Postcode";
  static const String titleZipCode = "34324235";
  static const String hintCity = "City";
  static const String titleCity = "Riyadh";
  static const String hintAddressLine1 = "Address Line 1";
  static const String titleAddressLine1 = "Address line 1";
  static const String hintAddressLine2 = "Address Line 2 (Optional)";
  static const String titleAddressLine2 = "Address line 2";
  static const String serviceTypeTitle = "Service type";

  /// **************************** Chat Screen ********************************************
  static const String sendMessage = "Send Message...";
  static const String messageText1 = "Hello, how are you?";
  static const String messageText2 = "I'm good, thanks! How about you?";
  static const String messageText3 =
      "I'm doing well, just working on some tasks.";
  static const String messageText4 = "This Is Ahmed";
  static const String statusSeen = "Seen";
  static const String statusDelivered = "Delivered";
  static const String profileImageMale =
      "https://randomuser.me/api/portraits/men/1.jpg";
  static const String profileImageFemale =
      "https://randomuser.me/api/portraits/women/1.jpg";
  static const String imageUrl =
      "https://www.w3schools.com/w3images/avatar6.png";
  static const String todayText = "Today";
  static const String specialistJoinedText = "A specialist joined the chat";
  static const String timeText = "11:07";

  // **************************** Settings & Privacy Screen ********************************************
  static const String settingsAndPrivacy = "Settings & Privacy";
  static const String preferences = "Preferences";
  static const String pushNotifications = "Push Notifications";
  static const String language = "Language";
  static const String closeYourAccount = "Close your account";
  static const String changePin = "Change PIN";
  static const String changePassword = "Change Password";
  static const String fingerprint = "Fingerprint";
  static const String faceId = "Face ID";
  static const String privacy = "Privacy";
  static const String saveChangesButtonText = "Save Changes";
  static const String stayInformedMessage =
      "Stay informed and in control with personalized notifications. Choose the alerts you want to receive about your loans.";

  static const String manageYourNotifications = "Manage Your Notifications";

  static const String paymentsReceived = "Payments Received";

  static const String paymentConfirmation = "Payment Confirmation";

  static const String loanPaymentReminders = "Loan Payment Reminders";

  static const String accountChanges = "Account Changes";

  // **************************** Close Account Dialog ********************************************
  static const String closeAccountMessage =
      "Closing your account will delete your loan history and personal information. Ensure all loans and payments are settled before proceeding. Once closed, your account cannot be recovered.";
  static const String closeAccount = "Close Account";

  // **************************** Change Password Screen ********************************************
  static const String currentPassword = "Current Password";
  static const String newPassword = "New Password";
  static const String confirmNewPassword = "Confirm New Password";
  static const String starsHint = "********";

// **************************** Change Pin Screen ********************************************
  static const String currentPin = "Current Pin";
  static const String newPin = "New Pin";
  static const String confirmNewPin = "Confirm New Pin";

  // **************************** Language Selection Screen ********************************************
  static const String englishFlag = 'US';
  static const String englishName = 'English (US)';
  static const String frenchFlag = 'FR';
  static const String frenchName = 'Français';
  static const String spanishFlag = 'ES';
  static const String spanishName = 'Española';
  static const String germanFlag = 'DE';
  static const String germanName = 'Deutsch';
  static const String japaneseFlag = 'JP';
  static const String japaneseName = '日本語';
  static const String italianFlag = 'IT';
  static const String italianName = 'Italiano';
  static const String arabicFlag = 'SA';
  static const String arabicName = 'العربية';
  static const String ukrainianFlag = 'UA';
  static const String ukrainianName = 'українська';
  static const String turkishFlag = 'TR';
  static const String turkishName = 'Türkçe';
  static const String southKoreanFlag = 'KR';
  static const String southKoreanName = '한국어';

  // **************************** Notification Selection Screens ********************************************
  static const String yesterdayText = "Yesterday";
  static const String loanRepaymentWarningTitle = "Loan Repayment Warning";
  static const String loanRepaymentWarningDescription =
      "Your loan repayment is due on 30/9/2024. Please ensure payment is made to avoid any penalties.";
  static const String loanRepaymentWarningTimestamp = "Today, 03:35 PM";
  static const String loanApplicationViewsTitle = "Loan Application Views";
  static const String loanApplicationViewsDescription =
      "Congratulations! Your loan application was viewed by 2 providers.";
  static const String loanApplicationViewsTimestamp = "Today, 06:35 AM";
  static const String newBankCardTitle = "New Bank Card";
  static const String newBankCardDescription =
      "Your bank card has been added successfully";
  static const String newBankCardTimestamp = "Yesterday, 02:35 PM";
  static const String paymentSuccessfulTitle = "Payment Successful";
  static const String paymentSuccessfulDescription =
      "Your loan repayment has been successfully processed. Thank you!";
  static const String paymentSuccessfulTimestamp = "Yesterday, 08:35 PM";
  static const String payButtonText = "Pay";

  // **************************** Apply For Loan Screens ********************************************
  static const applyForLoanTitle = "Apply For a Loan";
  static const loanDetailsTitle = "Loan Details";
  static const loanAmountLabel = "Loan Amount";
  static const loanAmountValue = "SAR 3,450.99";
  static const minLoanAmount = "SAR 100";
  static const maxLoanAmount = "SAR 5000";
  static const loanTermLabel = "Loan Term";
  static const loanTermValue = "12 Days";
  static const minLoanTerm = "7 Days";
  static const maxLoanTerm = "30 Days";
  static const contractTaxPercentage = "Contract Tax Percentage";
  static const contractTaxPercentageValue = "20%";
  static const contractTaxPrice = "Contract Tax Price";
  static const contractTaxPriceValue = "SAR 800.00";
  static const totalDueLabel = "Total Due";
  static const totalDueValue = "SAR 3,950.00";
  static const notesTitle = "Notes:";
  static const note1 = "your loan must be repaid by the agreed-upon due date.";
  static const note2 =
      "Timely repayment helps you avoid penalties and maintain a good credit standing.";
  static const note3 =
      "Keep your payment methods up to date, to avoid any disruptions in your repayment process.";
  static const applyButtonText = "Apply";
  static const String goToHomepage = "Go to Homepage";
  static const String loanApplicationSuccess =
      "Your loan application has been applied successfully and will be sent to our verified providers.";

  // **************************** Wallet For Loan Screens ********************************************
  static const String walletTitle = "Wallet";
  static const String balanceAmount = 'SAR 12,450.99';
  static const String increasePercentage = '+2.35% from last week ';
  static const String loanAppliedNote = '(2 loans applied)';
  static const String withdraw = "Withdraw";
  static const String deposit = "Deposit";
  static const String transactionsTitle = 'Transactions';
  static const String personalLoan = 'Personal Loan';
  static const String successful = 'Successful';
  static const String dateFirstTransaction = '17 September, 14:23 PM';
  static const String dateSecondTransaction = '16 September, 10:00 AM';
  static const String transactionTypeAll = 'All';
  static const String transactionTypeLoans = 'Loans';
  static const String transactionTypeDeposits = 'Deposits';
  static const String transactionTypeWithdraw = 'Withdraw';

  // **************************** Withdraw and Deposit Screens ********************************************

  static const String bankName1 = 'Saudi Awwal Bank (SAB)';
  static const String bankNumber1 = '**** 4210';
  static const String bankName2 = 'National Commercial Bank';
  static const String bankNumber2 = '**** 1234';
  static const String bankName3 = 'Al Rajhi Bank';
  static const String bankNumber3 = '**** 5678';
  static const String slideToWithdraw = 'Slide to Withdraw';
  static const String slideToDeposit = 'Slide to Deposit';
  static const String setAmount = 'Set Amount';
  static const String withdrawPrompt = 'How much would you like to withdraw?';
  static const String amountDisplay = '2,000 SAR';
  static const String smallAmountDisplay = '500 SAR';
  static const String enterPinTitle = 'Please Enter your PIN';
  static const String enterPinDescription =
      'Enter your 4-digits PIN to complete the Process';
  static const String forgotPin = 'Forgot your PIN?';
  static const String enterPinButton = 'Enter PIN';
  static const String selectCard = 'Select Card';
  static const String depositSuccess =
      "Your deposit has been successfully processed. The funds have been added to your account balance. Thank you for choosing our service!";
  static const String withdrawSuccess =
      "Your withdrawal has been successfully processed. The funds will be transferred to your account shortly. Thank you for choosing our service!";
  static const String setAmountText = 'Set Amount';
  static const String withdrawQuestionText =
      'How much would you like to withdraw?';
  static const String withdrawAmountText = '2,000 SAR';
  static const String smallWithdrawAmountText = '500 SAR';

  // **************************** Manage Cards Screen ********************************************

  static const defaultCard = "Default Card";
  static const setAsDefault = "Set as Default";
  static const editCard = "Edit Card";
  static const deleteCard = "Delete Card";
  static const addNewBankCard = "Add New Bank Card";

  // **************************** Add New Bank Card Screen ********************************************

  static const String addNewBankCardTitle = "Add New Bank Card";
  static const String cardNumber = "Card Number";
  static const String cardNumberHint = "2123 8976 1241 1490";
  static const String cardHolderName = "Card Holder Name";
  static const String cardHolderNameHint = "Ahmed Adel";
  static const String expirationDate = "Expiration Date";
  static const String expirationDateHint = "MM/YY";
  static const String cvv = "CVV";
  static const String cvvHint = "123";
  static const String setCardAsDefault = "Set Card as Default";
  static const String addCardButton = "Add Card";
  static const String cardAddedSuccessMessage =
      "Your card has been successfully added to your account. You're now ready to use it for transactions.";

  // **************************** My Loans Screen ********************************************
  static const loanDueDate1 = "5 October 2024";
  static const loanBalance1 = '1500 SAR';
  static const loanId1 = '89YHF2-YG232';
  static const loanStartingDate1 = '28 September 2024';
  static const loanStatus1 = 'Active';
  static const loanDaysRemaining1 = '2 Days';
  static const repayLoanButton = 'Repay Loan';
  static const loanDueDate2 = "10 October 2024";
  static const loanBalance2 = '2500 SAR';
  static const loanId2 = '12ABC3-DE456';
  static const loanStartingDate2 = '15 September 2024';
  static const loanStatus2 = 'Completed';
  static const loanDaysRemaining2 = '0 Days';
  static const viewDetailsButton = 'View Details';

  static const loanBalance = 'Loan Balance';
  static const loanId = 'Loan ID';
  static const startingDate = 'Starting Date';
  static const dueDate = 'Due Date';
  static const loanStatus = 'Loan Status';
  static const daysRemaining = 'Days Remaining';
  static const myLoans = "My Loans";
  static const loanTypeAll = "All";
  static const loanTypeActive = "Active";
  static const loanTypeRepaid = "Repaid";
  static const loanTypeDefaulted = "Defaulted";

  // **************************** Loan Repayment Screen ********************************************
  static const loanRepaymentTitle = "Loan Repayment";
  static const eWalletTabTitle = "E-Wallet";
  static const debitCardTabTitle = "Debit Card";
  static const currentBalanceText = "Current Balance";
  static const depositToWalletText = "Deposit to Wallet";

  static const paymentSummary = "Payment summary";
  static const loanAmount = "Loan Amount";
  static const totalAmount = "Total Amount";
  static const slideToRepay = "Slide to Repay";

  // **************************** Payment Done Screen ********************************************
  static const paymentSuccessful = "Payment Successful!";
  static const thankYouMessage = "Thank you for repaying your loan in time.";

  // **************************** Easy Fuel Screens ********************************************

  static const searchHintText = "Search for your location..";
  static const howItWorks = "How it works?";
  static const detectStation =
      "Use our map to detect your nearest station supporting Easy payments.";
  static const driveToStation =
      "Drive to the station and ask them to use Easy App for payment.";
  static const scanQRCode =
      "Click the Scan QR Code Button and pay with your wallet balance.";
  static const getStarted = "Get Started";
  static const detectNearestStation = "Detect Nearest Station";
  static const detectingNearestStation = "Detecting Nearest Station";
  static const String stationName = 'NAFT Gas Station';
  static const String stationAddress = 'Ibn Sinan Al Khafaji, Al-Safa, Jeddah 23456, Saudi Arabia';
  static const String stationPhone = '+966 19 712 7810';
  static const String stationHours = 'Open 24 Hours';
  static const String scanQrButtonText = "Scan QR Code";
  static const String setDirectionsButtonText = "Set Directions";
}
