import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';

class ServiceTable extends StatelessWidget {
  const ServiceTable({super.key});

  static const _services = [
    (
      service: 'alsa-state.service',
      description: 'Manage Sound Card State (restore active and store)',
      active: 'active',
      subState: 'running',
    ),
    (
      service: 'nfsdcld.service',
      description: 'NFSv4 Client Tracking Daemon',
      active: 'inactive',
      subState: 'dead',
    ),
    (
      service: 'dracut-pre-udev.service',
      description: 'dracut pre-udev hook',
      active: 'inactive',
      subState: 'dead',
    ),
    (
      service: 'systemd-logind.service',
      description: 'User Login Management',
      active: 'active',
      subState: 'running',
    ),
    (
      service: 'lvm2-monitor.service',
      description: 'Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling',
      active: 'active',
      subState: 'exited',
    ),
    (
      service: 'kmod-static-nodes.service',
      description: 'Create List of Static Device Nodes',
      active: 'active',
      subState: 'exited',
    ),
    (
      service: 'systemd-userdb-load-service',
      description: 'Load JSON user/group Records',
      active: 'active',
      subState: 'exited',
    ),
    (
      service: 'modprobe@loop.service',
      description: 'Load Kernel Module loop',
      active: 'inactive',
      subState: 'dead',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SingleChildScrollView(
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(1.2),
          1: FlexColumnWidth(2.1),
          2: FlexColumnWidth(0.9),
          3: FlexColumnWidth(0.9),
        },
        border: TableBorder(
          horizontalInside: BorderSide(
            color: Colors.white.withValues(alpha: 0.08),
          ),
        ),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          _header(theme),
          ..._services.map(
            (service) => _row(
              theme,
              service.service,
              service.description,
              service.active,
              service.subState,
            ),
          ),
        ],
      ),
    );
  }

  TableRow _header(ThemeData theme) {
    return TableRow(
      children: [
        _headerCell('Service', theme, showArrow: true),
        _headerCell('Description', theme),
        _headerCell('Active\nstate', theme),
        _headerCell('Sub state', theme),
      ],
    );
  }

  TableRow _row(
    ThemeData theme,
    String service,
    String description,
    String active,
    String subState,
  ) {
    return TableRow(
      children: [
        _cell(service, theme),
        _cell(description, theme),
        _cell(active, theme),
        _cell(subState, theme),
      ],
    );
  }

  Widget _headerCell(String text, ThemeData theme, {bool showArrow = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          if (showArrow) ...[
            const SizedBox(width: 4),
            CompDrawSvg(iconName: "down"),
          ],
        ],
      ),
    );
  }

  Widget _cell(String text, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Text(
        text,
        softWrap: true,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: theme.colorScheme.onSurface,
        ),
      ),
    );
  }
}
