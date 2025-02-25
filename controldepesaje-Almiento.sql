-- Datos ficticios en la tabla Titulares
INSERT INTO Titulares (nombre, dni_cuit, telefono, direccion) VALUES
('Juan Pérez', '20123456789', '123456789', 'Calle Falsa 123'),
('Ana Gómez', '30123456789', '987654321', 'Avenida Siempreviva 742'),
('Valentin Lozano', '40123456789', '456789123', 'Calle Tripera 222');

-- Datos ficticios en la tabla Vehículos
INSERT INTO Vehiculos (patente, modelo, tipo, titular_id) VALUES
('ABC123', 'Modelo1', 'Camión', 1),
('DEF456', 'Modelo2', 'Acoplado', 1),
('GHI789', 'Modelo3', 'Camión', 2);

-- Datos ficticios en la tabla Puntos de Control
INSERT INTO Puntos_de_Control (nombre, ubicacion) VALUES
('Punto de Control 1', 'Campana'),
('Punto de Control 2', 'Mar del Plata'),
('Punto de Control 3', 'San Vicente');

-- Datos ficticios en la tabla Pesajes
INSERT INTO Pesajes (vehiculo_id, punto_control_id, fecha, peso_total, peso_por_eje) VALUES
(1, 1, '2025-02-23 08:00:00', 14.902, '{"ejes": [{"nro_eje": 1, "peso": 3771}, {"nro_eje": 2, "peso": 3585}, {"nro_eje": 3, "peso": 3755}, {"nro_eje": 4, "peso": 3791}]}'),
(2, 2, '2025-02-23 09:00:00', 12.521, '{"ejes": [{"nro_eje": 1, "peso": 3121}, {"nro_eje": 2, "peso": 3000}, {"nro_eje": 3, "peso": 3400}, {"nro_eje": 4, "peso": 3000}]}'),
(3, 3, '2025-02-23 10:00:00', 13.451, '{"ejes": [{"nro_eje": 1, "peso": 3400}, {"nro_eje": 2, "peso": 3351}, {"nro_eje": 3, "peso": 3400}, {"nro_eje": 4, "peso": 3300}]}');


-- Datos ficticios en la tabla Infracciones
INSERT INTO Infracciones (pesaje_id, titular_id, exceso_peso, multa) VALUES
(1, 1, 0.5, 100.0),
(2, 2, 0.2, 50.0),
(3, 3, 2.0, 200.0);

-- Datos ficticios en la tabla Reincidencias
INSERT INTO Reincidencias (vehiculo_id, cantidad_infracciones) VALUES
(1, 2),
(2, 1),
(3, 3);

-- Datos ficticios en la tabla Fotos
INSERT INTO Fotos (pesaje_id, url_foto, timestamp) VALUES
(1, 'http://ejemplo.com/foto1.jpg', '2025-02-23 08:01:00'),
(2, 'http://ejemplo.com/foto2.jpg', '2025-02-23 09:01:00'),
(3, 'http://ejemplo.com/foto3.jpg', '2025-02-23 10:01:00');

INSERT INTO Puntos_de_Control (id, nombre, ubicacion) VALUES
(1, 'Punto de Control 1', 'Campana'),
(2, 'Punto de Control 2', 'Mar del Plata'),
(3, 'Punto de Control 3', 'San Vicente');

SELECT * FROM Puntos_de_Control;
SELECT * FROM Vehiculos;
SELECT * FROM Pesajes;
SELECT * FROM Fotos;
DELETE FROM Puntos_de_Control WHERE id IN (1, 2, 3);
INSERT INTO Puntos_de_Control (id, nombre, ubicacion) VALUES
(1, 'Punto de Control 1', 'Campana'),
(2, 'Punto de Control 2', 'Mar del Plata'),
(3, 'Punto de Control 3', 'San Vicente');

SELECT * FROM Puntos_de_Control;
INSERT INTO Vehiculos (patente, modelo, tipo, titular_id) VALUES
('ABC123', 'Modelo1', 'Camión', 1),
('DEF456', 'Modelo2', 'Acoplado', 1),
('GHI789', 'Modelo3', 'Camión', 2);
SELECT * FROM Vehiculos;
SELECT * FROM Pesajes;
INSERT INTO Pesajes (vehiculo_id, Puntos_de_Control, fecha, peso_total, peso_por_eje) VALUES
(1, 1, '2025-02-23 08:00:00', 14.902, '{"ejes": [{"nro_eje": 1, "peso": 3771}, {"nro_eje": 2, "peso": 3585}, {"nro_eje": 3, "peso": 3755}, {"nro_eje": 4, "peso": 3791}]}'),
(2, 2, '2025-02-23 09:00:00', 12.521, '{"ejes": [{"nro_eje": 1, "peso": 3121}, {"nro_eje": 2, "peso": 3000}, {"nro_eje": 3, "peso": 3400}, {"nro_eje": 4, "peso": 3000}]}'),
(3, 3, '2025-02-23 10:00:00', 13.451, '{"ejes": [{"nro_eje": 1, "peso": 3400}, {"nro_eje": 2, "peso": 3351}, {"nro_eje": 3, "peso": 3400}, {"nro_eje": 4, "peso": 3300}]}');

INSERT INTO Pesajes (vehiculo_id, punto_control_id, fecha, peso_total, peso_por_eje) VALUES
(1, 1, '2025-02-23 08:00:00', 14.902, '{"ejes": [{"nro_eje": 1, "peso": 3771}, {"nro_eje": 2, "peso": 3585}, {"nro_eje": 3, "peso": 3755}, {"nro_eje": 4, "peso": 3791}]}'),
(2, 2, '2025-02-23 09:00:00', 12.521, '{"ejes": [{"nro_eje": 1, "peso": 3121}, {"nro_eje": 2, "peso": 3000}, {"nro_eje": 3, "peso": 3400}, {"nro_eje": 4, "peso": 3000}]}'),
(3, 3, '2025-02-23 10:00:00', 13.451, '{"ejes": [{"nro_eje": 1, "peso": 3400}, {"nro_eje": 2, "peso": 3351}, {"nro_eje": 
3, "peso": 3400}, {"nro_eje": 4, "peso": 3300}]}');

ALTER TABLE Pesajes
ADD COLUMN punto_control_id INT NOT NULL,
ADD FOREIGN KEY (punto_control_id) REFERENCES Puntos_de_Control(id);
DELETE FROM Puntos_de_Control WHERE id IN (1, 2, 3);
DELETE FROM Vehiculos WHERE id IN (1, 2, 3);
DELETE FROM Pesajes WHERE id IN (1, 2, 3);

INSERT INTO Puntos_de_Control (id, nombre, ubicacion) VALUES
(1, 'Punto de Control 1', 'Campana'),
(2, 'Punto de Control 2', 'Mar del Plata'),
(3, 'Punto de Control 3', 'San Vicente');
INSERT INTO Vehiculos (id, patente, modelo, tipo, titular_id) VALUES
(1, 'ABC123', 'Modelo1', 'Camión', 1),
(2, 'DEF456', 'Modelo2', 'Acoplado', 1),
(3, 'GHI789', 'Modelo3', 'Camión', 2);
DELETE FROM Pesajes WHERE id IN (1, 2, 3);
INSERT INTO Pesajes (vehiculo_id, punto_control_id, fecha, peso_total, peso_por_eje) VALUES
(1, 1, '2025-02-23 08:00:00', 14902.00, '{"ejes": [{"nro_eje": 1, "peso": 3771}, {"nro_eje": 2, "peso": 3585}, {"nro_eje": 3, "peso": 3755}, {"nro_eje": 4, "peso": 3791}]}'),
(2, 2, '2025-02-23 09:00:00', 12521.00, '{"ejes": [{"nro_eje": 1, "peso": 3121}, {"nro_eje": 2, "peso": 3000}, {"nro_eje": 3, "peso": 3400}, {"nro_eje": 4, "peso": 3000}]}'),
(3, 3, '2025-02-23 10:00:00', 13451.00, '{"ejes": [{"nro_eje": 1, "peso": 3400}, {"nro_eje": 2, "peso": 3351}, {"nro_eje": 3, "peso": 3400}, {"nro_eje": 4, "peso": 3300}]}');
INSERT INTO Infracciones (pesaje_id, titular_id, exceso_peso, multa) VALUES
(1, 1, 0.5, 100.0),
(2, 2, 0.2, 50.0),
(3, 3, 2.0, 200.0);
INSERT INTO Fotos (pesaje_id, url_foto, timestamp) VALUES
(1, 'http://ejemplo.com/foto1.jpg', '2025-02-23 08:01:00'),
(2, 'http://ejemplo.com/foto2.jpg', '2025-02-23 09:01:00'),
(3, 'http://ejemplo.com/foto3.jpg', '2025-02-23 10:01:00');
SELECT * FROM Pesajes;
SELECT * FROM Pesajes;
DELETE FROM Pesajes WHERE id NOT IN (4, 5, 6);
SELECT * FROM Pesajes;
