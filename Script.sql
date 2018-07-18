-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-07-18 14:37:27.524

-- tables
-- Table: Apoderados
CREATE TABLE Apoderados (
    IdApoderados int identity(1,1) ,
    Nom_Apoderado varchar(100)  ,
    Ape_Apoderado varchar(100)  ,
    Cel_Apoderado char(9)  ,
    Escolares_IdEscolar int  ,
    CONSTRAINT Apoderados_pk PRIMARY KEY  (IdApoderados)
);

-- Table: Asistentes
CREATE TABLE Asistentes (
    idAsistente int identity(1,1) ,
    Nom_Asistente varchar(100)  ,
    Ape_Asistente varchar(100)  ,
    Cel_Asistente char(9)  ,
    CONSTRAINT Asistentes_pk PRIMARY KEY  (idAsistente)
);

-- Table: Autobus
CREATE TABLE Autobus (
    IdBus int identity(1,1) ,
    CantidadBus char(50)  ,
    Placa_Bus varchar(10)  ,
    Papeleta_Bus varchar(50)  ,
    MontoPapeleta_Bus char(50)  ,
    KilometrajeInicio_Bus char(100)  ,
    KilometrajeFin_Bus char(100)  ,
    Choferes_IdChoferes int  ,
    Escolares_IdEscolar int  ,
    CONSTRAINT Autobus_pk PRIMARY KEY  (IdBus)
);

-- Table: Choferes
CREATE TABLE Choferes (
    IdChoferes int identity(1,1) ,
    Nom_Chofer varchar(100)  ,
    Ape_Chofer varchar(100)  ,
    Cel_Chofer char(9)  ,
    Asistentes_idAsistente int  ,
    CONSTRAINT Choferes_pk PRIMARY KEY  (IdChoferes)
);

-- Table: Costos
CREATE TABLE Costos (
    IdCosto int identity(1,1) ,
    Distancia_Costo varchar(100)  ,
    Tiempo_Costo char(100)  ,
    CONSTRAINT Costos_pk PRIMARY KEY  (IdCosto)
);

-- Table: Escolares
CREATE TABLE Escolares (
    IdEscolar int identity(1,1) ,
    Nom_Escolar varchar(100)  ,
    Ape_Escolar varchar(100)  ,
    Dir_Escolar varchar(100)  ,
    Cole_Escolar varchar(100)  ,
    HoraBusqueda_Escolar char(10)  ,
    HoraRegreso_Escolar char(10)  ,
    CONSTRAINT Escolares_pk PRIMARY KEY  (IdEscolar)
);

-- Table: Servicios
CREATE TABLE Servicios (
    IdServicios int identity(1,1) ,
    Tipo_Servicio varchar(50)  ,
    Costos_IdCosto int  ,
    Autobus_IdBus int  ,
    Apoderados_IdApoderados int  ,
    CONSTRAINT Servicios_pk PRIMARY KEY  (IdServicios)
);

-- foreign keys
-- Reference: Apoderados_Escolares (table: Apoderados)
ALTER TABLE Apoderados ADD CONSTRAINT Apoderados_Escolares
    FOREIGN KEY (Escolares_IdEscolar)
    REFERENCES Escolares (IdEscolar);

-- Reference: Autobus_Choferes (table: Autobus)
ALTER TABLE Autobus ADD CONSTRAINT Autobus_Choferes
    FOREIGN KEY (Choferes_IdChoferes)
    REFERENCES Choferes (IdChoferes);

-- Reference: Autobus_Escolares (table: Autobus)
ALTER TABLE Autobus ADD CONSTRAINT Autobus_Escolares
    FOREIGN KEY (Escolares_IdEscolar)
    REFERENCES Escolares (IdEscolar);

-- Reference: Choferes_Asistentes (table: Choferes)
ALTER TABLE Choferes ADD CONSTRAINT Choferes_Asistentes
    FOREIGN KEY (Asistentes_idAsistente)
    REFERENCES Asistentes (idAsistente);

-- Reference: Servicios_Apoderados (table: Servicios)
ALTER TABLE Servicios ADD CONSTRAINT Servicios_Apoderados
    FOREIGN KEY (Apoderados_IdApoderados)
    REFERENCES Apoderados (IdApoderados);

-- Reference: Servicios_Autobus (table: Servicios)
ALTER TABLE Servicios ADD CONSTRAINT Servicios_Autobus
    FOREIGN KEY (Autobus_IdBus)
    REFERENCES Autobus (IdBus);

-- Reference: Servicios_Costos (table: Servicios)
ALTER TABLE Servicios ADD CONSTRAINT Servicios_Costos
    FOREIGN KEY (Costos_IdCosto)
    REFERENCES Costos (IdCosto);

-- End of file.

