import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const FinProductHubApp());
}

class FinProductHubApp extends StatelessWidget {
  const FinProductHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinanceHub India',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E3A8A),
          primary: const Color(0xFF1E3A8A),
          secondary: const Color(0xFF0D9488),
          surface: const Color(0xFFF8FAFC),
        ),
        fontFamily: 'Roboto',
      ),
      home: const SplashScreen(),
    );
  }
}

enum ProductCategory { creditCard, personalLoan }

class FinancialProduct {
  final String id;
  final String name;
  final String issuer;
  final String logoUrl;
  final ProductCategory category;
  final String headline;
  final List<String> keyBenefits;
  final String feeOrInterest;
  final String eligibility;
  final List<String> requiredDocs;
  final String applyUrl;
  final String? badgeText;

  FinancialProduct({
    required this.id,
    required this.name,
    required this.issuer,
    required this.logoUrl,
    required this.category,
    required this.headline,
    required this.keyBenefits,
    required this.feeOrInterest,
    required this.eligibility,
    required this.requiredDocs,
    required this.applyUrl,
    this.badgeText,
  });
}

final List<FinancialProduct> financialProductsCatalog = [
  // ==================== 10 CREDIT CARDS ====================
  FinancialProduct(
    id: 'cc_1',
    name: 'Axis Bank MyZone Credit Card',
    issuer: 'Axis Bank',
    logoUrl: 'https://companieslogo.com/img/orig/AXISBANK.BO-8f615301.png',
    category: ProductCategory.creditCard,
    headline: 'Ideal for entertainment, dining & UPI payments',
    keyBenefits: [
      'Flat ₹120 off on Swiggy on min orders of ₹500',
      'Buy 1 Get 1 Free on movie tickets via District/Paytm Movies',
      'Complimentary domestic airport lounge access',
      'RuPay variant available for direct UPI payments',
    ],
    feeOrInterest: 'Annual Fee: ₹500 + GST (Waived on ₹1.5L spends)',
    eligibility: 'Salaried / Self-Employed | Age: 21-65 yrs | Min Income: ₹25,000/mo',
    requiredDocs: ['PAN Card', 'Address Proof', 'Salary Slips / ITR'],
    applyUrl: 'https://bitli.in/jv53q08',
    badgeText: 'Popular UPI Card',
  ),
  FinancialProduct(
    id: 'cc_2',
    name: 'SBI Cashback Credit Card',
    issuer: 'SBI Card',
    logoUrl: 'https://companieslogo.com/img/orig/SBIN.NS-7e289c49.png',
    category: ProductCategory.creditCard,
    headline: 'Flat 5% cashback on online spends',
    keyBenefits: [
      '5% Cashback on online merchant purchases',
      '1% Cashback on offline spends',
      'Auto-credit cashback into statement balance',
      '1% Fuel surcharge waiver',
    ],
    feeOrInterest: 'Joining & Annual Fee: ₹999 + GST (Waived on ₹2L spends)',
    eligibility: 'Age: 21-65 yrs | CIBIL: 720+ | Min Income: ₹30,000/mo',
    requiredDocs: ['PAN Card', 'Address Proof', 'Bank Statements'],
    applyUrl: 'https://bitli.in/y04ENvz',
    badgeText: '5% Cashback',
  ),
  FinancialProduct(
    id: 'cc_3',
    name: 'Axis Bank Indian Oil Credit Card',
    issuer: 'Axis Bank',
    logoUrl: 'https://companieslogo.com/img/orig/AXISBANK.BO-8f615301.png',
    category: ProductCategory.creditCard,
    headline: 'Save up to 4% value back on fuel at IndianOil',
    keyBenefits: [
      '4% value back as reward points at Indian Oil outlets',
      '1% Fuel surcharge waiver on transactions ₹200-₹5000',
      '1% value back on online shopping',
      'Discount on BookMyShow movie tickets',
    ],
    feeOrInterest: 'Joining Fee: ₹500 (Waived on ₹50,000 annual spend)',
    eligibility: 'Salaried & Self-Employed | Age: 21-65 yrs | CIBIL: 700+',
    requiredDocs: ['PAN Card', 'Identity Proof', 'Income Proof'],
    applyUrl: 'https://bitli.in/jv53q08',
    badgeText: 'Fuel Saver',
  ),
  FinancialProduct(
    id: 'cc_4',
    name: 'RBL Bank Shoprite Credit Card',
    issuer: 'RBL Bank',
    logoUrl: 'https://companieslogo.com/img/orig/RBLBANK.NS-99b828a5.png',
    category: ProductCategory.creditCard,
    headline: 'Zero annual fee card for grocery shopping & movie rewards',
    keyBenefits: [
      'Lifetime Free offer for eligible applicants',
      '20 Reward Points per ₹100 spent on Groceries',
      '10% discount on BookMyShow tickets',
      '1 Reward Point per ₹100 on other spends',
    ],
    feeOrInterest: 'Joining & Annual Fee: Lifetime Free / Nil',
    eligibility: 'Age: 21-65 yrs | CIBIL: 680+ | Salaried / Self-Employed',
    requiredDocs: ['PAN Card', 'Address Proof', 'Recent Photo'],
    applyUrl: 'https://bitli.in/gnn9nk5',
    badgeText: 'Lifetime Free',
  ),
  FinancialProduct(
    id: 'cc_5',
    name: 'Kiwi UPI RuPay Credit Card',
    issuer: 'Kiwi / Axis Bank',
    logoUrl: 'https://companieslogo.com/img/orig/AXISBANK.BO-8f615301.png',
    category: ProductCategory.creditCard,
    headline: 'Scan & Pay via UPI with virtual credit card',
    keyBenefits: [
      'Scan any merchant QR code & pay directly via UPI',
      'Up to 2% flat cashback on UPI transactions',
      '100% digital instant approval and virtual issuance',
      'Zero joining fee & zero annual fee',
    ],
    feeOrInterest: 'Lifetime Free (Zero Annual Charges)',
    eligibility: 'Age: 21-55 yrs | Valid PAN & mobile | CIBIL: 650+',
    requiredDocs: ['PAN Card', 'Paperless Instant Digital e-KYC'],
    applyUrl: 'https://bitli.in/whEK3co',
    badgeText: 'Instant UPI Card',
  ),
  FinancialProduct(
    id: 'cc_6',
    name: 'HDFC Bank IRCTC Credit Card',
    issuer: 'HDFC Bank',
    logoUrl: 'https://companieslogo.com/img/orig/HDB-642cf326.png',
    category: ProductCategory.creditCard,
    headline: 'Train ticket savings & railway lounge visits',
    keyBenefits: [
      'Up to 5% cashback on train tickets via IRCTC app',
      'Complimentary access to select Executive Railway Lounges',
      '1% transaction charge waiver on IRCTC',
      '₹500 IRCTC welcome voucher on activation',
    ],
    feeOrInterest: 'Annual Fee: ₹500 + GST (Waived on ₹1.5L spends)',
    eligibility: 'Age: 21-60 yrs | Min Income: ₹25,000/mo | CIBIL: 700+',
    requiredDocs: ['PAN Card', 'Address Proof', 'Salary Slips'],
    applyUrl: 'https://bitli.in/oekzuQt',
    badgeText: 'Train Travel',
  ),
  FinancialProduct(
    id: 'cc_7',
    name: 'SBI SimplyCLICK Credit Card',
    issuer: 'SBI Card',
    logoUrl: 'https://companieslogo.com/img/orig/SBIN.NS-7e289c49.png',
    category: ProductCategory.creditCard,
    headline: '10X reward multipliers on major online platforms',
    keyBenefits: [
      '10X Reward Points on Amazon, BookMyShow, Cleartrip & Swiggy',
      '5X Reward Points on all other online spends',
      '₹500 Amazon Gift Card as welcome benefit',
      'Milestone travel e-vouchers up to ₹4,000 yearly',
    ],
    feeOrInterest: 'Joining & Annual: ₹499 + GST (Waived on ₹1L spends)',
    eligibility: 'Salaried: ₹25k/mo | Self-Employed: ₹4.8L ITR | CIBIL: 720+',
    requiredDocs: ['PAN Card', 'Address Proof', 'Salary Slip / ITR'],
    applyUrl: 'https://bitli.in/y04ENvz',
    badgeText: 'Online Spends',
  ),
  FinancialProduct(
    id: 'cc_8',
    name: 'SBI SimplySAVE Credit Card',
    issuer: 'SBI Card',
    logoUrl: 'https://companieslogo.com/img/orig/SBIN.NS-7e289c49.png',
    category: ProductCategory.creditCard,
    headline: 'High rewards on daily essentials, groceries & dining',
    keyBenefits: [
      '10 Reward Points per ₹150 on Dining, Movies & Groceries',
      'Welcome bonus 2,000 reward points (worth ₹500)',
      '1% Fuel Surcharge Waiver',
      'Emergency card replacement facility worldwide',
    ],
    feeOrInterest: 'Joining & Annual: ₹499 + GST (Waived on ₹1L spends)',
    eligibility: 'Age: 21-65 yrs | Min Income: ₹30,000/mo',
    requiredDocs: ['PAN Card', 'Address Proof', 'Income Proof'],
    applyUrl: 'https://bitli.in/f3fwpwO',
    badgeText: 'Daily Essentials',
  ),
  FinancialProduct(
    id: 'cc_9',
    name: 'BOBCARD Eterna Credit Card',
    issuer: 'Bank of Baroda',
    logoUrl: 'https://companieslogo.com/img/orig/BANKBARODA.BO-d2bbdae3.png',
    category: ProductCategory.creditCard,
    headline: 'Premium card with unlimited domestic lounge access',
    keyBenefits: [
      'First Year Free welcome program',
      'Unlimited complimentary domestic airport lounge access',
      '15 Reward Points per ₹100 on dining & travel',
      'Buy 1 Get 1 free movie tickets every month via District app',
    ],
    feeOrInterest: 'First Year Free (Renewal: ₹2,499; Waived on ₹2.5L spends)',
    eligibility: 'Age: 21-65 yrs | Annual Income: ₹12L/yr | CIBIL: 650+',
    requiredDocs: ['PAN Card', 'Address Proof', 'Salary Slips / ITR'],
    applyUrl: 'https://bitli.in/2icw2gT',
    badgeText: 'Lounge Access',
  ),
  FinancialProduct(
    id: 'cc_10',
    name: 'BOBCARD Classic / Platinum',
    issuer: 'Bank of Baroda',
    logoUrl: 'https://companieslogo.com/img/orig/BANKBARODA.BO-d2bbdae3.png',
    category: ProductCategory.creditCard,
    headline: 'Dependable card with merchant savings & easy EMI',
    keyBenefits: [
      'Reward points redeemable for shopping & travel',
      '1% fuel surcharge waiver',
      'Easy 1-click EMI conversion options',
      'Complimentary accidental insurance coverage',
    ],
    feeOrInterest: 'Nominal joining fee with milestone waivers',
    eligibility: 'Age: 21-65 yrs | Salaried & Self-Employed | CIBIL: 650+',
    requiredDocs: ['PAN Card', 'Address Proof', 'Bank Statements'],
    applyUrl: 'https://bitli.in/gnn9nk5',
    badgeText: 'Everyday Value',
  ),

  // ==================== 13 PERSONAL LOANS ====================
  FinancialProduct(
    id: 'loan_1',
    name: 'Axis Bank Personal Loan',
    issuer: 'Axis Bank',
    logoUrl: 'https://companieslogo.com/img/orig/AXISBANK.BO-8f615301.png',
    category: ProductCategory.personalLoan,
    headline: 'High ticket personal loans up to ₹40 Lakhs',
    keyBenefits: [
      'Borrow from ₹50,000 up to ₹40 Lakhs',
      'Interest rates starting from 9.99% p.a.',
      'Flexible tenure up to 84 months',
      'Balance transfer facility available',
    ],
    feeOrInterest: 'Interest: From 9.99% p.a. | Tenure: Up to 84 mos',
    eligibility: 'Salaried | Age: 21-60 yrs | Income: ₹30k/mo | CIBIL: 700+',
    requiredDocs: ['PAN Card', 'Address Proof', '3 Mos Salary Slips'],
    applyUrl: 'https://bitli.in/jv53q08',
    badgeText: 'Up to ₹40 Lakhs',
  ),
  FinancialProduct(
    id: 'loan_2',
    name: 'Poonawalla Fincorp Personal Loan',
    issuer: 'Poonawalla Fincorp',
    logoUrl: 'https://companieslogo.com/img/orig/POONAWALLA.NS-1811805b.png',
    category: ProductCategory.personalLoan,
    headline: '100% digital journey with zero foreclosure charges',
    keyBenefits: [
      'Instant digital approval up to ₹15 Lakhs',
      'Zero prepayment and zero foreclosure charges',
      'Interest starting from 11.50% p.a.',
      'Paperless online processing',
    ],
    feeOrInterest: 'Interest: From 11.50% p.a. | Tenure: Up to 84 mos',
    eligibility: 'Age: 24-55 yrs | Min Income: ₹3L/yr | CIBIL: 720+',
    requiredDocs: ['PAN Card', 'Address Proof'],
    applyUrl: 'https://bitli.in/ADi9XMg',
    badgeText: 'Zero Foreclosure',
  ),
  FinancialProduct(
    id: 'loan_3',
    name: 'Bajaj Finserv Personal Loan',
    issuer: 'Bajaj Finserv',
    logoUrl: 'https://companieslogo.com/img/orig/BAJAJFINSV.NS-826a7e58.png',
    category: ProductCategory.personalLoan,
    headline: 'High funding up to ₹55 Lakhs with Flexi facility',
    keyBenefits: [
      'Sanctioned loan amount up to ₹55 Lakhs',
      'Flexi facility: Pay interest solely on amount used',
      'Flexible tenure up to 96 months',
      'Fast direct bank account disbursement',
    ],
    feeOrInterest: 'Interest: From 11.00% p.a. | Tenure: Up to 96 mos',
    eligibility: 'Salaried | Age: 25-57 yrs | Min Income: ₹35k/mo | CIBIL: 685+',
    requiredDocs: ['PAN Card', 'Address Proof', 'Bank Statements'],
    applyUrl: 'https://bitli.in/hsuwdq4',
    badgeText: 'Flexi Overdraft',
  ),
  FinancialProduct(
    id: 'loan_4',
    name: 'Tata Capital Personal Loan',
    issuer: 'Tata Capital',
    logoUrl: 'https://companieslogo.com/img/orig/TATACONSUM.NS-5527ca3d.png',
    category: ProductCategory.personalLoan,
    headline: 'Instant loan backed by Tata Trust',
    keyBenefits: [
      'Personal loan and overdraft up to ₹35 Lakhs',
      'Interest rates starting from 10.99% p.a.',
      'Flexible tenure up to 84 months',
      'Seamless balance transfer facility',
    ],
    feeOrInterest: 'Interest: From 10.99% p.a. | Tenure: Up to 84 mos',
    eligibility: 'Salaried | Age: 21-58 yrs | Min Income: ₹25k/mo | CIBIL: 725+',
    requiredDocs: ['PAN Card', 'Address Proof', '3 Mos Bank Statements'],
    applyUrl: 'https://bitli.in/XU9d9v1',
    badgeText: 'Low ROI 10.99%',
  ),
  FinancialProduct(
    id: 'loan_5',
    name: 'HDFC Bank Personal Loan',
    issuer: 'HDFC Bank',
    logoUrl: 'https://companieslogo.com/img/orig/HDB-642cf326.png',
    category: ProductCategory.personalLoan,
    headline: 'Maximum loan disbursal up to ₹75 Lakhs',
    keyBenefits: [
      'Disbursal capacity up to ₹75 Lakhs',
      'Interest starting from 9.99% p.a.',
      'Instant disbursal for pre-approved holders',
      'Tenure up to 84 months',
    ],
    feeOrInterest: 'Interest: From 9.99% p.a. | Tenure: Up to 84 mos',
    eligibility: 'Salaried | Age: 21-60 yrs | Income: ₹30k/mo | CIBIL: 700+',
    requiredDocs: ['PAN Card', 'Address Proof', 'Salary Slips'],
    applyUrl: 'https://bitli.in/oekzuQt',
    badgeText: 'Up to ₹75 Lakhs',
  ),
  FinancialProduct(
    id: 'loan_6',
    name: 'Olyv Instant Personal Loan',
    issuer: 'Olyv',
    logoUrl: 'https://companieslogo.com/img/orig/AXISBANK.BO-8f615301.png',
    category: ProductCategory.personalLoan,
    headline: 'Quick digital credit up to ₹2 Lakhs',
    keyBenefits: [
      'Instant loans up to ₹2,00,000',
      '100% Mobile paperless journey',
      'Open to Salaried and Self-Employed',
      'Quick direct bank transfer',
    ],
    feeOrInterest: 'Competitive rates | Flexible short tenure',
    eligibility: 'Age: 21-45 yrs | Min Income: ₹20k/mo | CIBIL: 680+',
    requiredDocs: ['PAN Card', 'Address Proof', 'Bank Statements'],
    applyUrl: 'https://bitli.in/oToYr46',
    badgeText: 'Instant ₹2 Lakhs',
  ),
  FinancialProduct(
    id: 'loan_7',
    name: 'Prefr Instant Personal Loan',
    issuer: 'Prefr Loans',
    logoUrl: 'https://companieslogo.com/img/orig/BAJAJFINSV.NS-826a7e58.png',
    category: ProductCategory.personalLoan,
    headline: '24x7 digital lending access with Account Aggregator',
    keyBenefits: [
      'Digital loan up to ₹3,00,000',
      'Fast automated approval via RBI Account Aggregator',
      'Open for salaried and self-employed',
      'Flexible repayment options',
    ],
    feeOrInterest: 'Transparent digital processing',
    eligibility: 'Age: 22-55 yrs | Min Income: ₹25k/mo | CIBIL: 725+',
    requiredDocs: ['PAN Card', 'Digital Account Aggregator / Pay Slips'],
    applyUrl: 'https://bitli.in/98YszFL',
    badgeText: '24x7 Access',
  ),
  FinancialProduct(
    id: 'loan_8',
    name: 'Zype Instant Personal Loan',
    issuer: 'Zype Lending',
    logoUrl: 'https://companieslogo.com/img/orig/RBLBANK.NS-99b828a5.png',
    category: ProductCategory.personalLoan,
    headline: 'Instant 60-second credit line up to ₹1.5 Lakhs',
    keyBenefits: [
      'Line of credit up to ₹1,50,000 in 60 seconds',
      'Zero physical paperwork required',
      'Zero foreclosure fees on early payback',
      'Repayment from 6 to 12 months',
    ],
    feeOrInterest: 'Zero Foreclosure Fee',
    eligibility: 'Salaried Only | Age: 21-50 yrs | Income: ₹20k/mo | CIBIL: 650+',
    requiredDocs: ['Paperless - Instant mobile verification'],
    applyUrl: 'https://bitli.in/cXtTNIP',
    badgeText: '60-Sec Approval',
  ),
  FinancialProduct(
    id: 'loan_9',
    name: 'MyEazyLoan Marketplace',
    issuer: 'MyEazyLoan Partners',
    logoUrl: 'https://companieslogo.com/img/orig/HDB-642cf326.png',
    category: ProductCategory.personalLoan,
    headline: 'Compare quotes from 6+ top banks in single check',
    keyBenefits: [
      'Compare HDFC, Axis, Bajaj, Tata Capital in one place',
      'Side-by-side comparison of interest rates & EMIs',
      'Avoid multiple hard CIBIL inquiries',
      'High approval rates',
    ],
    feeOrInterest: 'Starts from 9.99% p.a.',
    eligibility: 'Age: 18-60 yrs | Salaried & Self-Employed | CIBIL: 700+',
    requiredDocs: ['PAN Card', 'Address Proof', 'Bank Statements'],
    applyUrl: 'https://bitli.in/whEK3co',
    badgeText: 'Compare & Save',
  ),
  FinancialProduct(
    id: 'loan_10',
    name: 'Fibe Instant Personal Loan',
    issuer: 'Fibe',
    logoUrl: 'https://companieslogo.com/img/orig/SBIN.NS-7e289c49.png',
    category: ProductCategory.personalLoan,
    headline: 'Zero foreclosure charges with instant account crediting',
    keyBenefits: [
      'Personal loan up to ₹5,00,000',
      'Zero foreclosure fees - pay anytime',
      'Pay interest only on amount used',
      'Instant direct bank transfer',
    ],
    feeOrInterest: 'Interest from 20% p.a. | Up to 36 mos',
    eligibility: 'Salaried Only | Age: 19-55 yrs | Income: ₹20k/mo | CIBIL: 680+',
    requiredDocs: ['PAN Card', 'Bank Statements'],
    applyUrl: 'https://bitli.in/fle3BLs',
    badgeText: 'Zero Foreclosure',
  ),
  FinancialProduct(
    id: 'loan_11',
    name: 'Ram Fincorp Personal Loan',
    issuer: 'Ram Fincorp',
    logoUrl: 'https://companieslogo.com/img/orig/BANKBARODA.BO-d2bbdae3.png',
    category: ProductCategory.personalLoan,
    headline: 'Instant loan from ₹1,000 to ₹2 Lakhs with DigiLocker',
    keyBenefits: [
      'Micro-loans from ₹1,000 up to ₹2,00,000',
      'Fast 5-minute approval with instant disbursal',
      'No lock-in and zero foreclosure charges',
      '100% paperless via DigiLocker e-KYC',
    ],
    feeOrInterest: 'Zero prepayment penalty',
    eligibility: 'Salaried | Age: 18-58 yrs | Income: ₹18k/mo | CIBIL: 600+',
    requiredDocs: ['PAN Card', 'Address Proof (DigiLocker)', 'Bank Statements'],
    applyUrl: 'https://bitli.in/4g71y3b',
    badgeText: 'DigiLocker KYC',
  ),
  FinancialProduct(
    id: 'loan_12',
    name: 'ZapCash Instant Personal Loan',
    issuer: 'ZapCash',
    logoUrl: 'https://companieslogo.com/img/orig/POONAWALLA.NS-1811805b.png',
    category: ProductCategory.personalLoan,
    headline: 'Unsecured loan with low credit score or new-to-credit',
    keyBenefits: [
      'Accessible with CIBIL as low as 500 or no history',
      'Unsecured loan up to ₹50,000',
      'No collateral or guarantor required',
      'Quick app-based processing',
    ],
    feeOrInterest: 'Personalized interest rates',
    eligibility: 'Salaried & Self-Employed | Age: 21-60 yrs | CIBIL: 500+',
    requiredDocs: ['PAN Card', 'Bank Statements', 'Business Proof'],
    applyUrl: 'https://bitli.in/j4wOikD',
    badgeText: 'Low CIBIL (500+)',
  ),
  FinancialProduct(
    id: 'loan_13',
    name: 'CreditSea Personal Loan',
    issuer: 'CreditSea',
    logoUrl: 'https://companieslogo.com/img/orig/AXISBANK.BO-8f615301.png',
    category: ProductCategory.personalLoan,
    headline: 'Instant loan up to ₹2 Lakhs with zero prepayment charges',
    keyBenefits: [
      'Digital loan from ₹5,000 up to ₹2,00,000',
      'Approval in 5 minutes with low credit score (500+)',
      'Zero prepayment and zero foreclosure penalties',
      'Tenures from 3 to 36 months',
    ],
    feeOrInterest: 'Interest: 14% to 36% p.a. | Tenure: 3-36 mos',
    eligibility: 'Age: 22-50 yrs | Salaried (₹25k) & Self-Employed (₹50k) | CIBIL: 500+',
    requiredDocs: ['PAN Card', 'Address Proof (DigiLocker)', 'Bank Statements'],
    applyUrl: 'https://bitli.in/bq2aeAm',
    badgeText: 'Low CIBIL (500+)',
  ),
];

// ==================== SPLASH SCREEN ====================
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );

    _scaleAnimation = Tween<double>(begin: 0.82, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _controller.forward();

    Future.delayed(const Duration(milliseconds: 2800), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 600),
            pageBuilder: (context, animation, secondaryAnimation) =>
                const FinancialProductsHomeScreen(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E3A8A),
      body: Stack(
        children: [
          Center(
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 96,
                      height: 96,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.account_balance_wallet_rounded,
                          size: 54,
                          color: Color(0xFF1E3A8A),
                        ),
                      ),
                    ),
                    const SizedBox(height: 22),
                    const Text(
                      'FinanceHub India',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 0.6,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Verified Cards & Instant Credit Lines',
                      style: TextStyle(
                        fontSize: 13.5,
                        color: Colors.white70,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Column(
              children: [
                const SizedBox(
                  width: 22,
                  height: 22,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.2,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.amberAccent),
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.verified_user_rounded, color: Colors.white60, size: 15),
                    SizedBox(width: 6),
                    Text(
                      '100% Safe Official Bank Redirection',
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 11.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ==================== HOME SCREEN ====================
class FinancialProductsHomeScreen extends StatefulWidget {
  const FinancialProductsHomeScreen({super.key});

  @override
  State<FinancialProductsHomeScreen> createState() =>
      _FinancialProductsHomeScreenState();
}

class _FinancialProductsHomeScreenState
    extends State<FinancialProductsHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<FinancialProduct> _filter(ProductCategory category) {
    return financialProductsCatalog.where((p) {
      final matchesCategory = p.category == category;
      final query = _searchQuery.toLowerCase();
      final matchesSearch = p.name.toLowerCase().contains(query) ||
          p.issuer.toLowerCase().contains(query) ||
          p.headline.toLowerCase().contains(query);
      return matchesCategory && matchesSearch;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF1E3A8A),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'FinanceHub India',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
            Text(
              'Official Financial Products Portal',
              style: TextStyle(color: Colors.white70, fontSize: 11.5),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(112),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Container(
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    onChanged: (val) => setState(() => _searchQuery = val),
                    decoration: const InputDecoration(
                      hintText: 'Search cards, banks, or loans...',
                      hintStyle: TextStyle(fontSize: 13.5, color: Colors.black45),
                      prefixIcon: Icon(Icons.search, color: Color(0xFF1E3A8A), size: 20),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 9),
                    ),
                  ),
                ),
              ),
              TabBar(
                controller: _tabController,
                indicatorColor: Colors.amberAccent,
                indicatorWeight: 3.5,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white60,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                tabs: const [
                  Tab(icon: Icon(Icons.credit_card, size: 20), text: 'Credit Cards (10)'),
                  Tab(icon: Icon(Icons.account_balance_wallet, size: 20), text: 'Personal Loans (13)'),
                ],
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ProductListView(products: _filter(ProductCategory.creditCard)),
          ProductListView(products: _filter(ProductCategory.personalLoan)),
        ],
      ),
    );
  }
}

// ==================== LIST VIEW ====================
class ProductListView extends StatelessWidget {
  final List<FinancialProduct> products;

  const ProductListView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return const Center(
        child: Text(
          'No offers match your search.',
          style: TextStyle(color: Colors.black54, fontSize: 14),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCardItem(product: products[index]);
      },
    );
  }
}

// ==================== PRODUCT CARD ====================
class ProductCardItem extends StatelessWidget {
  final FinancialProduct product;

  const ProductCardItem({super.key, required this.product});

  Future<void> _openOfficialLink(BuildContext context, String urlString) async {
    final uri = Uri.parse(urlString);
    try {
      final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
      if (!launched && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not open bank portal.')),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error launching link: $e')),
        );
      }
    }
  }

  void _showDetailModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => ProductDetailSheet(
        product: product,
        onApply: () => _openOfficialLink(context, product.applyUrl),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isCard = product.category == ProductCategory.creditCard;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 1.2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => _showDetailModal(context),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8FAFC),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFE2E8F0)),
                    ),
                    child: Image.network(
                      product.logoUrl,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) => Icon(
                        isCard ? Icons.credit_card : Icons.account_balance,
                        color: const Color(0xFF1E3A8A),
                        size: 24,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0F172A),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          product.issuer,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF64748B),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (product.badgeText != null)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEFF6FF),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: const Color(0xFFBFDBFE)),
                      ),
                      child: Text(
                        product.badgeText!,
                        style: const TextStyle(
                          fontSize: 10.5,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1D4ED8),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                product.headline,
                style: const TextStyle(
                  fontSize: 12.5,
                  color: Color(0xFF334155),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Column(
                children: product.keyBenefits.take(2).map((b) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.check_circle, size: 14, color: Color(0xFF0D9488)),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            b,
                            style: const TextStyle(fontSize: 12, color: Color(0xFF475569)),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
              const Divider(height: 18, thickness: 0.8, color: Color(0xFFE2E8F0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          isCard ? 'FEE' : 'TERMS',
                          style: const TextStyle(
                            fontSize: 9.5,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF94A3B8),
                            letterSpacing: 0.5,
                          ),
                        ),
                        Text(
                          product.feeOrInterest,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 11.5,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF0F172A),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () => _openOfficialLink(context, product.applyUrl),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E3A8A),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      elevation: 0,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('Apply', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.5)),
                        SizedBox(width: 4),
                        Icon(Icons.arrow_forward, size: 13),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ==================== DETAIL MODAL SHEET ====================
class ProductDetailSheet extends StatelessWidget {
  final FinancialProduct product;
  final VoidCallback onApply;

  const ProductDetailSheet({super.key, required this.product, required this.onApply});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.82,
      maxChildSize: 0.94,
      minChildSize: 0.5,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: ListView(
            controller: scrollController,
            children: [
              Center(
                child: Container(
                  width: 38,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8FAFC),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFFE2E8F0)),
                    ),
                    child: Image.network(
                      product.logoUrl,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.account_balance,
                        color: Color(0xFF1E3A8A),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0F172A),
                          ),
                        ),
                        Text(
                          product.issuer,
                          style: const TextStyle(fontSize: 12.5, color: Color(0xFF64748B)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              _sectionTitle('Key Features & Benefits'),
              ...product.keyBenefits.map((b) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.check_circle_outline, size: 16, color: Color(0xFF0D9488)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            b,
                            style: const TextStyle(fontSize: 13, color: Color(0xFF334155)),
                          ),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(height: 16),
              _sectionTitle('Pricing / Charges'),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8FAFC),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xFFE2E8F0)),
                ),
                child: Text(
                  product.feeOrInterest,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0F172A),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              _sectionTitle('Eligibility Criteria'),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8FAFC),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xFFE2E8F0)),
                ),
                child: Text(
                  product.eligibility,
                  style: const TextStyle(fontSize: 12.5, color: Color(0xFF334155)),
                ),
              ),
              const SizedBox(height: 16),
              _sectionTitle('Documents Needed'),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: product.requiredDocs
                    .map((doc) => Chip(
                          label: Text(doc, style: const TextStyle(fontSize: 11.5)),
                          backgroundColor: const Color(0xFFEFF6FF),
                          side: const BorderSide(color: Color(0xFFBFDBFE)),
                          avatar: const Icon(Icons.description, size: 15, color: Color(0xFF1D4ED8)),
                        ))
                    .toList(),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    onApply();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E3A8A),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text(
                    'Apply on Official Bank Website',
                    style: TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 13.5,
          fontWeight: FontWeight.bold,
          color: Color(0xFF0F172A),
          letterSpacing: 0.3,
        ),
      ),
    );
  }
}

                          
