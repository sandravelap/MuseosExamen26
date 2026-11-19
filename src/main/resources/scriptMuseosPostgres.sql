-- 1. Tabla de Museos
CREATE TABLE IF NOT EXISTS museos (
                                      id_museo INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                                      nombre VARCHAR(150) NOT NULL,
                                      ciudad VARCHAR(100) NOT NULL,
                                      pais VARCHAR(100) NOT NULL,
                                      direccion VARCHAR(255),
                                      anio_fundacion INTEGER
);

-- 2. Tabla de Autores
CREATE TABLE IF NOT EXISTS autores (
                                       id_autor INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                                       nombre VARCHAR(100) NOT NULL,
                                       apellidos VARCHAR(150) NOT NULL,
                                       nacionalidad VARCHAR(100),
                                       fecha_nacimiento DATE,
                                       fecha_fallecimiento DATE
);

-- 3. Tabla de Obras (relaciona Museos y Autores)
CREATE TABLE IF NOT EXISTS obras (
                                     id_obra INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                                     titulo VARCHAR(200) NOT NULL,
                                     anio_creacion INTEGER,
                                     tecnica VARCHAR(100),
                                     id_autor INTEGER NOT NULL,
                                     id_museo INTEGER,

    -- Definición de claves foráneas
                                     CONSTRAINT fk_obra_autor
                                         FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
                                             ON DELETE RESTRICT ON UPDATE CASCADE,

                                     CONSTRAINT fk_obra_museo
                                         FOREIGN KEY (id_museo) REFERENCES museos(id_museo)
                                             ON DELETE SET NULL ON UPDATE CASCADE
);

-- ==========================================
-- DATOS DE EJEMPLO (Originales + XML)
-- ==========================================

INSERT INTO museos (nombre, ciudad, pais, direccion, anio_fundacion) VALUES
                                                                         ('Museo Nacional del Prado', 'Madrid', 'España', 'Calle de Ruiz de Alarcón, 23', 1819),
                                                                         ('Museo del Louvre', 'París', 'Francia', 'Rue de Rivoli', 1793),
                                                                         ('Museo Van Gogh', 'Ámsterdam', 'Países Bajos', 'Museumplein 6', 1973),
                                                                         ('Museo de Arte Moderno (MoMA)', 'Nueva York', 'Estados Unidos', '11 W 53rd St', 1929),
                                                                         ('Museo Nacional Centro de Arte Reina Sofía', 'Madrid', 'España', 'Calle de Santa Isabel, 52', 1992),
                                                                         ('Galería Uffizi', 'Florencia', 'Italia', 'Piazzale degli Uffizi, 6', 1581);

INSERT INTO autores (nombre, apellidos, nacionalidad, fecha_nacimiento, fecha_fallecimiento) VALUES
                                                                                                 ('Diego', 'Velázquez', 'Española', '1599-06-06', '1660-08-06'),
                                                                                                 ('Leonardo', 'da Vinci', 'Italiana', '1452-04-15', '1519-05-02'),
                                                                                                 ('Vincent', 'van Gogh', 'Neerlandesa', '1853-03-30', '1890-07-29'),
                                                                                                 ('Jheronimus', 'Bosch', 'Neerlandesa', '1450-01-01', '1516-08-09'),
                                                                                                 ('Pablo', 'Picasso', 'Española', '1881-10-25', '1973-04-08'),
                                                                                                 ('Sandro', 'Botticelli', 'Italiana', '1445-03-01', '1510-05-17'),
                                                                                                 ('Johannes', 'Vermeer', 'Neerlandesa', '1632-10-31', '1675-12-15'),
                                                                                                 ('Francisco', 'de Goya', 'Española', '1746-03-30', '1828-04-16');

-- Obras iniciales
INSERT INTO obras (titulo, anio_creacion, tecnica, id_autor, id_museo) VALUES
                                                                           ('Las Meninas', 1656, 'Óleo sobre lienzo', 1, 1),
                                                                           ('La Gioconda', 1503, 'Óleo sobre tabla de álamo', 2, 2),
                                                                           ('Los girasoles', 1888, 'Óleo sobre lienzo', 3, 3),
                                                                           ('La rendición de Breda', 1635, 'Óleo sobre lienzo', 1, 1);