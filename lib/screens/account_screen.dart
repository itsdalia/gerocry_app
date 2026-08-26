import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/account_info.dart';
import 'package:grocery_app/widgets/account_option.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Column(
        children: [
          const AccountInfo(),
          const SizedBox(height: 30),
          const Divider(color: Color(0xffE2E2E2)),
          const AccountOption(
            icon: Icons.shopping_bag_outlined,
            text: 'Orders',
          ),
          const AccountOption(icon: Icons.badge_outlined, text: 'My Details'),
          const AccountOption(
            icon: Icons.location_on_outlined,
            text: 'Delivery Address',
          ),
          const AccountOption(
            icon: Icons.credit_card_outlined,
            text: 'Payment Methods',
          ),
          const AccountOption(
            icon: Icons.local_offer_outlined,
            text: 'Promo Card',
          ),
          const AccountOption(
            icon: Icons.notifications_outlined,
            text: 'Notifications',
          ),
          const AccountOption(icon: Icons.help_outline, text: 'Help'),
          const AccountOption(icon: Icons.info_outline, text: 'About'),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              // Handle log out action here
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    'Log Out',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
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
