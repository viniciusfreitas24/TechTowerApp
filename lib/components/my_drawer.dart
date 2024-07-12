import "package:TechTowerApp/services/auth_provider.dart";
import "package:TechTowerApp/themes/theme_provider.dart";
import "package:TechTowerApp/themes/themes.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "my_list_tile.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeProvider>().themeData;
    final UserLogedIn = context.watch<UserProvider>().isAuthenticated;
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Image.asset('assets/logo.png', width: 200, height: 200),
                
                const SizedBox(height: 10),
                MyListTile(
                  text: "Comprar",
                  icon: Icons.home,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/shop_page");
                  },
                ),

                  MyListTile(
                  text: "Contatos",
                  icon: Icons.contact_page,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/cont_page");
                  },
                ),

                 MyListTile(
                  text: "Empresa",
                  icon: Icons.apartment,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/company_page");
                  },
                ),

                
              ]),



              
              Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Column(
                    children: [
                      MyListTile(
                          text: UserLogedIn
                          ? "Sair"
                          : "Login",
                          icon: UserLogedIn
                          ? Icons.logout
                          : Icons.account_circle_outlined,
                          onTap: () {
                            if(UserLogedIn) {
                              Navigator.pop(context);
                              context.read<UserProvider>().signOut();
                            } else {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, "/login_page");
                            }
                          }),
                      MyListTile(
                        text: theme == lightMode 
                        ? "Modo Escuro" 
                        : "Modo Claro",
                        icon: theme == lightMode
                        ? Icons.toggle_off
                        : Icons.toggle_on_outlined,
                        onTap:() {
                          Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme();                        },
                      ),
                    ],
                  ))
            ]));
  }
}
