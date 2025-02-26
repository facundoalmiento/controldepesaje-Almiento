-- tabla Puntos_de_Control
CREATE TABLE Puntos_de_Control (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  ubicacion VARCHAR(255) NOT NULL
);

-- tabla Vehiculos
CREATE TABLE Vehiculos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  patente VARCHAR(50) NOT NULL,
  modelo VARCHAR(50) NOT NULL,
  tipo VARCHAR(50) NOT NULL,
  titular_id INT NOT NULL
);

-- tabla Pesajes
CREATE TABLE Pesajes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  vehiculo_id INT NOT NULL,
  punto_control_id INT NOT NULL,
  fecha DATETIME NOT NULL,
  peso_total DECIMAL(10,2) NOT NULL,
  peso_por_eje JSON NOT NULL,
  FOREIGN KEY (vehiculo_id) REFERENCES Vehiculos(id),
  FOREIGN KEY (punto_control_id) REFERENCES Puntos_de_Control(id)
);

-- tabla Fotos
CREATE TABLE Fotos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pesaje_id INT NOT NULL,
  url_foto VARCHAR(255) NOT NULL,
  timestamp DATETIME NOT NULL,
  FOREIGN KEY (pesaje_id) REFERENCES Pesajes(id)
);
-- tabla Titulares
CREATE TABLE Titulares (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  direccion VARCHAR(255),
  telefono VARCHAR(50),
  email VARCHAR(100)
);
-- tabla Infracciones
CREATE TABLE Infracciones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pesaje_id INT NOT NULL,
  tipo_infraccion VARCHAR(255) NOT NULL,
  descripcion TEXT NOT NULL,
  FOREIGN KEY (pesaje_id) REFERENCES Pesajes(id) ON DELETE CASCADE
);
