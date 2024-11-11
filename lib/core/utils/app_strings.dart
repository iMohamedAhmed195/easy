class AppStrings {
  AppStrings._internal();
  static final AppStrings _instance = AppStrings._internal();
  factory AppStrings() => _instance;
  //! Using a factory constructor (AppStrings._internal()) is a way to create a
  //! singleton, ensuring that there is only one instance of AppStrings.
  final String selectPreferredLanguage = 'Select Preferred Language';
  final String arabic = 'العربية';
  final String english = 'English (US)';
  final String select = 'Select';
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
  final String currentBalance = 'Current Balance';
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
  final String manageCards = 'Manage Cards';
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
  final String congratulations = 'Congratulations!';
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
  final String notifications = "notifications";

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
  static const String chatSupportTitle = "Chat Support";
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
}
