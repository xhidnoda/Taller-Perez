class ListaReparaciones {
  List<Reparaciones> reparaciones;

  ListaReparaciones({this.reparaciones});

  ListaReparaciones.fromJson(Map<String, dynamic> json) {
    if (json['reparaciones'] != null) {
      reparaciones = new List<Reparaciones>();
      json['reparaciones'].forEach((v) {
        reparaciones.add(new Reparaciones.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.reparaciones != null) {
      data['reparaciones'] = this.reparaciones.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Reparaciones {
  int idReparacion;
  int idCliente;
  String nombres;
  String apellidos;
  Vehiculo vehiculo;
  String fechaIngreso;
  String fechaEgreso;
  String estado;
  DetalleReparacion detalleReparacion;

  Reparaciones(
      {this.idReparacion,
      this.idCliente,
      this.nombres,
      this.apellidos,
      this.vehiculo,
      this.fechaIngreso,
      this.fechaEgreso,
      this.estado,
      this.detalleReparacion});

  Reparaciones.fromJson(Map<String, dynamic> json) {
    idReparacion = json['idReparacion'];
    idCliente = json['idCliente'];
    nombres = json['nombres'];
    apellidos = json['apellidos'];
    vehiculo = json['vehiculo'] != null
        ? new Vehiculo.fromJson(json['vehiculo'])
        : null;
    fechaIngreso = json['fechaIngreso'];
    fechaEgreso = json['fechaEgreso'];
    estado = json['estado'];
    detalleReparacion = json['detalleReparacion'] != null
        ? new DetalleReparacion.fromJson(json['detalleReparacion'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idReparacion'] = this.idReparacion;
    data['idCliente'] = this.idCliente;
    data['nombres'] = this.nombres;
    data['apellidos'] = this.apellidos;
    if (this.vehiculo != null) {
      data['vehiculo'] = this.vehiculo.toJson();
    }
    data['fechaIngreso'] = this.fechaIngreso;
    data['fechaEgreso'] = this.fechaEgreso;
    data['estado'] = this.estado;
    if (this.detalleReparacion != null) {
      data['detalleReparacion'] = this.detalleReparacion.toJson();
    }
    return data;
  }
}

class Vehiculo {
  String tipo;
  String marca;
  String modelo;
  String ano;
  String color;
  String matricula;
  String kilometraje;

  Vehiculo(
      {this.tipo,
      this.marca,
      this.modelo,
      this.ano,
      this.color,
      this.matricula,
      this.kilometraje});

  Vehiculo.fromJson(Map<String, dynamic> json) {
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

class DetalleReparacion {
  String montoTotal;
  String moneda;
  String repuestoComprado;
  String montoRepuesto;
  String casoDescripcion;

  DetalleReparacion(
      {this.montoTotal,
      this.moneda,
      this.repuestoComprado,
      this.montoRepuesto,
      this.casoDescripcion});

  DetalleReparacion.fromJson(Map<String, dynamic> json) {
    montoTotal = json['montoTotal'];
    moneda = json['moneda'];
    repuestoComprado = json['repuestoComprado'];
    montoRepuesto = json['montoRepuesto'];
    casoDescripcion = json['casoDescripcion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['montoTotal'] = this.montoTotal;
    data['moneda'] = this.moneda;
    data['repuestoComprado'] = this.repuestoComprado;
    data['montoRepuesto'] = this.montoRepuesto;
    data['casoDescripcion'] = this.casoDescripcion;
    return data;
  }
}