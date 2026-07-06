import 'package:flutter/material.dart';

class IspLogoWidget extends StatefulWidget {
  final String? domain;
  final double size;
  final Widget? fallbackWidget;

  const IspLogoWidget({
    super.key,
    this.domain,
    this.size = 20.0,
    this.fallbackWidget,
  });

  @override
  State<IspLogoWidget> createState() => _IspLogoWidgetState();
}

class _IspLogoWidgetState extends State<IspLogoWidget> {
  int _attempt = 0;
  late List<String> _urls;

  @override
  void initState() {
    super.initState();
    _initUrls();
  }

  @override
  void didUpdateWidget(covariant IspLogoWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.domain != widget.domain) {
      _initUrls();
    }
  }

  void _initUrls() {
    _attempt = 0;
    _urls = [];
    if (widget.domain != null && widget.domain!.isNotEmpty) {
      _urls.add('https://logo.clearbit.com/${widget.domain}');
      _urls.add('https://www.google.com/s2/favicons?domain=${widget.domain}&sz=128');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_urls.isEmpty || _attempt >= _urls.length) {
      return widget.fallbackWidget ?? 
             Icon(Icons.business, color: Theme.of(context).colorScheme.primary, size: widget.size);
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Image.network(
        _urls[_attempt],
        width: widget.size,
        height: widget.size,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          // Schedule state update after the build phase
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              setState(() {
                _attempt++;
              });
            }
          });
          // Show a temporary empty box while we try the next URL
          return SizedBox(width: widget.size, height: widget.size);
        },
      ),
    );
  }
}
