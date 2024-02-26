import 'package:flutter/material.dart';
import 'package:weather_app_tutorial/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<String> entries = [
    'Abrantes',
    'Agualva-Cacém',
    'Albufeira',
    'Alcácer do Sal',
    'Alcobaça',
    'Almada',
    'Almeirim',
    'Amadora',
    'Amarante',
    'Amora',
    'Anadia',
    'Angra do Heroísmo',
    'Águeda',
    'Aveiro',
    'Barcelos',
    'Barreiro',
    'Beja',
    'Braga',
    'Bragança',
    'Caldas da Rainha',
    'Câmara de Lobos',
    'Caniço',
    'Cantanhede',
    'Cartaxo',
    'Castelo Branco',
    'Chaves',
    'Coimbra',
    'Costa da Caparica',
    'Covilhã',
    'Elvas',
    'Entroncamento',
    'Ermesinde',
    'Évora',
    'Fafe',
    'Faro',
    'Fátima',
    'Felgueiras',
    'Fiães',
    'Figueira da Foz',
    'Freamunde',
    'Funchal',
    'Fundão',
    'Gafanha da Nazaré',
    'Gandra',
    'Gondomar',
    'Gouveia',
    'Guarda',
    'Guimarães',
    'Horta',
    'Ílhavo',
    'Lagoa',
    'Lagos',
    'Lamego',
    'Leiria',
    'Lisbon',
    'Lixa',
    'Loulé',
    'Loures',
    'Lourosa',
    'Macedo de Cavaleiros',
    'Machico',
    'Maia',
    'Mangualde',
    'Marco de Canaveses',
    'Marinha Grande',
    'Matosinhos',
    'Mealhada',
    'Mêda',
    'Miranda do Douro',
    'Mirandela',
    'Montemor-o-Novo',
    'Montijo',
    'Moura',
    'Odivelas',
    'Olhão',
    'Oliveira de Azeméis',
    'Oliveira do Bairro',
    'Oliveira do Hospital',
    'Ourém',
    'Ovar',
    'Paredes',
    'Paredes de Coura',
    'Penafiel',
    'Peniche',
    'Peso da Régua',
    'Pinhel',
    'Pombal',
    'Ponta Delgada',
    'Ponte de Lima',
    'Portalegre',
    'Portimão',
    'Porto',
    'Póvoa de Santa Iria',
    'Póvoa de Varzim',
    'Praia da Vitória',
    'Quarteira',
    'Queluz',
    'Rio Maior',
    'Riomaior',
    'Santa Comba Dão',
    'Santa Cruz',
    'Santa Maria da Feira',
    'Santarém',
    'Santiago do Cacém',
    'Santo Tirso',
    'São João da Madeira',
    'São Mamede de Infesta',
    'São Salvador de Lordelo',
    'Seia',
    'Seixal',
    'Serpa',
    'Setúbal',
    'Silves',
    'Sines',
    'Sintra',
    'Tavira',
    'Tomar',
    'Tondela',
    'Torres Novas',
    'Torres Vedras',
    'Trancoso',
    'Trofa',
    'Vale de Cambra',
    'Valença',
    'Valongo',
    'Valpaços',
    'Vendas Novas',
    'Viana do Alentejo',
    'Viana do Castelo',
    'Vila Baleira',
    'Vila do Conde',
    'Vila Franca de Xira',
    'Vila Nova de Famalicão',
    'Vila Nova de Foz Côa',
    'Vila Nova de Gaia',
    'Vila Nova de Santo André',
    'Vila Real',
    'Vila Real de Santo António',
    'Vila Verde',
    'Viseu',
    'Vizela',
    'Vouzela',
  ];

  List<String> filteredEntries = [];

  @override
  void initState() {
    super.initState();
    filteredEntries = entries;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 82, 107, 119),
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text(
          'Portuguese Cities',
          style: GoogleFonts.aleo(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              onChanged: (value) {
                setState(() {
                  filteredEntries = entries
                      .where((entry) =>
                          entry.toLowerCase().contains(value.toLowerCase()))
                      .toList();
                });
              },
              decoration: InputDecoration(
                fillColor: Colors.red,
                labelText: 'Search',
                hintText: 'Enter a city name',
                prefixIcon: Icon(Icons.search, color: Colors.white),
                labelStyle: GoogleFonts.aleo(
                  // Use GoogleFonts widget
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                hintStyle: GoogleFonts.aleo(
                  // Use GoogleFonts widget
                  textStyle: TextStyle(
                    color: const Color.fromARGB(255, 211, 211, 211),
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: filteredEntries.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.10), // Adjust opacity
                        borderRadius:
                            BorderRadius.circular(10.0), // Adjust the radius
                      ),
                      padding: EdgeInsets.all(12),
                      child: Text(
                        filteredEntries[index],
                        style: GoogleFonts.aleo(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            HomePage(nome: filteredEntries[index]),
                      ));
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
