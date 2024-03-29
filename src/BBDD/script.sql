CREATE DATABASE IF NOT EXISTS `304-AH-INTER-SERVERII-ANDREA-OSMANY`;

USE `304-AH-INTER-SERVERII-ANDREA-OSMANY`;

CREATE TABLE `CLIENT` (
    `idCliente` INT NOT NULL,
    `nom` VARCHAR(50) NOT NULL,
    `prenom` VARCHAR(50) NOT NULL,
    `password` VARCHAR(50) NOT NULL,
    `userName` VARCHAR(50) NOT NULL,
    `adresseCivique` VARCHAR(50) NOT NULL,
    `ville` VARCHAR(70) NOT NULL,
    `pays` VARCHAR(60) NOT NULL,
    `codePostale` VARCHAR(20) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `telephone` VARCHAR(12) NOT NULL,
    `documentPayement` VARCHAR(16),
    `docPTitular` VARCHAR(50),
    `picture` VARCHAR(150),
    PRIMARY KEY (`idCliente`),
    UNIQUE KEY `Unique_clientDocPayement` (`documentPayement`),
    UNIQUE KEY `Unique_clientEmail` (`email`),
    UNIQUE KEY `Unique_clientTelephone` (`telephone`)
) ENGINE=InnoDB;

CREATE TABLE `COMMANDE` (
    `idCommande` INT NOT NULL,
    `productID` INT NOT NULL,
    `prixUnitaire` DECIMAL(10,2) NOT NULL,
    `unitees` SMALLINT NOT NULL,
    `factureID` INT NOT NULL,
    PRIMARY KEY (`idCommande`),
    CONSTRAINT `FK_COMMANDE_FACTURE` FOREIGN KEY (`factureID`) REFERENCES `FACTURE` (`idFacture`),
    CONSTRAINT `FK_COMMANDE_PRODUIT` FOREIGN KEY (`productID`) REFERENCES `PRODUIT` (`idProduit`)
) ENGINE=InnoDB;

CREATE TABLE `FACTURE` (
    `idFacture` INT NOT NULL,
    `numeroCommande` CHAR(10) NOT NULL,
    `dateReception` DATE NOT NULL,
    `dateEstimeeLivraison` DATE NOT NULL,
    `adresseFacturation` VARCHAR(400) NOT NULL,
    `total` DECIMAL(10,2) NOT NULL,
    `adresseLivraison` VARCHAR(400) NOT NULL,
    `clientID` INT NOT NULL,
    PRIMARY KEY (`idFacture`),
    CONSTRAINT `FK_FACTURE_CLIENT` FOREIGN KEY (`clientID`) REFERENCES `CLIENT` (`idCliente`)
) ENGINE=InnoDB;

CREATE TABLE `PRODUIT` (
    `idProduit` INT AUTO_INCREMENT NOT NULL,
    `nom` VARCHAR(50) NOT NULL,
    `marque` VARCHAR(150) NOT NULL,
    `categorie` VARCHAR(50) NOT NULL,
    `prix` DECIMAL(10,2) NOT NULL,
    `couleur` VARCHAR(50),
    `taille` VARCHAR(50) NOT NULL,
    `enStock` SMALLINT NOT NULL,
    `materiau` VARCHAR(100) NOT NULL,
    `genre` VARCHAR(50) NOT NULL,
    `description` TEXT,
    `image` VARCHAR(300),
    PRIMARY KEY (`idProduit`)
) ENGINE=InnoDB;





USE `304-AH-INTER-SERVERII-ANDREA-OSMANY`;

INSERT INTO `CLIENT`
    (`idCliente`,
     `nom`,
     `prenom`,
     `password`,
     `userName`,
     `adresseCivique`,
     `ville`,
     `pays`,
     `codePostale`,
     `email`,
     `telephone`,
     `documentPayement`,
     `docPTitular`,
     `picture`)
VALUES
    (1, 'Doe', 'John', 'password123', 'johndoe', '123 Main St', 'Anytown', 'Country', '12345', 'john.doe@example.com', '123-456-7890', 'paymentdoc123', 'IDdoc123', 'URL_IMAGEN_1'),
    (2, 'Smith', 'Jane', 'password456', 'janesmith', '456 Oak Ave', 'Othertown', 'Country', '54321', 'jane.smith@example.com', '987-654-3210', 'paymentdoc456', 'IDdoc456', 'URL_IMAGEN_2'),
    (3, 'Johnson', 'Mike', 'password789', 'mikejohnson', '789 Elm St', 'Anothertown', 'Country', '67890', 'mike.johnson@example.com', '567-890-1234', 'paymentdoc789', 'IDdoc789', 'URL_IMAGEN_3'),
    (4, 'Brown', 'Sarah', 'passwordabc', 'sarahbrown', '101 Pine St', 'Somewhere', 'Country', '09876', 'sarah.brown@example.com', '321-654-9870', 'paymentdocabc', 'IDdocabc', 'URL_IMAGEN_4'),
    (5, 'Williams', 'Chris', 'passworddef', 'chriswilliams', '202 Maple Ave', 'Nowhere', 'Country', '13579', 'chris.williams@example.com', '987-654-3201', 'paymentdocdef', 'IDdocdef', 'URL_IMAGEN_5'),
    (6, 'Jones', 'Lisa', 'passwordghi', 'lisajones', '303 Birch St', 'Anywhere', 'Country', '24680', 'lisa.jones@example.com', '654-321-0987', 'paymentdocghi', 'IDdocghi', 'URL_IMAGEN_6'),
    (7, 'Garcia', 'Juan', 'passwordjkl', 'juangarcia', '404 Cedar Ave', 'Everywhere', 'Country', '97531', 'juan.garcia@example.com', '321-098-7654', 'paymentdocjkl', 'IDdocjkl', 'URL_IMAGEN_7'),
    (8, 'Martinez', 'Maria', 'passwordmno', 'mariamartinez', '505 Pineapple St', 'Nowhere', 'Country', '86420', 'maria.martinez@example.com', '398-765-4321', 'paymentdocmno', 'IDdocmno', 'URL_IMAGEN_8'),
    (9, 'Rodriguez', 'Pedro', 'passwordpqr', 'pedrorodriguez', '606 Orange Ave', 'Somewhere', 'Country', '12367', 'pedro.rodriguez@example.com', '765-432-1098', 'paymentdocpqr', 'IDdocpqr', 'URL_IMAGEN_9'),
    (10, 'Gonzalez', 'Ana', 'passwordstu', 'anagonzalez', '707 Grape St', 'Anywhere', 'Country', '23456', 'ana.gonzalez@example.com', '432-109-8765', 'paymentdocstu', 'IDdocstu', 'URL_IMAGEN_10'),
    (11, 'Lopez', 'Carlos', 'passwordvwx', 'carloslopez', '808 Lemon Ave', 'Everywhere', 'Country', '76543', 'carlos.lopez@example.com', '109-876-5432', 'paymentdocvwx', 'IDdocvwx', 'URL_IMAGEN_11'),
    (12, 'Hernandez', 'Laura', 'passwordyz', 'laurahernandez', '909 Banana St', 'Nowhere', 'Country', '98765', 'laura.hernandez@example.com', '876-543-2109', 'paymentdocyz', 'IDdocyz', 'URL_IMAGEN_12'),
    (13, 'Gomez', 'Javier', 'password123', 'javiergomez', '1010 Cherry Ave', 'Anywhere', 'Country', '34567', 'javier.gomez@example.com', '543-210-9876', 'paymentdoc132', 'IDdoc123', 'URL_IMAGEN_13'),
    (14, 'Perez', 'Marta', 'password456', 'martaperez', '1111 Plum St', 'Somewhere', 'Country', '45678', 'marta.perez@example.com', '210-987-6543', 'paymentdoc462', 'IDdoc456', 'URL_IMAGEN_14'),
    (15, 'Sanchez', 'Raul', 'password789', 'raulsanchez', '1212 Apple Ave', 'Everywhere', 'Country', '56789', 'raul.sanchez@example.com', '987-654-2103', 'paymentdoc879', 'IDdoc789', 'URL_IMAGEN_15'),
    (16, 'Ramirez', 'Sofia', 'passwordabc', 'sofiaramirez', '1313 Pear St', 'Nowhere', 'Country', '67890', 'sofia.ramirez@example.com', '654-321-9087', 'paymentdocpbc', 'IDdocabc', 'URL_IMAGEN_16'),
    (17, 'Torres', 'Diego', 'passworddef', 'diegotorres', '1414 Peach Ave', 'Somewhere', 'Country', '78901', 'diego.torres@example.com', '321-908-7654', 'paymentdocdvf', 'IDdocdef', 'URL_IMAGEN_17'),
    (18, 'Vargas', 'Ana', 'passwordghi', 'anavargas', '1515 Pine St', 'Anywhere', 'Country', '89012', 'ana.vargas@example.com', '598-765-4321', 'paymentdocghy', 'IDdocghi', 'URL_IMAGEN_18'),
    (19, 'Reyes', 'Mario', 'passwordjkl', 'marioreyes', '1616 Oak St', 'Everywhere', 'Country', '90123', 'mario.reyes@example.com', '765-432-0098', 'paymentdbcjkl', 'IDdocjkl', 'URL_IMAGEN_19');




USE `304-AH-INTER-SERVERII-ANDREA-OSMANY`;

INSERT INTO `PRODUIT`
    (`nom`,
     `marque`,
     `categorie`,
     `prix`,
     `couleur`,
     `taille`,
     `enStock`,
     `materiau`,
     `genre`,
     `description`,
     `image`)
VALUES
    ('Camisa de algodón', 'Levi''s', 'Ropa', 29.99, 'Blanco', 'M', 50, 'Algodón', 'Unisex', 'Camisa de manga corta, ideal para el verano.', 'https://antoniosclothing.com/cdn/shop/products/Hb6375ea4adba4c279b882815ac80f964b.jpg?v=1659982984'),
    ('Pantalón vaquero', 'Wrangler', 'Ropa', 39.99, 'Azul', 'L', 30, 'Denim', 'Hombre', 'Pantalón vaquero clásico, estilo casual.', 'https://i.etsystatic.com/9964556/r/il/e74d0a/1607647941/il_570xN.1607647941_ec5b.jpg'),
    ('Zapatos deportivos', 'Nike', 'Calzado', 49.99, 'Negro', '42', 40, 'Sintético', 'Unisex', 'Zapatos deportivos cómodos y duraderos.', 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/df4a762e-7cf3-4e3f-b3dc-315a2f352b6f/precision-6-zapatillas-de-baloncesto-bZT1QN.png'),
    ('Vestido de fiesta', 'H&M', 'Ropa', 99.99, 'Rojo', 'S', 20, 'Seda', 'Mujer', 'Elegante vestido de fiesta, perfecto para ocasiones especiales.', 'https://hips.hearstapps.com/hmg-prod/images/vestido-bonito-fiesta-tirantes-joya-7-1-1654863333.jpg?resize=980:*'),
    ('Reloj de pulsera', 'Montinari', 'Accesorios', 79.99, 'Plata', 'Única', 15, 'Acero inoxidable', 'Unisex', 'Reloj de pulsera resistente al agua.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Montinari_Milano.jpg/640px-Montinari_Milano.jpg'),
    ('Gafas de sol', 'Ray-Ban', 'Accesorios', 29.99, 'Negro', 'Única', 25, 'Plástico', 'Unisex', 'Gafas de sol con protección UV.', 'https://images2.ray-ban.com//cdn-record-files-pi/2072a667-899f-4fe7-bb3a-a3590018edf9/021dc39d-b50b-49dc-9600-acfd006926be/0RB2132__601S78__STD__shad__qt.png?impolicy=RB_Product_clone&width=700&bgc=%23f2f2f2'),
    ('Chaqueta de cuero', 'Guess', 'Ropa', 149.99, 'Negro', 'XL', 10, 'Cuero', 'Hombre', 'Chaqueta de cuero genuino, estilo clásico.', 'https://maxlimstore.cl/wp-content/uploads/2021/06/WhatsApp-Image-2021-05-27-at-23.55.46-2.jpeg'),
    ('Bolso de mano', 'Michael Kors', 'Accesorios', 59.99, 'Marrón', 'Única', 30, 'Cuero sintético', 'Mujer', 'Bolso de mano elegante y espacioso.', 'https://falabella.scene7.com/is/image/FalabellaCO/4236868_1?wid=800&hei=800&qlt=70'),
    ('Pantalón de vestir', 'Zara', 'Ropa', 69.99, 'Gris', 'M', 35, 'Algodón', 'Hombre', 'Pantalón de vestir cómodo y elegante.', 'https://ae01.alicdn.com/kf/Sa91c224a2ac44f909d92b342a5d153c9a.jpg_300x300Q70.jpg_.webp'),
    ('Bufanda de lana', 'Burberry', 'Accesorios', 19.99, 'Azul', 'Única', 45, 'Lana', 'Unisex', 'Bufanda suave y abrigada para el invierno.', 'https://cdnx.jumpseller.com/glamurosaschilee/image/29478083/54243526-7284-4711-B56C-9D622E23B199.jpeg?1668563464'),
    ('Gorra deportiva', 'Adidas', 'Accesorios', 14.99, 'Verde', 'Única', 60, 'Poliéster', 'Unisex', 'Gorra deportiva ajustable y transpirable.', 'https://www.beautystoreperu.com/cdn/shop/products/WhatsAppImage2023-03-08at9.51.57AM.jpg?v=1678288717'),
    ('Sudadera con capucha', 'Under Armour', 'Ropa', 49.99, 'Negro', 'L', 25, 'Algodón', 'Unisex', 'Sudadera con capucha y bolsillo frontal.', 'https://i.ebayimg.com/thumbs/images/g/CrYAAOSw5jRlmOzK/s-l640.jpg'),
    ('Botas de montaña', 'Salomon', 'Calzado', 89.99, 'Marrón', '41', 20, 'Piel', 'Hombre', 'Botas resistentes para actividades al aire libre.', 'https://m.media-amazon.com/images/I/718ta23i+3L._AC_UY300_.jpg'),
    ('Pulsera de plata', 'Tiffany & Co.', 'Accesorios', 39.99, 'Plata', 'Única', 35, 'Plata de ley', 'Unisex', 'Pulsera de diseño elegante y moderno.', 'https://okdiario.com/img/2020/10/26/limpiar-una-pulsera-de-plata.jpg'),
    ('Camiseta básica', 'Gap', 'Ropa', 9.99, 'Blanco', 'S', 70, 'Algodón', 'Mujer', 'Camiseta básica de algodón, ideal para el día a día.', 'https://aritzia.scene7.com/is/image/Aritzia/s24_04_a02_117209_11420_on_b?wid=1200'),
    ('Cinturón de cuero', 'Louis Vuitton', 'Accesorios', 24.99, 'Negro', 'Única', 40, 'Cuero genuino', 'Unisex', 'Cinturón de cuero resistente y elegante.', 'https://rockfordcl.vtexassets.com/arquivos/ids/402871/RK102031467_447_1.jpg?v=637949693338570000'),
    ('Chaleco acolchado', 'The North Face', 'Ropa', 79.99, 'Azul', 'M', 15, 'Nylon', 'Hombre', 'Chaleco acolchado ligero y abrigado.', 'https://images.asos-media.com/products/chaleco-azul-saikuru-de-the-north-face/24350561-1-stormblueaviatorn?$n_640w$&wid=513&fit=constrain'),
    ('Pantalón corto deportivo', 'Puma', 'Ropa', 19.99, 'Gris', 'L', 50, 'Poliéster', 'Unisex', 'Pantalón corto deportivo, ideal para entrenamientos.', 'https://http2.mlstatic.com/D_NQ_NP_892582-MLA53995336720_022023-O.webp'),
    ('Bañador', 'Speedo', 'Ropa', 29.99, 'Rojo', 'M', 30, 'Nylon', 'Hombre', 'Bañador cómodo y de secado rápido.', 'https://resize.sprintercdn.com/f/261x261/products/0373856/boxers-ankor_0373856_00_4_365366719.jpg'),
    ('Mochila', 'Eastpak', 'Accesorios', 34.99, 'Negro', 'Única', 25, 'Poliéster', 'Unisex', 'Mochila espaciosa y cómoda para llevar tus cosas.', 'https://oechsle.vteximg.com.br/arquivos/ids/15150472/2384514.jpg?v=638281790941430000');
