import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 185, 180, 224),
        appBar: AppBar(
          title: Text(
            'Olá, usuario!',
            style: TextStyle(fontSize: 12),
          ),
          backgroundColor: const Color.fromARGB(255, 185, 180, 224),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),

        body: Container(
          child: Padding(
            padding: EdgeInsets.all(16.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Título "Agendamentos"
                Text(
                  'Agendamentos',
                  style: TextStyle(
                    fontSize: 20,
                    
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 10),

                // Tabela de agendamentos
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Table(
                    border: TableBorder.all(color: Colors.grey.shade300),
                    children: [
                      // Cabeçalho da tabela (opcional)
                      TableRow(
                        decoration: BoxDecoration(color: Colors.grey.shade200),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Quadra',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Data',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Horário',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                // Linha divisória
                Divider(),

                // Título "Histórico"
                ElevatedButton(
                 style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 112, 111, 121), // Cor de fundo
                    foregroundColor: Colors.white, // Cor do texto
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Histórico de agendamentos",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                SizedBox(height: 10),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
