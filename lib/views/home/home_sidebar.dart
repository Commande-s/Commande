import 'package:flutter/material.dart';
import '../categories/category_page.dart';

class HomeSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Largura do sidebar
      color: Color(0xFFFEC894), // Laranja pastel
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: GestureDetector(
              onTap: () {
                // Exibe mensagem de clique no logo
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Bem-vindo ao Commandee!')),
                );
              },
              child: ClipOval(
                child: Image.asset(
                  'lib/assets/icons/Logo/logo.png',
                  width: 75,
                  height: 75,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            children: [
              _SidebarIcon(
                iconPath: 'lib/assets/icons/Foods/salty_icon.png',
                label: 'Salgados',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryPage(title: 'Salgados'),
                    ),
                  );
                },
              ),
              _SidebarIcon(
                iconPath: 'lib/assets/icons/Foods/drink_icon.png',
                label: 'Bebidas',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryPage(title: 'Bebidas'),
                    ),
                  );
                },
              ),
              _SidebarIcon(
                iconPath: 'lib/assets/icons/Foods/combo_icon.png',
                label: 'Combo',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryPage(title: 'Combo'),
                    ),
                  );
                },
              ),
              _SidebarIcon(
                iconPath: 'lib/assets/icons/Foods/dessert_icon.png',
                label: 'Sobremesas',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryPage(title: 'Sobremesas'),
                    ),
                  );
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFB9FBC0), // Verde abacate claro
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/confirmation');
              },
              child: Text('Finalizar', style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}

class _SidebarIcon extends StatelessWidget {
  final String iconPath;
  final String label;
  final VoidCallback onTap;

  const _SidebarIcon({
    required this.iconPath,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            iconPath,
            width: 75,
            height: 100,
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
