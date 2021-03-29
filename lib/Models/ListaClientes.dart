class ListaClientes {
  List<Cliente> cliente;

  ListaClientes({this.cliente});

  ListaClientes.fromJson(Map<String, dynamic> json) {
    if (json['cliente'] != null) {
      cliente = new List<Cliente>();
      json['cliente'].forEach((v) {
        cliente.add(new Cliente.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cliente != null) {
      data['cliente'] = this.cliente.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cliente {
  int idCliente;
  String nombres;
  String apellidos;
  String telefono;
  String direccion;
  String sexo;
  String email;
  Ciudad ciudad;
  Documento documento;
  List<Vehiculos> vehiculos;

  Cliente(
      {this.idCliente,
      this.nombres,
      this.apellidos,
      this.telefono,
      this.direccion,
      this.sexo,
      this.email,
      this.ciudad,
      this.documento,
      this.vehiculos});

  Cliente.fromJson(Map<String, dynamic> json) {
    idCliente = json['idCliente'];
    nombres = json['nombres'];
    apellidos = json['apellidos'];
    telefono = json['telefono'];
    direccion = json['direccion'];
    sexo = json['sexo'];
    email = json['email'];
    ciudad =
        json['ciudad'] != null ? new Ciudad.fromJson(json['ciudad']) : null;
    documento = json['documento'] != null
        ? new Documento.fromJson(json['documento'])
        : null;
    if (json['vehiculos'] != null) {
      vehiculos = new List<Vehiculos>();
      json['vehiculos'].forEach((v) {
        vehiculos.add(new Vehiculos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idCliente'] = this.idCliente;
    data['nombres'] = this.nombres;
    data['apellidos'] = this.apellidos;
    data['telefono'] = this.telefono;
    data['direccion'] = this.direccion;
    data['sexo'] = this.sexo;
    data['email'] = this.email;
    if (this.ciudad != null) {
      data['ciudad'] = this.ciudad.toJson();
    }
    if (this.documento != null) {
      data['documento'] = this.documento.toJson();
    }
    if (this.vehiculos != null) {
      data['vehiculos'] = this.vehiculos.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Ciudad {
  int idCiudad;
  String nombre;

  Ciudad({this.idCiudad, this.nombre});

  Ciudad.fromJson(Map<String, dynamic> json) {
    idCiudad = json['idCiudad'];
    nombre = json['nombre'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idCiudad'] = this.idCiudad;
    data['nombre'] = this.nombre;
    return data;
  }
}

class Documento {
  String tipoDocumento;
  String numeroDocumento;
  String paisDoc;
  String caducidadDoc;

  Documento(
      {this.tipoDocumento,
      this.numeroDocumento,
      this.paisDoc,
      this.caducidadDoc});

  Documento.fromJson(Map<String, dynamic> json) {
    tipoDocumento = json['tipoDocumento'];
    numeroDocumento = json['numeroDocumento'];
    paisDoc = json['paisDoc'];
    caducidadDoc = json['caducidadDoc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tipoDocumento'] = this.tipoDocumento;
    data['numeroDocumento'] = this.numeroDocumento;
    data['paisDoc'] = this.paisDoc;
    data['caducidadDoc'] = this.caducidadDoc;
    return data;
  }
}

class Vehiculos {
  String tipo;
  String marca;
  String modelo;
  String ano;
  String color;
  String matricula;
  String kilometraje;

  Vehiculos(
      {this.tipo,
      this.marca,
      this.modelo,
      this.ano,
      this.color,
      this.matricula,
      this.kilometraje});

  Vehiculos.fromJson(Map<String, dynamic> json) {
    tipo = json['tipo'];
    marca = json['marca'];
    modelo = json['modelo'];
    ano = json['ano'];
    color = json['color'];
    matricula = json['matricula'];
    kilometraje = json['kilometraje'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tipo'] = this.tipo;
    data['marca'] = this.marca;
    data['modelo'] = this.modelo;
    data['ano'] = this.ano;
    data['color'] = this.color;
    data['matricula'] = this.matricula;
    data['kilometraje'] = this.kilometraje;
    return data;
  }
}