import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class RoadmapExplorerPage extends StatefulWidget {
  const RoadmapExplorerPage({super.key});

  @override
  State<RoadmapExplorerPage> createState() => _RoadmapExplorerPageState();
}

class _RoadmapExplorerPageState extends State<RoadmapExplorerPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://roadmap.sh/"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Roadmap Explorer")),
      body: WebViewWidget(controller: _controller),
    );
  }
}
