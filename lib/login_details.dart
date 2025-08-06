import 'package:flutter/material.dart';

void main() {
  runApp(const MyFormApp());
}

class MyFormApp extends StatelessWidget {
  const MyFormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entry Form',
      debugShowCheckedModeBanner: false,
      home: const InputExample(),
    );
  }
}

class InputExample extends StatefulWidget {
  const InputExample({super.key});

  @override
  State<InputExample> createState() => _InputExampleState();
}

class _InputExampleState extends State<InputExample> {
  // Checkbox state
  bool isChecked = false;

  // Radio button state
  String selectedGender = 'Male';

  // Dropdown state
  String selectedCountry = 'Nigeria';

  // Switch state
  bool isSwitched = false;

  // TextField controller
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Inputs Example')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            // TextField
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Checkbox
            CheckboxListTile(
              title: const Text('Accept Terms and Conditions'),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            const SizedBox(height: 20),

            // Radio buttons
            const Text('Select Gender:'),
            ListTile(
              title: const Text('Male'),
              leading: Radio(
                value: 'Male',
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Female'),
              leading: Radio(
                value: 'Female',
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value!;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),

            // Dropdown
            const Text('Select Country:'),
            DropdownButton<String>(
              value: selectedCountry,
              items: ['Nigeria', 'USA', 'UK', 'Ghana']
                  .map(
                    (country) =>
                        DropdownMenuItem(value: country, child: Text(country)),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedCountry = value!;
                });
              },
            ),
            const SizedBox(height: 20),

            // Switch
            SwitchListTile(
              title: const Text('Enable Notifications'),
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            const SizedBox(height: 30),

            // Submit Button
            ElevatedButton(
              onPressed: () {
                String summary =
                    '''
Name: ${nameController.text}
Accepted Terms: ${isChecked ? "Yes" : "No"}
Gender: $selectedGender
Country: $selectedCountry
Notifications: ${isSwitched ? "Enabled" : "Disabled"}
''';
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('Summary'),
                    content: Text(summary),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Close'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}