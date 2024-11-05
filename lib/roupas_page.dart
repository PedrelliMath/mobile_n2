import 'package:flutter/material.dart';
import 'roupa.dart';
import 'roupa_view_model.dart';
import 'roupa_form_page.dart';

class RoupasPage extends StatefulWidget {
  @override
  _RoupasPageState createState() => _RoupasPageState();
}

class _RoupasPageState extends State<RoupasPage> {
  final RoupaViewModel viewModel = RoupaViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organizador de Roupas'),
      ),
      body: StreamBuilder<List<Roupa>>(
        stream: viewModel.getRoupas(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          final roupas = snapshot.data!;
          return ListView.builder(
            itemCount: roupas.length,
            itemBuilder: (context, index) {
              final roupa = roupas[index];
              return ListTile(
                title: Text(roupa.nome),
                subtitle: Text(roupa.descricao),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => RoupaFormPage(
                              roupa: roupa,
                              viewModel: viewModel,
                            ),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        viewModel.deleteRoupa(roupa.id);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => RoupaFormPage(viewModel: viewModel),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

