import 'package:flutter/material.dart';

typedef UpdateDialogBuilder = Widget Function(
  BuildContext context,
  String newVersion,
  String currentVersion,
  String? updateLog,
  VoidCallback onLater,
  VoidCallback onUpdateNow,
);

typedef NoUpdateDialogBuilder = Widget Function(
  BuildContext context,
  VoidCallback onOk,
);

typedef LoadingDialogBuilder = Widget Function(BuildContext context);

typedef DownloadProgressBuilder = Widget Function(
  BuildContext context,
  int progress,
  int max,
  VoidCallback onCancel,
);

typedef ErrorDialogBuilder = Widget Function(
  BuildContext context,
  String errorMessage,
  VoidCallback onOk,
);

class MapleUpdateDialog extends StatelessWidget {
  final String newVersion;
  final String currentVersion;
  final String? updateLog;
  final VoidCallback? onLater;
  final VoidCallback? onUpdateNow;
  final Color? accentColor;
  final Color? primaryColor;
  final Color? secondaryColor;

  const MapleUpdateDialog({
    super.key,
    required this.newVersion,
    required this.currentVersion,
    this.updateLog,
    this.onLater,
    this.onUpdateNow,
    this.accentColor,
    this.primaryColor,
    this.secondaryColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final accent = accentColor ?? theme.colorScheme.primary;
    final primary = primaryColor ?? theme.textTheme.bodyLarge?.color ?? Colors.black;
    final secondary = secondaryColor ?? theme.textTheme.bodyMedium?.color ?? Colors.grey;

    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: accent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.system_update, color: Colors.white, size: 16),
          ),
          const SizedBox(width: 10),
          const Text('新版本可用'),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            _buildVersionInfo('当前版本', currentVersion, secondary),
            const SizedBox(height: 8),
            _buildVersionInfo('新版本', newVersion, accent),
            if (updateLog != null && updateLog!.isNotEmpty) ...[
              const SizedBox(height: 16),
              Text('更新日志', style: TextStyle(color: primary, fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                constraints: const BoxConstraints(maxHeight: 120),
                child: SingleChildScrollView(
                  child: Text(updateLog!, style: TextStyle(color: secondary, fontSize: 12, height: 1.5)),
                ),
              ),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: onLater ?? () => Navigator.pop(context),
          child: const Text('稍后'),
        ),
        ElevatedButton(
          onPressed: onUpdateNow ?? () => Navigator.pop(context),
          style: ElevatedButton.styleFrom(backgroundColor: accent),
          child: const Text('立即更新'),
        ),
      ],
    );
  }

  Widget _buildVersionInfo(String label, String version, Color textColor) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
          Text(version, style: TextStyle(color: textColor, fontSize: 13, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}

class MapleNoUpdateDialog extends StatelessWidget {
  final VoidCallback? onOk;
  final Color? accentColor;

  const MapleNoUpdateDialog({
    super.key,
    this.onOk,
    this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final accent = accentColor ?? theme.colorScheme.primary;

    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.check_circle_outline, color: Colors.green, size: 28),
          ),
          const SizedBox(height: 16),
          const Text('暂无更新', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          const Text('当前版本已是最新', style: TextStyle(color: Colors.grey, fontSize: 13)),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: onOk ?? () => Navigator.pop(context),
          style: ElevatedButton.styleFrom(backgroundColor: accent),
          child: const Text('确定'),
        ),
      ],
    );
  }
}

class MapleLoadingDialog extends StatelessWidget {
  const MapleLoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          CircularProgressIndicator(),
          SizedBox(height: 16),
          Text('检查更新中...'),
        ],
      ),
    );
  }
}

class MapleDownloadingDialog extends StatelessWidget {
  final int progress;
  final int max;
  final VoidCallback? onCancel;
  final Color? accentColor;

  const MapleDownloadingDialog({
    super.key,
    required this.progress,
    required this.max,
    this.onCancel,
    this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final accent = accentColor ?? theme.colorScheme.primary;
    final percentage = max > 0 ? (progress / max * 100).toInt() : 0;

    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.downloading, size: 28),
          ),
          const SizedBox(height: 16),
          const Text('下载中', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          const SizedBox(height: 20),
          LinearProgressIndicator(
            value: max > 0 ? progress / max : 0,
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(accent),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$percentage%', style: TextStyle(color: Colors.grey, fontSize: 13)),
              Text(_formatBytes(progress), style: TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
      actions: [
        TextButton(
          onPressed: onCancel ?? () => Navigator.pop(context),
          child: const Text('取消'),
        ),
      ],
    );
  }

  String _formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }
}

class MapleErrorDialog extends StatelessWidget {
  final String errorMessage;
  final VoidCallback? onOk;
  final Color? accentColor;

  const MapleErrorDialog({
    super.key,
    required this.errorMessage,
    this.onOk,
    this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final accent = accentColor ?? theme.colorScheme.primary;

    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.error_outline, color: Colors.red, size: 28),
          ),
          const SizedBox(height: 16),
          const Text('错误', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Text(errorMessage, textAlign: TextAlign.center, style: TextStyle(color: Colors.grey, fontSize: 13)),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: onOk ?? () => Navigator.pop(context),
          style: ElevatedButton.styleFrom(backgroundColor: accent),
          child: const Text('确定'),
        ),
      ],
    );
  }
}

class AppUpdateWidgetBuilders {
  static UpdateDialogBuilder defaultUpdateDialog({
    Color? accentColor,
    Color? primaryColor,
    Color? secondaryColor,
  }) {
    return (context, newVersion, currentVersion, updateLog, onLater, onUpdateNow) {
      return MapleUpdateDialog(
        newVersion: newVersion,
        currentVersion: currentVersion,
        updateLog: updateLog,
        onLater: onLater,
        onUpdateNow: onUpdateNow,
        accentColor: accentColor,
        primaryColor: primaryColor,
        secondaryColor: secondaryColor,
      );
    };
  }

  static NoUpdateDialogBuilder defaultNoUpdateDialog({Color? accentColor}) {
    return (context, onOk) {
      return MapleNoUpdateDialog(onOk: onOk, accentColor: accentColor);
    };
  }

  static LoadingDialogBuilder defaultLoadingDialog() {
    return (context) => const MapleLoadingDialog();
  }

  static DownloadProgressBuilder defaultDownloadProgressDialog({Color? accentColor}) {
    return (context, progress, max, onCancel) {
      return MapleDownloadingDialog(
        progress: progress,
        max: max,
        onCancel: onCancel,
        accentColor: accentColor,
      );
    };
  }

  static ErrorDialogBuilder defaultErrorDialog({Color? accentColor}) {
    return (context, errorMessage, onOk) {
      return MapleErrorDialog(
        errorMessage: errorMessage,
        onOk: onOk,
        accentColor: accentColor,
      );
    };
  }
}