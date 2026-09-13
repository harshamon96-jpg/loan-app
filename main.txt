import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const LoanApp());
}

class LoanApp extends StatelessWidget {
  const LoanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Loan Seva',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E3A8A)),
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _amountController = TextEditingController();
  final _cityController = TextEditingController();
  String _selectedType = 'Personal Loan';

  final String myWhatsAppNumber = "919876543210";
  final String bankSathiLink = "https://banksathi.com";
  final String voltMoneyLink = "https://voltmoney.com";

  Future<void> _openUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Error opening URL');
    }
  }

  void _submitLead() {
    final name = _nameController.text.trim();
    final phone = _phoneController.text.trim();
    final amount = _amountController.text.trim();
    final city = _cityController.text.trim();

    if (name.isEmpty || phone.isEmpty || amount.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Kripya Naam, Mobile aur Amount bharein!')),
      );
      return;
    }

    final message = " *Nayi Loan Application:*\n\n"
        " *Naam:* $name\n"
        " *Mobile:* $phone\n"
        " *Area/City:* ${city.isEmpty ? 'N/A' : city}\n"
        "️ *Loan Type:* $_selectedType\n"
        " *Amount Chahiye:* ₹$amount\n\n"
        "_Kripya eligibility check karein._";

    final whatsappUrl = "https://wa.me/$myWhatsAppNumber?text=${Uri.encodeComponent(message)}";
    _openUrl(whatsappUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital Loan Services', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF1E3A8A),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 0,
              color: Colors.blue.shade50,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Icon(Icons.verified_user_rounded, color: Color(0xFF1E3A8A), size: 36),
                    SizedBox(height: 6),
                    Text('Instant Loan Assistance Hub', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('100% Online • Zero Upfront Fee • Fast Disbursal', style: TextStyle(fontSize: 11, color: Colors.black54)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Customer Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            const SizedBox(height: 10),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Poora Naam (As per PAN)',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _cityController,
              decoration: const InputDecoration(
                labelText: 'Shahar / Area Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.location_on),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Kitna Loan Chahiye (₹)',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.currency_rupee),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: _selectedType,
              decoration: const InputDecoration(
                labelText: 'Loan Category',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.category),
                filled: true,
                fillColor: Colors.white,
              ),
              items: const [
                DropdownMenuItem(value: 'Personal Loan', child: Text('Personal Loan')),
                DropdownMenuItem(value: 'Business Loan', child: Text('Business Loan (MSME / Shop)')),
                DropdownMenuItem(value: 'Loan Against Mutual Funds', child: Text('Loan Against Mutual Funds')),
                DropdownMenuItem(value: 'Credit Card', child: Text('Credit Card Apply')),
              ],
              onChanged: (val) => setState(() => _selectedType = val!),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _submitLead,
              icon: const Icon(Icons.send, color: Colors.white),
              label: const Text('Direct Apply Karein (WhatsApp)', style: TextStyle(color: Colors.white, fontSize: 16)),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF16A34A),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            const SizedBox(height: 22),
            const Divider(),
            const SizedBox(height: 10),
            const Text('Instant Partner Links', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            const SizedBox(height: 10),
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              leading: const Icon(Icons.account_balance, color: Colors.blue),
              title: const Text('BankSathi Loan Portal', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
              subtitle: const Text('20+ Banks: HDFC, Axis, Bajaj', style: TextStyle(fontSize: 11)),
              trailing: const Icon(Icons.arrow_forward_ios, size: 14),
              onTap: () => _openUrl(bankSathiLink),
            ),
            const SizedBox(height: 8),
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              leading: const Icon(Icons.trending_up, color: Colors.orange),
              title: const Text('Volt Money (Mutual Fund Loan)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
              subtitle: const Text('Fast Disbursal • No Income Proof', style: TextStyle(fontSize: 11)),
              trailing: const Icon(Icons.arrow_forward_ios, size: 14),
              onTap: () => _openUrl(voltMoneyLink),
            ),
          ],
        ),
      ),
    );
  }
}

