import 'package:flutter/material.dart';
import 'package:payment_method/modules/register/register.dart';
import 'package:payment_method/shared/components/compontents.dart';
import 'package:payment_method/shared/components/constant.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VisaCardScreen extends StatelessWidget {
  const VisaCardScreen({Key? key}) : super(key: key);
  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Are you sure completed payment'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              NavigateAndPushReplacement(
                                  context, RegisterScreen());
                            },
                            child: const Text("Yes")),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("No"))
                      ],
                    );
                  });
            },
            child: const Padding(
                padding: EdgeInsets.all(12), child: Icon(Icons.exit_to_app)),
          )
        ],
      ),
      body: WebView(
        initialUrl:
            'https://accept.paymob.com/api/acceptance/iframes/441986?payment_token=$finalTokenCard',
        javascriptMode: JavascriptMode.unrestricted,
        onProgress: (int progress) {
          print('WebView is loading (progress : $progress%)');
        },
        javascriptChannels: <JavascriptChannel>{
          _toasterJavascriptChannel(context),
        },
        onPageStarted: (String url) {
          print('Page started loading: $url');
        },
        onPageFinished: (String url) {
          print('Page finished loading: $url');
        },
        gestureNavigationEnabled: true,
        backgroundColor: const Color(0x00000000),
      ),
    );
  }
}
