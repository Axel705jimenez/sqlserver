--Sql
USE master;
GO
IF DB_ID (N'Minecraft') IS NOT NULL
	Drop DATABASE MINECRAFT;
	GO
CREATE DATABASE Minecraft

ON   
( NAME = Minecraft_dat,  
    FILENAME = 'C:\BD\BD\MINECRAFT.mdf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 )  
LOG ON  
( NAME = Sales_log,  
    FILENAME = 'C:\BD\BD\MINECRAFT.ldf',  
    SIZE = 5MB,  
    MAXSIZE = 25MB,  
    FILEGROWTH = 5MB );  
GO
USE Minecraft;
GO

CREATE TABLE Aldea
(
	idAldea int identity(1,1),
	estilo varchar(50) not null,
	evento varchar(50) not null,
	botin varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Amigo
(
	idAmigo int identity(1,1),
	gamertag varchar(50) not null,
	aspecto Varchar(50)not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Animal
(
	idAnimal int identity(1,1),
	puntosVida varchar(50) not null,
	botin varchar(50) not null,
	tipoAnimal varchar(50),
	estatus bit default 1 not null
);
GO

CREATE TABLE Arma
(
	idArma int identity(1,1),
	tipoArma varchar(50) not null,
	nombre varchar(50) not null,
	material varchar(50) not null,
	daño int not null,
	resistencia int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Armadura
(
	idArmadura int identity(1,1),
	material varchar(50) not null,
	nombre varchar(50)not null,
	resistencia int not null,
	idInventario int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Bloque
(
	idBloque int identity(1,1),
	material varchar(50) not null,
	nombre varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Chat
(
	idChat int identity(1,1),
	fuente varchar(50) not null,
	color varchar(50) not null,
	espaciadoLinea int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Chunk
(
	idChunk int identity(1,1),
	limite int not null,
	formato varchar not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Comercio
(
	idComercio int identity(1,1),
	tipoComercio varchar(50) not null,
	tipoIntercambio varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Comida
(
	idComida int identity(1,1),
	tipo varchar not null,
	valorNutrimental int not null,
	nombre varchar(50) not null,
	ingredientes varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE ConfigMundo
(
	idConfigMundo int identity(1,1),
	modoJuego varchar(50) not null,
	dificultad varchar(50) not null,
	preferencia varchar(50) not null,
	semilla varchar(50) not null,
	tipo int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE ConfigUsuario
(
	idConfigUsuario int identity(1,1),
	gamertag varchar(50) not null,
	idioma varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Coordenada
(
	idCoordenada int identity(1,1),
	ejeX int not null,
	ejeY int not null,
	ejeZ int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Crafteo
(
	idCrafteo int identity(1,1),
	tipo varchar(50)not null,
	detalle varchar(50) not null,
	idMesaTrabajo int not null,
	idInventario int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Cultivo
(
	idCultivo int identity(1,1),
	tiempoCultivo varchar(50) not null,
	tipo varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Dimension
(
	idDimension int identity(1,1),
	nombre varchar(30) not null,
	estilo varchar(50) not null,
	cicloDelDia varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Ecosistema
(
	idEcosistema int identity(1,1),
	tipo varchar(50) not null,
	tamaño int not null,
	bioma varchar(50) not null,
	clima varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Efecto
(
	idEfecto int identity(1,1),
	tipo varchar(50) not null,
	durabilidad int not null,
	nombre varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Encantamiento
(
	idEncantamiento int identity(1,1),
	tipo varchar(50) not null,
	durabilidad int not null,
	nombre varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Estadistica
(
	idEstadistica int identity(1,1),
	dsitanciaRecorrida int not null,
	distanciaVolada int not null,
	distanciaCaida int not null,
	saltos int not null,
	numeroMuertes int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE Estructura
(
	idEstructura int identity(1,1),
	tipo varchar(50) not null,
	estilo varchar not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Evento
(
	idEvento int identity(1,1),
	tipo varchar(50) not null,
	fechainicio datetime not null,
	fechaCierre datetime not null,
	duarbilidad int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Fluido
(
	idFluido int identity(1,1),
	tipo int not null,
	nombre varchar(50)not null,
	nivelFluido int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Fortaleza
(
	idFortaleza int identity(1,1),
	botin datetime not null,
	nombre varchar(50) not null,
	estilo int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Generacion
(
	idGeneracion int identity(1,1),
	tipo datetime not null,
	lugarGeneracion varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Herramienta
(
	idHerramienta int identity(1,1),
	material varchar(50) not null,
	nombre varchar(50) not null,
	resistencia int not null,
	tipo varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Inventario
(
	idInventario int identity(1,1),
	espacio int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Item
(
	idItem int identity(1,1),
	tipo varchar(50) not null,
	nombre varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Jefe
(
	idJefe int identity(1,1),
	dimension varchar(50) not null,
	habilidad varchar(50) not null,
	puntosVida int not null,
	nombre varchar(50) not null,
	estatus bit default 1 not null
);
GO


CREATE TABLE Jugador
(
	idJugador int identity(1,1),
	gamertag varchar(50) not null,
	aspecto varchar(50) not null,
	puntosVida int not null,
	puntosAlimento int not null,
	puntosExperiencia int not null,
	idInventario int not null,
	idConfigMundo int not null,
	idMenu int not null,
	idEstadistica int not null,
	idConfigUsuario int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Logro
(
	idLogro int identity(1,1),
	nombre varchar(50) not null,
	recompensa varchar(50) not null,
	puntosJugador int not null,
	tiempoJuego int not null,
	tipo varchar(50) not null,
	idJugador int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Mascota
(
	idMascota int identity(1,1),
	nombre varchar(50) not null,
	tipo int not null,
	puntosVida int not null,
	comida int not null,
	idJugador int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Menu
(
	idMenu int identity(1,1),
	accion varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE MesaTrabajo
(
	idMesaTrabajo int identity(1,1),
	tipo varchar(50) not null,
	idInventario int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Mob
(
	idMob int identity(1,1),
	puntosVida int not null,
	botin varchar(50) not null,
	habilidad varchar(50) not null,
	tipo varchar(50) not null,
	nombre varchar(50) not null,
	puntosDaño int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Modd
(
	idModd int identity(1,1),
	nombre varchar(50) not null,
	versionMod int not null,
	formato varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE ModoJuego
(
	idModoJuego int identity(1,1),
	tipo varchar(50) not null,
	dificultad varchar(50) not null,
	preferencia varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE ModoServidor
(
	idModoServidor int identity(1,1),
	tipo int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Mundo
(
	idMundo int identity(1,1),
	nombre varchar(50) not null,
	tipo varchar(50) not null,
	idParche int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Sonido
(
	idSonido int identity(1,1),
	principal varchar(50) not null,
	musica int not null,
	ambiente varchar(50) not null,
	bloque int not null,
	criatura int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE PackRecurso
(
	idPackRecurso int identity(1,1),
	nombre varchar(50) not null,
	formato varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE PackTextura
(
	idPackTextura int identity(1,1),
	nombre varchar(50) not null,
	formato varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Parche
(
	idParche int identity(1,1),
	versioParche int not null,
	formato varchar(50) not null,
	fechaActualizacion datetime not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Pesca
(
	idPesca int identity(1,1),
	tipo varchar(50) not null,
	botin varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Plugin
(
	idPlugin int identity(1,1),
	nombre varchar(50) not null,
	main varchar(50) not null,
	versionPlugin int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Pocion
(
	idPocion int identity(1,1),
	nombre varchar(50) not null,
	tipo varchar(50) not null,
	puntosDaño int not null,
	puntosVida int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Servidor
(
	idServidor int identity(1,1),
	nombre varchar(50) not null,
	dificultad varchar(50) not null,
	idModoServidor int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Stack
(
	idStack int identity(1,1),
	nombre varchar(50) not null,
	limiteItem int not null,
	idInventario int not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Templo
(
	idTemplo int identity(1,1),
	estilo varchar(50) not null,
	tipo varchar(50) not null,
	nombre varchar(50) not null,
	botin varchar(50) not null,
	estatus bit default 1 not null
);
GO

CREATE TABLE Tesoro
(
	idTesoro int identity(1,1),
	tipo datetime not null,
	botin varchar(30) not null,
	estatus bit default 1 not null
);

CREATE TABLE MundoParche
(
	idMundoParche int identity(1,1),
	idMundo int not null,
	idParche int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE EncantamientoEfecto
(
	idEncantamientoEfecto int identity(1,1),
	idEncantamiento int not null,
	idEfecto int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE JugadorAmigo
(
	idJugadorAmigo int identity(1,1),
	idJugador int not null,
	idAmigo int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE JugadorComercio
(
	idJugadorComercio int identity(1,1),
	idJugador int not null,
	idComercio int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE JugadorItem
(
	idJugadorItem int identity(1,1),
	idJugador int not null,
	idItem int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE JugadorServidor
(
	idJugadorServidor int identity(1,1),
	idJugador int not null,
	idServidor int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MesaTrabajoEncantamiento
(
	idMesaTrabajoEncantamiento int identity(1,1),
	idMesaTrabajo int not null,
	idEncantamiento int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MesaTrabajoJugador
(
	idMesaTrabajoJugador int identity(1,1),
	idMesaTrabajo int not null,
	idJugador int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoAldea
(
	idMundoAldea int identity(1,1),
	idMundo int not null,
	idAldea int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoBloque
(
	idMundoBloque int identity(1,1),
	idMundo int not null,
	idBloque int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoDimension
(
	idMundoDimension int identity(1,1),
	idMundo int not null,
	idDimension int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoEcosistema
(
	idMundoEcosistema int identity(1,1),
	idMundo int not null,
	idEcosistema int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoEstructura
(
	idMundoEstructura int identity(1,1),
	idMundo int not null,
	idEstructura int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MundoFluido
(
	idMundoFluido int identity(1,1),
	idMundo int not null,
	idFluido int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoFortaleza
(
	idMundoFortaleza int identity(1,1),
	idMundo int not null,
	idFortaleza int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoGeneracion
(
	idMundoGeneracion int identity(1,1),
	idMundo int not null,
	idGeneracion int not null,
	estatus bit default 1 not null,
);
GO
CREATE TABLE MundoJefe
(
	idMundoJefe int identity(1,1),
	idMundo int not null,
	idJefe int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MundoJugador
(
	idMundoJugador int identity(1,1),
	idMundo int not null,
	idJugador int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MundoMob
(
	idMundoMob int identity(1,1),
	idMundo int not null,
	idMob int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MundoModd
(
	idMundoModd int identity(1,1),
	idMundo int not null,
	idModd int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MundoPackRecurso
(
	idMundoPackrecurso int identity(1,1),
	idMundo int not null,
	idPackRecurso int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MundoPackTextura
(
	idMundoPackTextura int identity(1,1),
	idMundo int not null,
	idPackTextura int not null,
	estatus bit default 1 not null,
);
GO

CREATE TABLE MundoTemplo
(
	idMundoTemplo int identity(1,1),
	idMundo int not null,
	idTemplo int not null,
	estatus bit default 1 not null,
);
GO



--Llaves primarias
ALTER TABLE Aldea ADD CONSTRAINT PK_Aldea PRIMARY KEY (idAldea)
ALTER TABLE Amigo ADD CONSTRAINT PK_Amigo PRIMARY KEY (idAmigo)
ALTER TABLE Animal ADD CONSTRAINT PK_Animal PRIMARY KEY (idAnimal)
ALTER TABLE Arma ADD CONSTRAINT PK_Arma PRIMARY KEY (idArma)
ALTER TABLE Armadura ADD CONSTRAINT PK_Armadura PRIMARY KEY (idArmadura)
ALTER TABLE Bloque ADD CONSTRAINT PK_Bloque PRIMARY KEY (idBloque)
ALTER TABLE Chat ADD CONSTRAINT PK_Chat PRIMARY KEY (idChat)
ALTER TABLE Chunk ADD CONSTRAINT PK_Chunk PRIMARY KEY (idChunk)
ALTER TABLE Comida ADD CONSTRAINT PK_Comida PRIMARY KEY (idComida)
ALTER TABLE Comercio ADD CONSTRAINT PK_Comercio PRIMARY KEY (idComercio)
ALTER TABLE ConfigMundo ADD CONSTRAINT PK_ConfigMundo PRIMARY KEY (idConfigMundo)
ALTER TABLE ConfigUsuario ADD CONSTRAINT PK_ConfigUsuario PRIMARY KEY (idConfigUsuario)
ALTER TABLE Coordenada ADD CONSTRAINT PK_Coordenada PRIMARY KEY (idCoordenada)
ALTER TABLE Crafteo ADD CONSTRAINT PK_Crafteo PRIMARY KEY (idCrafteo)
ALTER TABLE Cultivo ADD CONSTRAINT PK_Cultivo PRIMARY KEY (idCultivo)
ALTER TABLE Dimension ADD CONSTRAINT PK_Dimension PRIMARY KEY (idDimension)
ALTER TABLE Ecosistema ADD CONSTRAINT PK_Ecosistema PRIMARY KEY (idEcosistema)
ALTER TABLE Efecto ADD CONSTRAINT PK_Efecto PRIMARY KEY (idEfecto)
ALTER TABLE Encantamiento ADD CONSTRAINT PK_Encantamiento PRIMARY KEY (idEncantamiento)
ALTER TABLE Estadistica ADD CONSTRAINT PK_Estadistica PRIMARY KEY (idEstadistica)
ALTER TABLE Estructura ADD CONSTRAINT PK_Estructura PRIMARY KEY (idEstructura)
ALTER TABLE Evento ADD CONSTRAINT PK_Evento PRIMARY KEY (idEvento)
ALTER TABLE Fluido ADD CONSTRAINT PK_Fluido PRIMARY KEY (idFluido)
ALTER TABLE Fortaleza ADD CONSTRAINT PK_Fortaleza PRIMARY KEY (idFortaleza)
ALTER TABLE Generacion ADD CONSTRAINT PK_Generacion PRIMARY KEY (idGeneracion)
ALTER TABLE Herramienta ADD CONSTRAINT PK_Herramienta PRIMARY KEY (idHerramienta)
ALTER TABLE Inventario ADD CONSTRAINT PK_Inventario PRIMARY KEY (idInventario)
ALTER TABLE Item ADD CONSTRAINT PK_Item PRIMARY KEY (idItem)
ALTER TABLE Jefe ADD CONSTRAINT PK_Jefe PRIMARY KEY (idJefe)
ALTER TABLE Jugador ADD CONSTRAINT PK_Jugador PRIMARY KEY (idJugador)
ALTER TABLE Logro ADD CONSTRAINT PK_Logro PRIMARY KEY (idLogro)
ALTER TABLE Mascota ADD CONSTRAINT PK_Mascota PRIMARY KEY (idMascota)
ALTER TABLE Menu ADD CONSTRAINT PK_Menu PRIMARY KEY (idMenu)
ALTER TABLE MesaTrabajo ADD CONSTRAINT PK_MesaTrabajo PRIMARY KEY (idMesaTrabajo)
ALTER TABLE Mob ADD CONSTRAINT PK_Mob PRIMARY KEY (idMob)
ALTER TABLE Modd ADD CONSTRAINT PK_Modd PRIMARY KEY (idModd)
ALTER TABLE ModoJuego ADD CONSTRAINT PK_ModoJuego PRIMARY KEY (idModoJuego)
ALTER TABLE ModoServidor ADD CONSTRAINT PK_ModoServidor PRIMARY KEY (idModoServidor)
ALTER TABLE Mundo ADD CONSTRAINT PK_Mundo PRIMARY KEY (idMundo)
ALTER TABLE Sonido ADD CONSTRAINT PK_Sonido PRIMARY KEY (idSonido)
ALTER TABLE PackRecurso ADD CONSTRAINT PK_PackRecurso PRIMARY KEY (idPackRecurso)
ALTER TABLE PackTextura ADD CONSTRAINT PK_PackTextura PRIMARY KEY (idPackTextura)
ALTER TABLE Parche ADD CONSTRAINT PK_Parche PRIMARY KEY (idParche)
ALTER TABLE Pesca ADD CONSTRAINT PK_Pesca PRIMARY KEY (idPesca)
ALTER TABLE Plugin ADD CONSTRAINT PK_Plugin PRIMARY KEY (idPlugin)
ALTER TABLE Pocion ADD CONSTRAINT PK_Pocion PRIMARY KEY (idPocion)
ALTER TABLE Servidor ADD CONSTRAINT PK_Servidor PRIMARY KEY (idServidor)
ALTER TABLE Templo ADD CONSTRAINT PK_Templo PRIMARY KEY (idTemplo)
ALTER TABLE Stack ADD CONSTRAINT PK_Stack PRIMARY KEY (idStack)
ALTER TABLE Tesoro ADD CONSTRAINT PK_Tesoro PRIMARY KEY (idTesoro)


--Foraneas Pendientes
--Crafteo
ALTER TABLE Crafteo ADD CONSTRAINT FK_CrafteoMesaTrabajo FOREIGN KEY (idMesaTrabajo) REFERENCES 
MesaTrabajo(idMesaTrabajo)
ALTER TABLE Crafteo ADD CONSTRAINT FK_CrafteoInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario)
--Jugador
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario)
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorConfigMundo FOREIGN KEY (idConfigMundo) REFERENCES 
ConfigMundo(idConfigMundo)
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorMenu FOREIGN KEY (idMenu) REFERENCES 
Menu(idMenu)
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorEstadistica FOREIGN KEY (idEstadistica) REFERENCES 
Estadistica(idEstadistica)
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorConfigUsuario FOREIGN KEY (idConfigUsuario) REFERENCES 
ConfigUsuario(idConfigUsuario)
--Logro
ALTER TABLE Logro ADD CONSTRAINT FK_LogroJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
--Mascota
ALTER TABLE Mascota ADD CONSTRAINT FK_MascotaJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
--MesaTrabajo
ALTER TABLE MesaTrabajo ADD CONSTRAINT FK_MesaTrabajoInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario)
--Mundo
ALTER TABLE Mundo ADD CONSTRAINT FK_MundoParche FOREIGN KEY (idParche) REFERENCES 
Parche(idParche)
--Servidor
ALTER TABLE Servidor ADD CONSTRAINT FK_idServidorModoServidor FOREIGN KEY (idModoServidor) REFERENCES 
ModoServidor(idModoServidor)
--Stack
ALTER TABLE Stack ADD CONSTRAINT FK_StackInventario FOREIGN KEY (idInventario) REFERENCES 
Inventario(idInventario)
--MundoParche
ALTER TABLE MundoParche ADD CONSTRAINT FK_MundoParcheMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoParche ADD CONSTRAINT FK_MundoParcheParche FOREIGN KEY (idParche) REFERENCES 
Parche(idParche)
--EncantamientoEfecto
ALTER TABLE EncantamientoEfecto ADD CONSTRAINT FK_EncantamientoEfectoEfecto FOREIGN KEY (idEfecto) REFERENCES 
Efecto(idEfecto)
ALTER TABLE EncantamientoEfecto ADD CONSTRAINT FK_EncantamientoEfectoEncantamiento FOREIGN KEY (idEncantamiento) REFERENCES 
Encantamiento(idEncantamiento)
--JugadorAmigo
ALTER TABLE JugadorAmigo ADD CONSTRAINT FK_JugadorAmigoAmigo FOREIGN KEY (idAmigo) REFERENCES 
Amigo(idAmigo)
ALTER TABLE JugadorAmigo ADD CONSTRAINT FK_JugadorAmigoJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
--JugadorComercio
ALTER TABLE JugadorComercio ADD CONSTRAINT FK_JugadorComercioComercio FOREIGN KEY (idComercio) REFERENCES 
Comercio(idComercio)
ALTER TABLE JugadorComercio ADD CONSTRAINT FK_JugadorComercioJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
--JugadorItem
ALTER TABLE JugadorItem ADD CONSTRAINT FK_JugadorItemItem FOREIGN KEY (idItem) REFERENCES 
Item(idItem)
ALTER TABLE JugadorItem ADD CONSTRAINT FK_JugadorItemJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
--JugadorServidor
ALTER TABLE JugadorServidor ADD CONSTRAINT FK_JugadorServidorServidor FOREIGN KEY (idServidor) REFERENCES 
Servidor(idServidor)
ALTER TABLE JugadorServidor ADD CONSTRAINT FK_JugadorServidorJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
--MesaTrabajoEncantamiento
ALTER TABLE MesaTrabajoEncantamiento ADD CONSTRAINT FK_MesaTrabajoEncantamientoEncantamiento FOREIGN KEY (idEncantamiento) REFERENCES 
Encantamiento(idEncantamiento)
ALTER TABLE MesaTrabajoEncantamiento ADD CONSTRAINT FK_MesaTrabajoEncantamientoMesaTrabajo FOREIGN KEY (idMesatrabajo) REFERENCES 
MesaTrabajo(idMesaTrabajo)
--MesaTrabajoJugador
ALTER TABLE MesaTrabajoJugador ADD CONSTRAINT FK_MesaTrabajoJugadorJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
ALTER TABLE MesaTrabajoJugador ADD CONSTRAINT FK_MesaTrabajoJugadorMesaTrabajo FOREIGN KEY (idMesaTrabajo) REFERENCES 
MesaTrabajo(idMesaTrabajo)
--MundoAldea
ALTER TABLE MundoAldea ADD CONSTRAINT FK_MundoAldeaAldea FOREIGN KEY (idAldea) REFERENCES 
Aldea(idAldea)
ALTER TABLE MundoAldea ADD CONSTRAINT FK_MundoAldeaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
--MundoBloque
ALTER TABLE MundoBloque ADD CONSTRAINT FK_MundoBloqueMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoBloque ADD CONSTRAINT FK_MundoBloqueBloque FOREIGN KEY (idBloque) REFERENCES 
Bloque(idBloque)
--MundoDimension
ALTER TABLE MundoDimension ADD CONSTRAINT FK_MundoDimension FOREIGN KEY (idDimension) REFERENCES 
Dimension(idDimension)
--MundoEcosistema
ALTER TABLE MundoEcosistema ADD CONSTRAINT FK_MundoEcosistemaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoEcosistema ADD CONSTRAINT FK_MundoEcosistemaEcosistema FOREIGN KEY (idEcosistema) REFERENCES 
Ecosistema(idEcosistema)
--MundoEstructura
ALTER TABLE MundoEstructura ADD CONSTRAINT FK_MundoEsctructuraMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoEstructura ADD CONSTRAINT FK_MundoEstructura FOREIGN KEY (idEstructura) REFERENCES 
Estructura(idEstructura)
--MundoFluido
ALTER TABLE MundoFluido ADD CONSTRAINT FK_MundoFluidoMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoFluido ADD CONSTRAINT FK_MundoFluidoFluido FOREIGN KEY (idFluido) REFERENCES 
Fluido(idFluido)
--MundoFortaleza
ALTER TABLE MundoFortaleza ADD CONSTRAINT FK_MundoFortalezaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoFortaleza ADD CONSTRAINT FK_MundoFortalezaFortaleza FOREIGN KEY (idFortaleza) REFERENCES 
Fortaleza(idFortaleza)
--MundoGeneracion
ALTER TABLE MundoGeneracion ADD CONSTRAINT FK_MundoGeneracionGeneracion FOREIGN KEY (idGeneracion) REFERENCES 
Generacion(idGeneracion)
ALTER TABLE MundoGeneracion ADD CONSTRAINT FK_MundoGeneracionMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
--MundoJefe
ALTER TABLE MundoJefe ADD CONSTRAINT FK_MundoJefeMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoJefe ADD CONSTRAINT FK_MundoJefeJefe FOREIGN KEY (idJefe) REFERENCES 
Jefe(idJefe)
--MundoJugador
ALTER TABLE MundoJugador ADD CONSTRAINT FK_MundoJugadorMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoJugador ADD CONSTRAINT FK_MundoJugadorJugador FOREIGN KEY (idJugador) REFERENCES 
Jugador(idJugador)
--MundoMob
ALTER TABLE MundoMob ADD CONSTRAINT FK_MundoMobMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoMob ADD CONSTRAINT FK_MundoMobMob FOREIGN KEY (idMob) REFERENCES 
Mob(idMob)
--MundoMod
ALTER TABLE MundoModd ADD CONSTRAINT FK_MundoModdMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoModd ADD CONSTRAINT FK_MundoModdModd FOREIGN KEY (idModd) REFERENCES 
Modd(idModd)
--MundoPackRecurso
ALTER TABLE MundoPackRecurso ADD CONSTRAINT FK_MundoPackRecursoMundo FOREIGN KEY (idMundo) REFERENCES 
Encantamiento(idEncantamiento)
ALTER TABLE MundoPackRecurso ADD CONSTRAINT FK_MundoPackRecursoPackRecurso FOREIGN KEY (idPackRecurso) REFERENCES 
PackRecurso(idPackrecurso)
--MundoPackTextura
ALTER TABLE MundoPackTextura ADD CONSTRAINT FK_MundoPackTexturaMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoPackTextura ADD CONSTRAINT FK_MundoPackTexturaPackTextura FOREIGN KEY (idPackTextura) REFERENCES 
PackTextura(idPackTextura)
--MundoTemplo
ALTER TABLE MundoTemplo ADD CONSTRAINT FK_MundoTemploMundo FOREIGN KEY (idMundo) REFERENCES 
Mundo(idMundo)
ALTER TABLE MundoTemplo ADD CONSTRAINT FK_MundoTemploTemplo FOREIGN KEY (idTemplo) REFERENCES 
Templo(idTemplo)


--Index
CREATE INDEX IX_Aldea ON Aldea(idAldea)
CREATE INDEX IX_Amigo ON Amigo(idAmigo)
CREATE INDEX IX_Animal ON Animal(idAnimal)
CREATE INDEX IX_Arma ON Arma(idArma)
CREATE INDEX IX_Armadura ON Armadura(idArmadura)
CREATE INDEX IX_Bloque ON Bloque(idBloque)
CREATE INDEX IX_Chat ON Chat (idChat)
CREATE INDEX IX_Chunk ON Chunk(idChunk)
CREATE INDEX IX_Comida ON Comida (idComida)
CREATE INDEX IX_Comercio ON Comercio (idComercio)
CREATE INDEX IX_ConfigMundo ON ConfigMundo(idConfigMundo)
CREATE INDEX IX_ConfigUsuario ON ConfigUsuario(idConfigUsuario)
CREATE INDEX IX_Coordenada ON Coordenada(idCoordenada)
CREATE INDEX IX_Crafteo ON Crafteo(idCrafteo)
CREATE INDEX IX_Cultivo ON Cultivo(idCultivo)
CREATE INDEX IX_Dimension ON Dimension(idDimension)
CREATE INDEX IX_Ecosistema ON Ecosistema(idEcosistema)
CREATE INDEX IX_Efecto ON Efecto(idEfecto)
CREATE INDEX IX_Encantamiento ON Encantamiento(idEncantamiento)
CREATE INDEX IX_Estadistica ON Estadistica(idEstadistica)
CREATE INDEX IX_Estructura ON Estructura(idEstructura)
CREATE INDEX IX_Evento ON Evento(idEvento)
CREATE INDEX IX_Fluido ON Fluido(idFluido)
CREATE INDEX IX_Fortaleza ON Fortaleza(idFortaleza)
CREATE INDEX IX_Generacion ON Generacion(idGeneracion)
CREATE INDEX IX_Herramienta ON Herramienta(idHerramienta)
CREATE INDEX IX_Inventario ON Inventario(idInventario)
CREATE INDEX IX_Item ON Item(idItem)
CREATE INDEX IX_Jefe ON Jefe(idJefe)
CREATE INDEX IX_Jugador ON Jugador(idJugador)
CREATE INDEX IX_Logro ON Logro(idLogro)
CREATE INDEX IX_Mascota ON Mascota(idMascota)
CREATE INDEX IX_Menu ON Menu(idMenu)
CREATE INDEX IX_MesaTrabajo ON MesaTrabajo(idMesaTrabajo)
CREATE INDEX IX_Mob ON Mob(idMob)
CREATE INDEX IX_Modd ON Modd(idModd)
CREATE INDEX IX_ModoJuego ON ModoJuego(idModoJuego)
CREATE INDEX IX_ModoServidor ON ModoServidor(idModoServidor)
CREATE INDEX IX_Mundo ON Mundo(idMundo)
CREATE INDEX IX_Sonido ON Sonido(idSonido)
CREATE INDEX IX_PackRecurso ON PackRecurso(idPackRecurso)
CREATE INDEX IX_PackTextura ON PackTextura(idPackTextura)
CREATE INDEX IX_Parche ON Parche(idParche)
CREATE INDEX IX_Pesca ON Pesca(idPesca)
CREATE INDEX IX_Plugin ON Plugin(idPlugin)
CREATE INDEX IX_Pocion ON Pocion(idPocion)
CREATE INDEX IX_Servidor ON Servidor(idServidor)
CREATE INDEX IX_Templo ON Templo(idTemplo)
CREATE INDEX IX_Stack ON Stack(idStack)
CREATE INDEX IX_Tesoro ON Tesoro(idTesoro)

--Aldea
INSERT INTO Aldea(estilo, evento, botin) values ('Desierto','Asalto', 'Pala de hierro')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Llanura','Cultivo', 'Trigo')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Prado','Asalto', 'Pala de piedra')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Sabana','Asalto', 'Azada de hierro')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Taiga nevada','Hordas', 'carne podrida')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Llanura','Asalto', 'pan')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Taiga','Cultivo', 'Zanahorias')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('LLanura nevada','Cultivo', 'Remolachas')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Desierto','Asalto', 'Libros')
GO
INSERT INTO Aldea(estilo, evento, botin) values ('Taiga nevada','Asalto', 'Mapa')
GO
--Amigo
INSERT INTO Amigo(gamertag, aspecto) values ('Barbiqiu', 'Calamardo')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('AxRadiel', 'Personalizado')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('juso', 'Zombie')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('Roles', 'Creeper')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('yosare', 'Endeman')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('lucho', 'Personalizado')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('rino', 'Jirafa')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('losa', 'Creeper')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('serrato', 'Zombie')
GO
INSERT INTO Amigo(gamertag, aspecto) values ('Yusiniu', 'Personalizado')
GO

SELECT *FROM Aldea
UPDATE Aldea SET estilo = 'Desierto' WHERE idAldea = 1
GO
SELECT *FROM Aldea
DELETE FROM Aldea WHERE idAldea = 1
GO
SELECT *FROM Aldea

--Animal
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Cuero', 'Vaca')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Leche', 'Vaca')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (5, 'Ternera', 'Oveja')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Carne de res', 'Vaca')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (4, 'Carne de cerdo', 'Cerdo')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (1, 'Bacalao', 'Pez')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (2, 'Pluma', 'pollo')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (5, 'Cuero', 'Caballo')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (3, 'Cuero de conejo', 'Conejo')
GO
INSERT INTO Animal(puntosVida, botin, tipoAnimal) values (3, 'carne de conejo', 'Conejo')
GO

--Armadura
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Diamante', 'Armadura de diamante', 6, 1, 1)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Oro', 'Armadura de oro', 3, 1, 2)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Hierro', 'Armadura de hierro', 4, 1,3)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Cuero', 'Armadura de cuero',  2, 1,4)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Maya', 'Armadura de Maya', 1, 1,5)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Netherita', 'Armadura de netherita', 7, 1,6)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Diamante', 'Armadura de diamante para caballo', 6, 1,7)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Oro', 'Armadura de oro para caballo',3, 1,8)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Hierro', 'Armadura de hierro para caballo', 4, 1,9)
GO
INSERT INTO Armadura(material, nombre, resistencia, estatus, idInventario) values ('Cuero', 'Armadura de cuero para caballo', 2, 1,10)
GO

--Bloque
INSERT INTO Bloque(material, nombre) values ('piedra','Bloque de piedra')
GO
INSERT INTO Bloque(material, nombre) values ('Cuarzo','Bloque de cuarzo')
GO
INSERT INTO Bloque(material, nombre) values ('Madera','Bloque de madera')
GO
INSERT INTO Bloque(material, nombre) values ('piedra rojiza','Bloque de piedra rojiza')
GO
INSERT INTO Bloque(material, nombre) values ('Hierro','Bloque de hierro')
GO
INSERT INTO Bloque(material, nombre) values ('Tierra','Bloque de tierra')
GO
INSERT INTO Bloque(material, nombre) values ('Obsidiana','Bloque de obsidiana')
GO
INSERT INTO Bloque(material, nombre) values ('Prismarina','Bloque de prismarina')
GO
INSERT INTO Bloque(material, nombre) values ('Piedra','bloque de piedra')
GO
INSERT INTO Bloque(material, nombre) values ('Oro','Bloque de oro')
GO


--Chat
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Arial', 'Azul', '1')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Arial', 'Rojo', '2')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Calibri', 'Verde', '1')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Times New Roman', 'Azul', '1')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Arial', 'Amarillo', '2')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Arial Narrow', 'Morado', '1')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Times New Roman', 'Verde', '2')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Arial', 'Verde', '1')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Candara', 'Azul', '2')
GO
INSERT INTO Chat(fuente, color, espaciadoLinea) values ('Arial Narrow', 'Azul', '1')
GO


