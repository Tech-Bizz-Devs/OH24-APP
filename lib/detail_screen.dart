import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatefulWidget {
  final String qrResult;

  const DetailScreen({required this.qrResult, super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late bool isCopied;

  @override
  void initState() {
    super.initState();
    isCopied = false;
  }

  Future<void> _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: widget.qrResult));
    setState(() {
      isCopied = true;
    });
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Copied to clipboard!",
          style: TextStyle(
            letterSpacing: 2,
          )),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(30), // Adjust margin as needed
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "QR Details",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 40),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text("Scan Result:", style: Theme.of(context).textTheme.headline6),
            Center(
              child: Image.asset('assets/icon.png'),
            ),
            Visibility(
                visible: isCopied,
                child: Center(
                  child: Text("Copied successfully.",
                      style: Theme.of(context).textTheme.caption),
                )),
            const Divider(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(children: [
              
                Expanded(
                  // Add this if you want equal width buttons
                  child: ElevatedButton(
                    
                    onPressed: _copyToClipboard,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.orangeAccent), // Change color to orangeAccent
                      elevation: MaterialStateProperty.all<double>(
                          4), // Add shadow with elevation value
                    ),
                    child: const Text(
                      "Copy",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  // Add this if you want equal width buttons
                  child: ElevatedButton(
                    onPressed: () async {
                      try {
                        final Uri uri = Uri.parse(widget.qrResult);
                        await launch(uri.toString());
                      } catch (e) {}
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.orangeAccent), // Change color to blue
                      elevation: MaterialStateProperty.all<double>(
                          4), // Add shadow with elevation value
                    ),
                    child: const Text(
                      "Open",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
