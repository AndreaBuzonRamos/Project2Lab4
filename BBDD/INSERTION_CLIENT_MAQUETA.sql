USE [304-AH-INTER-SERVERII-ANDREA-OSMANY]
GO

INSERT INTO [dbo].[CLIENT]
           ([idCliente]
           ,[nom]
           ,[prenom]
           ,[password]
           ,[userName]
           ,[adresseCivique]
           ,[ville]
           ,[pays]
           ,[codePostale]
           ,[email]
           ,[telephone]
           ,[documentPayement]
           ,[docPTitular]
           ,[picture])
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
           (19, 'Reyes', 'Mario', 'passwordjkl', 'marioreyes', '1616 Oak St', 'Everywhere', 'Country', '90123', 'mario.reyes@example.com', '765-432-0098', 'paymentdbcjkl', 'IDdocjkl', 'URL_IMAGEN_19')
GO
           