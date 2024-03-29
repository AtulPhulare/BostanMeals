import 'package:flutter/material.dart';
import 'maindrawer.dart';

class Menu extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Menu> {

  TextEditingController controller = new TextEditingController();
  String filter = '';
  List<String> list = [
    'INDIAN FOOD VEG.........................................',
    'Veg Jaipuri                                                     Rs.150.00',
    'Veg Kolhapuri                                                   Rs.130.00',
    'Veg Makhanwala                                                  Rs.120.00',
    'Veg Shahi Korma                                                 Rs.110.00',
    'Veg Navratan Korma                                              Rs.110.00',
    'Veg Kashmiri Alu Dam                                            Rs.120.00',
    'Veg Kadai                                                       Rs.160.00',
    'Veg.Mushroom Mutter Masala                                      Rs.120.00',
    'Mushroom Kadai                                                  Rs.150.00',
    'Paneer Tikka Masala                                             Rs.150.00',
    'Paneer Makhani                                                  Rs.140.00',
    'Paneer Shahi Korma                                              Rs.120.00',
    'Paneer Bhurji                                                   Rs.120.00',
    'Paneer Mutter                                                   Rs.110.00',
    'Paneer Palak                                                    Rs.110.00',
    'Paneer Kadai                                                    Rs.170.00',
    'Mix Veg                                                         Rs.100.00',
    'Alu Palak                                                       Rs.100.00',
    'Chana Masala                                                    Rs.100.00',
    'Alu Mutter                                                      Rs.100.00',
    'Dal Fried                                                        Rs.80.00',
    'Dal Fried Butter                                                Rs.140.00',
    'Dal Tadka                                                       Rs.140.00',
    'VEG SOUP.........................................................',
    'Veg Manchow Soup with Noodles                                   Rs.110.00',
    'Veg Hot & Sour Soup                                             Rs.110.00',
    'Veg Sweet Corn Soup                                             Rs.100.00',
    'Veg Mushroom Soup                                               Rs.100.00',
    'Veg Clear Soup                                                  Rs.80.00',
    'Veg Sweet Corn Plain Soup                                       Rs.90.00',
    'CHINESE FOOD (VEG).................................................',
    'Veg Manchurian                                                  Rs.130.00',
    'Veg Chilly                                                      Rs.130.00',
    'Veg Schezwan Chilly                                             Rs.140.00',
    'Veg Garlic Sauce                                                Rs.130.00',
    'Veg Hong Kong                                                   Rs.130.00',
    'PANEER CHINESE FOOD(VEG)...........................................',
    'Paneer Chilly                                                   Rs.150.00',
    'Paneer Manchurian                                               Rs.150.00',
    'Paneer Schezwan Chilly                                          Rs.160.00',
    'Paneer Garlic Sauce                                             Rs.150.00',
    'VEG.RICE............................................................',
    'Veg Fried Rice                                                  Rs.120.00',
    'Veg Schezwan Fried Rice                                         Rs.130.00',
    'Veg Triple Rice                                                 Rs.150.00',
    'Veg Triple Schezwan Fried Rice                                  Rs.160.00',
    'Veg Jeera Fried Rice                                            Rs.100.00',
    'NOODLES(VEG).............................................................',
    'Veg Fried Noodles                                               Rs.130.00',
    'Veg Schezwan Noodles                                            Rs.140.00',
    'Veg American Chopsuey                                           Rs.140.00',
    'Veg American Schezwan Chopsuey                                  Rs.150.00',
    'Veg Chowmein                                                    Rs.130.00',
    'MUSHROOM...........................................................',
    'Mushroom Chilly                                                 Rs.130.00',
    'Mushroom Schezwan Chilly                                        Rs.140.00',
    'Mushroom Manchurian                                             Rs.130.00',
    'Mushroom Garlic Sauce                                           Rs.130.00',
    'Mushroom Schezwan Garlic Sauce                                  Rs.140.00',
    'NOODLES(NON-VEG)...................................................',
    'Chicken Fried Noodles                                           Rs.140.00',
    'Chicken Schezwan Noodles                                        Rs.150.00',
    'Mix Fried Noodles                                               Rs.170.00',
    'Mix Schezwan Noodles                                            Rs.180.00',
    'Chicken American Nood. Chopsuey                                 Rs.150.00',
    'Mix American Chopsuey                                           Rs.170.00',
    'Chicken Schezwan Chopsuey                                       Rs.160.00',
    'Mix Schezwan Chopsuey                                           Rs.180.00',
    'Egg Fried Noodles                                               Rs.130.00',
    'Prawns Fried Noodles                                            Rs.150.00',
    'Prawns Schezwan Noodles                                         Rs.160.00',
    'Prawns Chowmein                                                 Rs.150.00',
    'Chicken Chowmein                                                Rs.140.00',
    'RICE(NON-VEG).....................................................',
    'Chicken Manchurian Fried Rice                                   Rs.160.00',
    'Chicken Fried Rice                                              Rs.130.00',
    'Chicken Schezwan Fried Rice                                     Rs.140.00',
    'Chicken Triple Rice                                             Rs.160.00',
    'Chicken Triple Schezwan Friend Rice                             Rs.170.00',
    'Mix Fried Rice                                                  Rs.160.00',
    'Egg Fried Rice                                                  Rs.120.00',
    'Prawns Fried Rice                                               Rs.140.00',
    'Prawns Schezwan Rice                                            Rs.150.00',
    'Bostan Special Fried Rice                                       Rs.140.00',
    'Chicken Rice Noodles                                            Rs.150.00',
    'Krispa Rice                                                     Rs.410.00',
    'MUTTON.............................................................',
    'Mutton Special Bostan                                           Rs.180.00',
    'Mutton Green Masala                                             Rs.150.00',
    'Mutton Rogan Josh                                               Rs.150.00',
    'Mutton Shahi Korma                                              Rs.150.00',
    'Mutton Afghani                                                  Rs.160.00',
    'Mutton Moghlai                                                  Rs.160.00',
    'Mutton Do-Piyaza                                                Rs.150.00',
    'Mutton Palak                                                    Rs.150.00',
    'Mutton Dahiwala                                                 Rs.150.00',
    'Mutton Masala                                                   Rs.140.00',
    'Mutton Masala Fried                                             Rs.150.00',
    'Mutton Kolhapuri                                                Rs.170.00',
    'Mutton Plain Fried(6 Pcs)                                       Rs.190.00',
    'Mutton Kadai                                                    Rs.180.00',
    'Mutton Handi                                                    Rs.180.00',
    'Mutton Bhuna                                                    Rs.220.00',
    'Mutton Chatapata                                                Rs.190.00',
    'Mutton Chingari                                                 Rs.190.00',
    'Mutton Laziz                                                    Rs.190.00',
    'Mutton White                                                    Rs.160.00',
    'Mutton Rashida                                                  Rs.160.00',
    'Mutton Hyderabadi                                               Rs.180.00',
    'Mutton Kichda (Friday)                                          Rs.140.00',
    'Mutton Kheema                                                   Rs.80.00',
    'Mutton Kheema Fry                                               Rs.90.00',
    'Mutton Kheema Gotala                                            Rs.100.00',
    'Dal Gosht                                                       Rs.140.00',
    'Brain Masala                                                    Rs.160.00',
    'Brain Masala Fried                                              Rs.170.00',
    'Brain Bhurji                                                    Rs.150.00',
    'Brain Egg Bhurji                                                Rs.170.00',
    'Brain Plain Fried                                               Rs.140.00',
    'Brain Egg Fried                                                 Rs.150.00',
    'Paya Masala                                                     Rs.140.00',
    'Paya Masala Fry                                                 Rs.150.00',
    'SEA FOOD......................................................',
    'Fish Fried                                                      Rs.170.00',
    'Fish Masala Fried                                               Rs.170.00',
    'Prawns Masala Fried                                             Rs.170.00',
    'Prawns Plain Fried                                              Rs.160.00',
    'PAPAD/DAHI/SALAD..............................................',
    'Papad Fried                                                     Rs.10.00',
    'Dahi/Dahi Raita                                                 Rs.30.00',
    'Dahi Sugar                                                      Rs.30.00',
    'Green Salad                                                     Rs.25.00',
    'Tomato Salad                                                    Rs.25.00',
    'Bundi Raita                                                     Rs.40.00',
    'Pineapple Raita                                                 Rs.40.00',
    'SOUP(NON-VEG).........................................',
    'Chicken Manchow Soup with Noodles                               Rs.120.00',
    'Chicken Hot & Sour Soup                                         Rs.120.00',
    'Chicken Sweet Corn Soup                                         Rs.110.00',
    'Chicken Mushroom Soup                                           Rs.120.00',
    'Chicken Clear Soup                                              Rs.90.00',
    'Egg Sweet Corn Soup                                             Rs.100.00',
    'STARTERS(NON-VEG)...............................................',
    'Chicken Sanghai                                                 Rs.180.00',
    'Chicken Singhapuri                                              Rs.180.00',
    'Chicken Brostate                                                Rs.180.00',
    'Chicken Lollypop                                                Rs.140.00',
    'Chicken Schezwan Lollypop Dry(6pcs)                             Rs.170.00',
    'Chicken Finger                                                  Rs.150.00',
    'Chicken Spring Roll                                             Rs.130.00',
    'Chicken Crispy                                                  Rs.190.00',
    'Chicken Dragon Roll(2pcs)                                       Rs.120.00',
    'Chicken Oyster Chilly                                           Rs.190.00',
    'Fish Finger                                                     Rs.170.00',
    'Fish Shanghai                                                   Rs.200.00',
    'Paneer Crispy                                                   Rs.180.00',
    'Veg.Lollypop                                                    Rs.130.00',
    'Veg Spring Roll                                                 Rs.110.00',
    'Veg Crispy                                                      Rs.170.00',
    'Extra Schezwan Sauce                                            Rs.10.00',
    'CHICKEN(GRAVY)................................................',
    'Chicken Chilly(Boneless)                                        Rs.150.00',
    'Chicken Manchurian                                              Rs.150.00',
    'Chicken Schezwan Sauce                                          Rs.160.00',
    'Chicken Chow Chow                                               Rs.150.00',
    'Chicken Garlic Sauce                                            Rs.150.00',
    'Chicken Lollypop(Gravy) 6pcs.                                   Rs.170.00',
    'Chicken 65                                                      Rs.160.00',
    'Chicken Sweet & Sour                                            Rs.150.00',
    'Chicken Hong Kong                                               Rs.150.00',
    'FISH..........................................................',
    'Fish Chilly                                                     Rs.160.00',
    'Fish Garlic                                                     Rs.160.00',
    'Fish Manchurian                                                 Rs.160.00',
    'Fish Schezwan Sauce                                             Rs.170.00',
    'Fish Sweet & SOur                                               Rs.170.00',
    'PRAWNS........................................................',
    'Prawns Chilly                                                   Rs.150.00',
    'Prawns Garlic                                                   Rs.150.00',
    'Prawns Manchurian                                               Rs.150.00',
    'Prawns Schezwan Sauce                                           Rs.160.00',
    'Prawns Sweet & Sour                                             Rs.150.00',
    'GRILL..........................................................',
    'Chicken Tandoori Deluxe Full                                    Rs.290.00',
    'Chicken Tandoori Half                                           Rs.160.00',
    'Chicken Schezwan Tandoori Full                                  Rs.340.00',
    'Chicken Schezwan Tandoori Half                                  Rs.190.00',
    'Chicken Lemon Tandoori Full                                     Rs.290.00',
    'Chicken Lemon Tandoori Half                                     Rs.160.00',
    'Chicken Tandoori Leg                                            Rs.130.00',
    'Mix Grill(Dry)                                                  Rs.260.00',
    'Chicken Tangdi Kabab                                            Rs.140.00',
    'Chicken Tikka(6pcs)                                             Rs.140.00',
    'Green Tikka(6pcs)                                               Rs.140.00',
    'Chicken Schezwan Tikka(6pcs.)                                   Rs.190.00',
    'Reshmi Kabab(5pcs)                                              Rs.160.00',
    'Paneer Tikka                                                    Rs.150.00',
    'Chicken Cheesy Kabab(5pcs)                                      Rs.170.00',
    'Chicken Roasted Lollypop(6pcs)                                  Rs.160.00',
    'Chicken Sheek Kabab                                             Rs.130.00',
    'Chicken Kalamari Kabab                                          Rs.170.00',
    'Malai Kabab                                                     Rs.170.00',
    'TANDOORI ROTI.....................................................',
    'Tandoori Roti                                                   Rs.10.00',
    'Butter Roti                                                     Rs.15.00',
    'Tandoori Paratha                                                Rs.20.00',
    'Butter Paratha                                                  Rs.25.00',
    'Alu Paratha                                                     Rs.70.00',
    'Tandoori Nan                                                    Rs.20.00',
    'Butter Nan                                                      Rs.25.00',
    'BIRYANI/PULAV.....................................................',
    'Chicken Biryani                                                 Rs.140.00',
    'Chicken Tikka Biryani                                           Rs.150.00',
    'Mutton Biryani                                                  Rs.160.00',
    'Fish Biryani                                                    Rs.160.00',
    'Mushroom Biryani                                                Rs.130.00',
    'Egg Biryani                                                     Rs.130.00',
    'Veg Biryani                                                     Rs.130.00',
    'Paneer Tikka Biryani                                            Rs.130.00',
    'Mutton Pulav                                                    Rs.170.00',
    'Chicken Pulav                                                   Rs.150.00',
    'Chicken Kashmiri Pulav                                          Rs.140.00',
    'Veg Kashmiri Pulav                                              Rs.120.00',
    'Veg Pulav                                                       Rs.135.00',
    'Peas Pulav                                                      Rs.135.00',
    'Prawns Pulav                                                    Rs.170.00',
    'Rice                                                               Rs.45.00',
    'Jeera Rice                                                      Rs.50.00',
    'Fish Pulav                                                      Rs.170.00',
    'Prawns Biryani                                                  Rs.160.00',
    'MUGHLAI-PUNJABI CHICKEN..........................................',
    'Chicken Special Bostan                                          Rs.170.00',
    'Murg Musallam(Red)                                              Rs.440.00',
    'Murg Musallam(Half Red)                                         Rs.230.00',
    'Mix Grill(Gravy)                                                Rs.250.00',
    'Butter Chicken                                                  Rs.160.00',
    'Chicken Rashida                                                 Rs.130.00',
    'Chicken Tikka Masala                                            Rs.150.00',
    'Chicken Green Tikka Masala                                      Rs.140.00',
    'Chicken Reshmi Kabab Masala                                     Rs.160.00',
    'Chicken Tangdi Kabab Masala                                     Rs.140.00',
    'Chicken Green Masala                                            Rs.130.00',
    'Chicken Masala                                                  Rs.130.00',
    'Chicken Masala Fried                                            Rs.140.00',
    'Chicken Plain Fried(2pcs)                                       Rs.140.00',
    'Chicken Shahi Korma                                             Rs.130.00',
    'Chicken White                                                   Rs.140.00',
    'Chicken Mughlai                                                 Rs.140.00',
    'Chicken Palak                                                   Rs.140.00',
    'Chicken Dahiwala                                                Rs.140.00',
    'Chicken Do-Piyaza                                               Rs.140.00',
    'Chicken Patiyala(Boneless)                                      Rs.170.00',
    'Chicken Kabuli                                                  Rs.160.00',
    'Chicken Afghani(Boneless)                                       Rs.140.00',
    'Chicken Kadai(Boneless)                                         Rs.170.00',
    'Chicken Handi(Boneless)                                         Rs.170.00',
    'Chicken Hyderabadi(Boneless)                                    Rs.170.00',
    'Chicken Kolhapuri(Boneless)                                     Rs.160.00',
    'Chicken Chatpata(Boneless)                                      Rs.180.00',
    'Chicken Laziz(Boneless)                                         Rs.180.00',
    'Chicken Chingari(Boneless)                                      Rs.180.00',
    'Chicken Mumtaz(Boneless)                                        Rs.180.00',
    'Chicken Chatni(Boneless)                                        Rs.180.00',
    'Chicken Golden(Boneless)                                        Rs.180.00',
    'Chicken Seek Kabab Masala                                       Rs.140.00',
    'Chicken Seek Kabab Masala Fry                                   Rs.150.00',
    'Egg Masala                                                      Rs.110.00',
    'Extra Gravy                                                     Rs.50.00',
    'SOUP.........................................................',
    'Tomato Soup                                                     Rs.70.00',
    'Chicken Soup                                                    Rs.80.00',
    'Mutton Soup                                                     Rs.100.00',
    'Veg Soup                                                        Rs.70.00',
    'Paya Soup                                                       Rs.120.00',
    'SNACKS..........................................................',
    'Bread Slice(One Piece)                                          Rs.05.00',
    'Bread Butter Slice                                              Rs.20.00',
    'Toast Butter Slice                                              Rs.30.00',
    'Egg Omlet(Two)                                                  Rs.50.00',
    'Egg Bhurji(Two)                                                 Rs.60.00',
    'Egg Boiled(Two)                                                 Rs.30.00',
    'Chicken Sandwich                                                Rs.50.00',
    'Mutton Sandwich                                                 Rs.60.00',
    'Veg Sandwich                                                    Rs.40.00',
    'Egg Sandwich                                                    Rs.45.00',
    'Omlet Sandwich                                                  Rs.45.00',
    'Cheese Sandwich                                                 Rs.40.00',
    'Non Veg Club Sandwich                                           Rs.100.00',
    'Veg Club Sandwich                                               Rs.80.00',
    'Chicken Club Sandwich                                           Rs.90.00',
    'FRESH FRUIT JUICE...............................................',
    'Apple Juice                                                     Rs.60.00',
    'Pineapple Juice                                                 Rs.60.00',
    'Grape Juice                                                     Rs.60.00',
    'Cocktail Juice                                                  Rs.70.00',
    'Mosambi Juice                                                   Rs.60.00',
    'Ganga Jamuna Juice                                              Rs.60.00',
    'Mango Juice                                                     Rs.60.00',
    'Orange Juice                                                    Rs.60.00',
    'Tomato Juice                                                    Rs.50.00',
    'Fresh Lime Juice                                                Rs.35.00',
    'Fresh Lime Soda                                                 Rs.50.00',
    'Soda                                                            Rs.20.00',
    'MILK SHAKES(FRUIT)................................................',
    'Mango Milk Shake                                                Rs.70.00',
    'Apple Milk Shake                                                Rs.70.00',
    'Chikku Milk Shake                                               Rs.70.00',
    'Pineapple Milk Shake                                            Rs.70.00',
    'ICE CREAM.........................................................',
    'Casata                                                          Rs.40.00',
    'Kesar Pista                                                     Rs.50.00',
    'Vanilla                                                          Rs.40.00',
    'Strawberry                                                      Rs.40.00',
    'Butter Scotch                                                   Rs.50.00',
    'Chocolate Slice                                                 Rs.50.00',
    'MILK SHAKES (ICE CREAM)...........................................',
    'Chocolate Milk Shake                                            Rs.70.00',
    'Kesar Pista Milk Shake                                          Rs.70.00',
    'Strawberry Milk Shake                                           Rs.70.00',
    'Vanilla Milk Shake                                              Rs.70.00',
    'Butter Scotch Milk Shake                                        Rs.70.00',
    'Cold Coffee                                                     Rs.60.00',
    'FALOODA...........................................................',
    'Kesar Falooda                                                  Rs.80.00',
    'Strawberry Falooda                                             Rs.70.00',
    'Butter Scotch Falooda                                          Rs.70.00',
    'Chocolate Falooda                                              Rs.80.00',
    'KULFI.............................................................',
    'Kesar Kulfi                                                    Rs.50.00',
    'Malai Kulfi                                                    Rs.50.00',
    'Kulfi Falooda Dry                                              Rs.70.00',
    'LASSI/CUSTARD.....................................................',
    'Lassi Sweet                                                    Rs.50.00',
    'Lassi Salt                                                     Rs.50.00',
    'Lassi Mango                                                    Rs.50.00',
    'Chaas                                                          Rs.30.00',
    'Custard(Caramal)                                               Rs.40.00',
    'Kesar Lassi                                                    Rs.50.00',
    'Strawberry Lassi                                               Rs.50.00',
    'Fruit Salad                                                    Rs.60.00',
    'HOT DRINKS.......................................................',
    'Coffee                                                          Rs.35.00',
    'Tea Special                                                    Rs.35.00',


  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {
        filter = controller.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 80,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    top: 35,
                    left: 15,
                    right: 5,
                    bottom: 5,
                  ),
                  color: Color.fromRGBO(221, 221, 221, 1),
                  child: TextField(
                    controller: controller,
                    autofocus: false,
                    decoration: InputDecoration(
                      labelText: 'Search Something',
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(25.7),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.7),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 80,
                color: Color.fromRGBO(221, 221, 221, 1),
                padding: EdgeInsets.only(
                  top: 25,
                  right: 15,
                ),
                child: Icon(Icons.search),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (ctx, index) {
                return list[index].toLowerCase().contains(filter.toLowerCase())
                    ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 22.0,
                    vertical: 10.0,
                  ),
                    child: Text(
                    list[index],
                    style: TextStyle(fontSize: 15.0),
                  ),
                )
                    : SizedBox.shrink();
              },
            ),
          )
        ],
      ),
    );
  }

}