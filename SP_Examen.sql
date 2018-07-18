/* SP para Ingresar Datos en la tabla Escolares */
CREATE PROCEDURE sp_Escolar_Agregar
    @Nombre VARCHAR(100),
    @Apellido VARCHAR(100),
    @Direccion VARCHAR(100),
    @Colegio VARCHAR(100),
    @HoraBusqueda CHAR(10),
    @HoraRegreso CHAR(10)
AS
BEGIN
    INSERT INTO Escolares
        (Nom_Escolar, Ape_Escolar,Dir_Escolar,Cole_Escolar,HoraBusqueda_Escolar,HoraRegreso_Escolar)
    VALUES
        (UPPER(@Nombre), UPPER(@Apellido), UPPER(@Direccion), UPPER(@Colegio), @HoraBusqueda, @HoraRegreso)
END
GO
/* Ejecutamos sp_Escolar_Agregar*/
EXEC sp_Escolar_Agregar @Nombre='Anthonny', @Apellido='Quispe',@Direccion='San Vicente',@Colegio='Sepulveda',@Horabusqueda='08:00 AM',
@HoraRegreso='12:00 PM'
GO

/* SP Eliminar */
CREATE PROCEDURE sp_Escolares_Delete
AS
BEGIN
    DELETE FROM Escolares WHERE IdEscolar=''---Ingresar un codigo---
END
GO
/* Ejecutamos */
EXEC sp_Escolares_Delete 
GO

/* SP Para Modificar los datos de los Escolares */
CREATE PROCEDURE SP_Escolares_Update
    @IdEscolar int,
    @Nombre VARCHAR(100),
    @Apellido VARCHAR(100),
    @Direccion VARCHAR(100),
    @Colegio VARCHAR(100),
    @HoraBusqueda CHAR(10),
    @HoraRegreso CHAR(10)
AS
BEGIN
    UPDATE Escolares
SET Nom_Escolar = @Nombre,
    Ape_Escolar = @Apellido,
    Dir_Escolar = @Direccion,
    Cole_Escolar = @Colegio,
    HoraBusqueda_Escolar = @HoraBusqueda,
    HoraRegreso_Escolar = @HoraRegreso
    WHERE IdEscolar = @IdEscolar
ENd
GO

/* SP para ingresar datos en la tabla Apoderados */
SELECT *
FROM Apoderados
Go
CREATE PROCEDURE sp_Apoderados_Agregar
    @Nombre VARCHAR(100),
    @Apellido VARCHAR(100),
    @Celular CHAR(9),
    @Escolares INT
AS
BEGIN
    INSERT INTO Apoderados
        (Nom_Apoderado,Ape_Apoderado,Cel_Apoderado,Escolares_IdEscolar)
    VALUES
        (UPPER(@Nombre), UPPER(@Apellido), UPPER(@Celular), UPPER(@Escolares))
END
GO
/* EJECUTAMOS */
EXEC sp_Apoderados_Agregar @Nombre='Jose',@Apellido='Castilla',@Celular='935557273',@Escolares='2'
GO
CREATE PROCEDURE sp_Apoderados_Delete
AS
BEGIN
    DELETE FROM Apoderados WHERE IdApoderados=''---Ingresar un codigo---
END
GO
/* Ejecutamos */
EXEC sp_Apoderados_Delete 
GO

/* Sp Modificar los datos de los Apoderados */
CREATE PROCEDURE SP_Apoderados_Update
    @IdApoderados INT,
    @Nombre VARCHAR(100),
    @Apellido VARCHAR(100),
    @Celular CHAR(9),
    @Escolares INT
AS
BEGIN
    UPDATE Apoderados
SET Nom_Apoderado =  @Nombre,
    Ape_Apoderado = @Apellido,
    Cel_Apoderado = @Celular,
    Escolares_IdEscolar = @Escolares
    WHERE IdApoderados = @IdApoderados
ENd
GO

/* SP para insertar datos en la tabla Asistentes */
CREATE PROCEDURE sp_Asistentes_Agregar
    @Nombre VARCHAR(100),
    @Apellido VARCHAR(100),
    @Celular VARCHAR(9)
AS
BEGIN
    INSERT INTO Asistentes
        (Nom_Asistente,Ape_Asistente,Cel_Asistente)
    VALUES
        (UPPER(@Nombre), UPPER(@Apellido), UPPER(@Celular))
END
GO
/* Ejecutamos el  sp_Asistentes_Agregar*/
EXEC sp_Asistentes_Agregar @Nombre='Andres', @Apellido='Lopez',@Celular='123456789'
GO

/* sp Para ELiminar */
CREATE PROCEDURE sp_Asistentes_Delete
AS
BEGIN
    DELETE FROM Asistentes WHERE idAsistente=''---Ingresar un codigo---
END
GO
/* Ejecutamos */
EXEC sp_Asistentes_Delete 
GO

/* Modificar los datos de la tabla Asistentes */
CREATE PROCEDURE SP_Asistentes_Update
    @IdAsistentes INT,
    @Nombre VARCHAR(100),
    @Apellido VARCHAR(100),
    @Celular CHAR(9)
AS
BEGIN
    UPDATE Asistentes
SET Nom_Asistente =  @Nombre,
    Ape_Asistente = @Apellido,
    Cel_Asistente = @Celular
    WHERE idAsistente = @IdAsistentes
ENd
GO

/* sp para ingresar datos en la tabla Choferes */
SELECT * FROM Choferes
