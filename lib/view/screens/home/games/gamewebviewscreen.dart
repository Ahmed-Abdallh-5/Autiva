import 'package:autiva/core/constans/constansappvalues.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../core/model/local/eduvideoslocal.dart';
import '../../../../core/model/local/gameslocalclass.dart';

class Video_GameWebViewScreen extends StatefulWidget {
  final GamesClass? game;
  final VideosClass? video;
  final bool? isedu;
  const Video_GameWebViewScreen(
      {super.key, this.game, this.video, this.isedu = false});

  @override
  State<Video_GameWebViewScreen> createState() => _GameWebViewScreenState();
}

class _GameWebViewScreenState extends State<Video_GameWebViewScreen> {
  late final WebViewController _webViewController;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (_) => setState(() => _isLoading = true),
          onPageFinished: (_) => setState(() => _isLoading = false),
        ),
      )
      ..loadRequest(
          Uri.parse(widget.isedu! ? widget.video!.link : widget.game!.link));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            widget.isedu! ? AppConstans.orange : AppConstans.purple,
        foregroundColor: Colors.white,
        title: Text(
          widget.isedu! ? widget.video!.title : widget.game!.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Get.back(),
        ),
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: _webViewController),
          if (_isLoading)
            const Center(
              child: CircularProgressIndicator(
                color: AppConstans.purple,
              ),
            ),
        ],
      ),
    );
  }
}
