import 'package:flutter/material.dart';


class sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff1E1E1E),
      child: ListView(
        // Remove padding
        
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Kemal Al Ghifari'),
            accountEmail: Text('Kemal@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white54,
              child: ClipOval(
                child: Image.asset(
                  "assets/user.png",
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                  color: Color(0xff1E1E1E),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xffF1AB68),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home_outlined,
              color: Color(0xffF1AB68),
            ),
            title: Text(
              'Home',
              style: TextStyle(
                  color: Color(0xffF1AB68),
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              'Catagories',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            onTap: () => null,
          ),
         
       
         
         
          Divider(),
             ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
         
          ),
        
        ],
      ),
    );
  }
}
