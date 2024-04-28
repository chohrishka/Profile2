import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildSwitchListTile(
            title: 'Уведомления',
            subtitle: 'Получать уведомления о новых сообщениях',
            onChanged: (bool value) {
              // Обработка изменения состояния переключателя
            },
            value: true, // Начальное состояние переключателя
          ),
          _buildSwitchListTile(
            title: 'Темная тема',
            subtitle: 'Использовать темную тему',
            onChanged: (bool value) {
              // Обработка изменения состояния переключателя
            },
            value: false, // Начальное состояние переключателя
          ),
          // Добавьте другие настройки по мере необходимости
        ],
      ),
    );
  }

  Widget _buildSwitchListTile({
    required String title,
    required String subtitle,
    required ValueChanged<bool> onChanged,
    required bool value,
  }) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: onChanged,
    );
  }
}