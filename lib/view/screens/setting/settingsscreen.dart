import 'package:flutter/material.dart';

// ─────────────────────────────────────────────
// THEME CONSTANTS
// ─────────────────────────────────────────────

const _kTeal = Color(0xFF0097A7);
const _kBackground = Color(0xFFF2F4F7);
const _kLabelColor = Color(0xFF9CA3AF);
const _kTextDark = Color(0xFF1A1A2E);

// ─────────────────────────────────────────────
// MODEL
// ─────────────────────────────────────────────

class SettingsTile {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final bool isDestructive;

  const SettingsTile({
    required this.icon,
    required this.title,
    this.subtitle,
    this.onTap,
    this.isDestructive = false,
  });
}

// ─────────────────────────────────────────────
// SCREEN
// ─────────────────────────────────────────────

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // ── Teal header ──
        SliverAppBar(
          backgroundColor: _kTeal,
          expandedHeight: 110,
          pinned: false,
          floating: false,
          automaticallyImplyLeading: false,
          flexibleSpace: FlexibleSpaceBar(
            background: SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Manage your account and preferences',
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28),
            ),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              Transform.translate(
                offset: const Offset(0, -10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile card
                    const _ProfileCard(
                      name: 'Donia Ashraf',
                      email: 'Donia@example.com',
                    ),
                    const SizedBox(height: 24),

                    // App Settings
                    const _SectionLabel('APP SETTINGS'),
                    const SizedBox(height: 8),
                    _SettingsGroup(tiles: const [
                      SettingsTile(
                        icon: Icons.dark_mode_outlined,
                        title: 'Appearance',
                        subtitle: 'light  Mode',
                      ),
                      SettingsTile(
                        icon: Icons.text_fields_rounded,
                        title: 'Text Size',
                        subtitle: 'medium',
                      ),
                    ]),
                    const SizedBox(height: 24),

                    // Information
                    const _SectionLabel('INFORMATION'),
                    const SizedBox(height: 8),
                    _SettingsGroup(tiles: const [
                      SettingsTile(
                        icon: Icons.info_outline_rounded,
                        title: 'About Us',
                      ),
                      SettingsTile(
                        icon: Icons.security_outlined,
                        title: 'Privacy & Security',
                      ),
                      SettingsTile(
                        icon: Icons.child_care_outlined,
                        title: 'My Children',
                      ),
                    ]),
                    const SizedBox(height: 24),

                    // Log Out
                    _SettingsGroup(tiles: const [
                      SettingsTile(
                        icon: Icons.logout_rounded,
                        title: 'Log Out',
                        isDestructive: true,
                      ),
                    ]),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

class _ProfileCard extends StatelessWidget {
  final String name;
  final String email;

  const _ProfileCard({required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      elevation: 3,
      shadowColor: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                color: _kTeal,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.person_outline_rounded,
                color: Colors.white,
                size: 36,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              name,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: _kTextDark,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              email,
              style: const TextStyle(fontSize: 13, color: _kLabelColor),
            ),
            const SizedBox(height: 14),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'Edit Profile',
                style: TextStyle(
                  color: _kTeal,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String text;
  const _SectionLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: _kLabelColor,
        letterSpacing: 0.8,
      ),
    );
  }
}

// ─────────────────────────────────────────────
// SETTINGS GROUP
// ─────────────────────────────────────────────

class _SettingsGroup extends StatelessWidget {
  final List<SettingsTile> tiles;
  const _SettingsGroup({required this.tiles});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      elevation: 3,
      shadowColor: Colors.black12,
      child: Column(
        children: List.generate(tiles.length, (i) {
          final isLast = i == tiles.length - 1;
          return Column(
            children: [
              _SettingsRow(tile: tiles[i]),
              if (!isLast)
                const Divider(
                  height: 1,
                  indent: 56,
                  endIndent: 20,
                  color: Color(0xFFEEEEEE),
                ),
            ],
          );
        }),
      ),
    );
  }
}

// ─────────────────────────────────────────────
// SETTINGS ROW
// ─────────────────────────────────────────────

class _SettingsRow extends StatelessWidget {
  final SettingsTile tile;
  const _SettingsRow({required this.tile});

  @override
  Widget build(BuildContext context) {
    final color = tile.isDestructive ? Colors.red.shade400 : _kTextDark;

    return InkWell(
      onTap: tile.onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          children: [
            Icon(tile.icon, size: 22, color: color),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tile.title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: color,
                    ),
                  ),
                  if (tile.subtitle != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      tile.subtitle!,
                      style: const TextStyle(
                        fontSize: 12,
                        color: _kLabelColor,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (!tile.isDestructive)
              const Icon(
                Icons.chevron_right_rounded,
                color: _kLabelColor,
                size: 20,
              ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────
// BOTTOM NAV
// ─────────────────────────────────────────────

class _BottomNav extends StatelessWidget {
  const _BottomNav();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 2,
      selectedItemColor: _kTeal,
      unselectedItemColor: const Color(0xFF9CA3AF),
      backgroundColor: Colors.white,
      elevation: 8,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sports_esports_outlined),
          activeIcon: Icon(Icons.sports_esports_rounded),
          label: 'Activities',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          activeIcon: Icon(Icons.settings_rounded),
          label: 'Settings',
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────
// FLOATING BUTTON
// ─────────────────────────────────────────────

class _FloatingButton extends StatelessWidget {
  const _FloatingButton();

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF5C35CC),
          shape: const CircleBorder(),
          child: const Icon(Icons.sports_esports_rounded, color: Colors.white),
        ),
        Positioned(
          top: -4,
          right: -4,
          child: Container(
            width: 12,
            height: 12,
            decoration: const BoxDecoration(
              color: Color(0xFFFF5722),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────
// ENTRY POINT
// ─────────────────────────────────────────────

