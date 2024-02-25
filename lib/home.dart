import 'package:easyscan/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodeScanner extends StatefulWidget {
  const QrCodeScanner({super.key});

  @override
  State<QrCodeScanner> createState() => _Qrcodestate();
}

class _Qrcodestate extends State<QrCodeScanner> {
  final GlobalKey qrkey = GlobalKey(debugLabel: "QR");
  QRViewController? controller;
  String result = "";

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void _onQrviewcreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData.code!;
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailScreen(qrResult: result)),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "QR Code Scanner",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(
                16.0, 50.0, 16.0, 8.0), // Add space from top
            child: Text(
              "Place the QR Code in the area",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.fromLTRB(16.0, 0, 16.0, 10.0), // Add space below
            child: Text(
              "Scanning will be started automatically",
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 2,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 30.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.3),
                        ),
                        child: QRView(
                            key: qrkey, onQRViewCreated: _onQrviewcreated),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    left: 0,
                    right: 0,
                    bottom: MediaQuery.of(context).size.height *
                        .4, // Adjust the position according to your needs
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context)
                            .size
                            .width/1.2, // Set the desired width
                        height: 2, // Set the desired height
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
