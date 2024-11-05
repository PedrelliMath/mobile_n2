import 'package:flutter/material.dart';
import 'roupa.dart';
import 'roupa_view_model.dart';

class RoupaFormPage extends StatefulWidget {
  final Roupa? roupa;
  final RoupaViewModel viewModel;

  RoupaFormPage({this.roupa, required this.viewModel});

  @override
  _RoupaFormPageState createState() => _RoupaFormPageState();
}

class _RoupaFormPageState extends State<RoupaFormPage> {
  final _formKey = GlobalKey<FormState>();
  late String _nome, _descricao, _tipo, _local;

  @override
  void initState() {
    super.initState();
    _nome = widget.roupa?.nome ?? '';
    _descricao = widget.roupa?.descricao ?? '';
    _tipo = widget.roupa?.tipo ?? '';
    _local = widget.roupa?.local ?? '';
  }

  void _saveForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final roupa = Roupa(
        id: widget.roupa?.id ?? '',
        nome: _nome,
        descricao: _descricao,
        tipo: _tipo,
        local: _local,
      );

      if (widget.roupa == null) {
        widget.viewModel.addRoupa(roupa);
      } else {
        widget.viewModel.updateRoupa(roupa);
      }
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.roupa == null ? 'Adicionar Roupa' : 'Editar Roupa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: _nome,
                decoration: InputDecoration(labelText: 'Nome da Roupa'),
                validator: (value) => value!.isEmpty ? 'Informe um nome' : null,
                onSaved: (value) => _nome = value!,
              ),
              TextFormField(
                initialValue: _descricao,
                decoration: InputDecoration(labelText: 'Descrição'),
                onSaved: (value) => _descricao = value!,
              ),
              TextFormField(
                initialValue: _tipo,
                decoration: InputDecoration(labelText: 'Tipo'),
                onSaved: (value) => _tipo = value!,
              ),
              TextFormField(
                initialValue: _local,
                decoration: InputDecoration(labelText: 'Local/Evento'),
                onSaved: (value) => _local = value!,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveForm,
                child: Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

