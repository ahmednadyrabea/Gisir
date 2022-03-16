import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gesr/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Help extends StatelessWidget {
  static final String title = 'تواصل معانا';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controllerTo = TextEditingController(text: 'jisir2022@gmail.com');
  final controllerSubject = TextEditingController(text: '');
  final controllerMessage = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: color1,
          title: Text(Help.title),
          centerTitle: true,
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                buildTextField(title: 'الى', controller: controllerTo),
                const SizedBox(height: 16),
                buildTextField(title: 'العنوان', controller: controllerSubject),
                const SizedBox(height: 16),
                buildTextField(
                  title: 'الرسالة',
                  controller: controllerMessage,
                  maxLines: 8,
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: color1,
                    minimumSize: Size.fromHeight(50),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text('ارسال'),
                  onPressed: () => launchEmail(
                    toEmail: controllerTo.text,
                    subject: controllerSubject.text,
                    message: controllerMessage.text,
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Future launchEmail({
    required String toEmail,
    required String subject,
    required String message,
  }) async {
    final url =
        'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';

    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  Widget buildTextField({
    required String title,
    required TextEditingController controller,
    int maxLines = 1,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            maxLines: maxLines,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ],
      );
}
