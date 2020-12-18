/*==============================================================*/
/* Table: CATEGORIA                                             */
/*==============================================================*/
create table CATEGORIA (
   ID_CATEGORIA         INT2                 not null,
   NOMBRE_CATEGORIA     CHAR(255)            null,
   constraint PK_CATEGORIA primary key (ID_CATEGORIA)
);

/*==============================================================*/
/* Index: CATEGORIA_PK                                          */
/*==============================================================*/
create unique index CATEGORIA_PK on CATEGORIA (
ID_CATEGORIA
);

/*==============================================================*/
/* Table: CITA                                                  */
/*==============================================================*/
create table CITA (
   ID_CITA              INT2                 not null,
   ID_USUARIO           INT2                 null,
   ID_CLIENTE           INT2                 null,
   FECHA                DATE                 null,
   HORA                 DATE                 null,
   MENSAJE              CHAR(255)            null,
   RESPUESTA            CHAR(255)            null,
   constraint PK_CITA primary key (ID_CITA)
);

/*==============================================================*/
/* Index: CITA_PK                                               */
/*==============================================================*/
create unique index CITA_PK on CITA (
ID_CITA
);

/*==============================================================*/
/* Index: PUEDE_FK                                              */
/*==============================================================*/
create  index PUEDE_FK on CITA (
ID_CLIENTE
);

/*==============================================================*/
/* Index: AGENDA_FK                                             */
/*==============================================================*/
create  index AGENDA_FK on CITA (
ID_USUARIO
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLIENTE           INT2                 not null,
   ID_CONYUGE           INT2                 null,
   ID_TRABAJO           INT2                 null,
   CEDULA_CLIENTE       NUMERIC              null,
   NOMBRES_CLIENTE      CHAR(255)            null,
   APELLIDOS_CLIENTE    CHAR(255)            null,
   DIRECCION_CLIENTE    CHAR(255)            null,
   CORREO_CLIENTE       CHAR(255)            null,
   TELEFONO_CLIENTE     CHAR(255)            null,
   NACIONALIDAD         CHAR(255)            null,
   FECHANAC             DATE                 null,
   SEXO                 CHAR(255)            null,
   PROFESION            CHAR(255)            null,
   ESTUDIOS             CHAR(255)            null,
   ESTADOCIVIL          CHAR(255)            null,
   TIPOLABORAL          CHAR(255)            null,
   CARGAS               NUMERIC              null,
   constraint PK_CLIENTE primary key (ID_CLIENTE)
);

/*==============================================================*/
/* Index: CLIENTE_PK                                            */
/*==============================================================*/
create unique index CLIENTE_PK on CLIENTE (
ID_CLIENTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_4_FK on CLIENTE (
ID_CONYUGE
);

/*==============================================================*/
/* Index: TIENE_8_FK                                            */
/*==============================================================*/
create  index TIENE_8_FK on CLIENTE (
ID_TRABAJO
);

/*==============================================================*/
/* Table: CONYUGE                                               */
/*==============================================================*/
create table CONYUGE (
   ID_CONYUGE           INT2                 not null,
   ID_CLIENTE           INT2                 null,
   ID_TRABAJOCONYUGE    INT2                 null,
   CEDULA_CONYUGE       NUMERIC         null,
   NOMBRES_CONYUGE      CHAR(255)            null,
   APELLIDOS_CONYUGE    CHAR(255)            null,
   DIRECCION            CHAR(255)            null,
   CORREO_CONYUGE       CHAR(255)            null,
   TELEFONO_CONYUGE     CHAR(255)            null,
   NACIONALIDAD_CONYUGE CHAR(255)            null,
   FECHANAC_CONYUGE     DATE                 null,
   SEXO_CONYUGE         CHAR(255)            null,
   TIPOLABORAL_CONYUGE  CHAR(255)            null,
   ESTUDIOS_CONYUGE     CHAR(255)            null,
   PROFESION_CONYUGES   CHAR(255)            null,
   constraint PK_CONYUGE primary key (ID_CONYUGE)
);

/*==============================================================*/
/* Index: CONYUGE_PK                                            */
/*==============================================================*/
create unique index CONYUGE_PK on CONYUGE (
ID_CONYUGE
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_3_FK on CONYUGE (
ID_CLIENTE
);

/*==============================================================*/
/* Index: TIENE_6_FK                                            */
/*==============================================================*/
create  index TIENE_6_FK on CONYUGE (
ID_TRABAJOCONYUGE
);

/*==============================================================*/
/* Table: DETALLETRABAJO                                        */
/*==============================================================*/
create table DETALLETRABAJO (
   ID_TRABAJO           INT2                 not null,
   ID_CLIENTE           INT2                 null,
   EMPRESA              CHAR(255)            null,
   ACTVIDAD             CHAR(255)            null,
   CIUDAD               CHAR(255)            null,
   DIRECCION            CHAR(255)            null,
   CARGO                CHAR(255)            null,
   TIEMPO_TR            NUMERIC              null,
   INGRESOS_TR          FLOAT8               null,
   constraint PK_DETALLETRABAJO primary key (ID_TRABAJO)
);

/*==============================================================*/
/* Index: DETALLETRABAJO_PK                                     */
/*==============================================================*/
create unique index DETALLETRABAJO_PK on DETALLETRABAJO (
ID_TRABAJO
);

/*==============================================================*/
/* Index: TIENE_9_FK                                            */
/*==============================================================*/
create  index TIENE_9_FK on DETALLETRABAJO (
ID_CLIENTE
);

/*==============================================================*/
/* Table: MARCAS                                                */
/*==============================================================*/
create table MARCAS (
   ID_MARCA             INT2                 not null,
   NOMBRE_MARCA         CHAR(255)            null,
   constraint PK_MARCAS primary key (ID_MARCA)
);

/*==============================================================*/
/* Index: MARCAS_PK                                             */
/*==============================================================*/
create unique index MARCAS_PK on MARCAS (
ID_MARCA
);

/*==============================================================*/
/* Table: PARIENTE                                              */
/*==============================================================*/
create table PARIENTE (
   ID_PARIENTES         INT2                 not null,
   ID_CLIENTE           INT2                 not null,
   NOMBRE_PARIENTES     CHAR(255)            null,
   TELEFONO_PARIENTES   CHAR(255)            null,
   RELACION_PARIENTES   CHAR(255)            null,
   CIUDAD_PARIENTE      CHAR(255)            null,
   DIRECCION_PARIENTE   CHAR(255)            null,
   constraint PK_PARIENTE primary key (ID_PARIENTES)
);

/*==============================================================*/
/* Index: PARIENTE_PK                                           */
/*==============================================================*/
create unique index PARIENTE_PK on PARIENTE (
ID_PARIENTES
);

/*==============================================================*/
/* Index: TIENE_FK                                              */
/*==============================================================*/
create  index TIENE_FK on PARIENTE (
ID_CLIENTE
);

/*==============================================================*/
/* Table: REFBANCARIA                                           */
/*==============================================================*/
create table REFBANCARIA (
   ID_REFBANCARIAS      INT2                 not null,
   ID_CLIENTE           INT2                 not null,
   NUMERO_CUENTA        CHAR(255)            null,
   TIPO_CUENTA          CHAR(255)            null,
   BANCO_CUENTA         CHAR(255)            null,
   constraint PK_REFBANCARIA primary key (ID_REFBANCARIAS)
);

/*==============================================================*/
/* Index: REFBANCARIA_PK                                        */
/*==============================================================*/
create unique index REFBANCARIA_PK on REFBANCARIA (
ID_REFBANCARIAS
);

/*==============================================================*/
/* Index: POSEE_FK                                              */
/*==============================================================*/
create  index POSEE_FK on REFBANCARIA (
ID_CLIENTE
);

/*==============================================================*/
/* Table: TRABAJOCONYUGE                                        */
/*==============================================================*/
create table TRABAJOCONYUGE (
   ID_TRABAJOCONYUGE    INT2                 not null,
   ID_CONYUGE           INT2                 null,
   EMPRESA_CONYUGE      CHAR(255)            null,
   ACTIVIDAD_CONYUGE    CHAR(255)            null,
   CIUDAD_CONYUGE       CHAR(255)            null,
   DIRECCION_CONYUGE    CHAR(255)            null,
   CARGO_CONYUGE        CHAR(255)            null,
   TIEMPO_TR_CONYUGE    NUMERIC              null,
   INGRESOS_TR_CONYUGE  FLOAT8               null,
   constraint PK_TRABAJOCONYUGE primary key (ID_TRABAJOCONYUGE)
);

/*==============================================================*/
/* Index: TRABAJOCONYUGE_PK                                     */
/*==============================================================*/
create unique index TRABAJOCONYUGE_PK on TRABAJOCONYUGE (
ID_TRABAJOCONYUGE
);

/*==============================================================*/
/* Index: TIENE_7_FK                                            */
/*==============================================================*/
create  index TIENE_7_FK on TRABAJOCONYUGE (
ID_CONYUGE
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   ID_USUARIO           INT2                 not null,
   USUARIO              CHAR(255)            null,
   CLAVE                CHAR(255)            null,
   CARGO                CHAR(255)            null,
   NOMBRE               CHAR(255)            null,
   constraint PK_USUARIO primary key (ID_USUARIO)
);

/*==============================================================*/
/* Index: USUARIO_PK                                            */
/*==============================================================*/
create unique index USUARIO_PK on USUARIO (
ID_USUARIO
);

/*==============================================================*/
/* Table: VEHICULO                                              */
/*==============================================================*/
create table VEHICULO (
   ID_VEHICULO          INT2                 not null,
   ID_CATEGORIA         INT2                 not null,
   ID_MARCA             INT2                 not null,
   ID_CLIENTE           INT2                 not null,
   MODELO               CHAR(255)            null,
   PRECIO               CHAR(255)            null,
   ANO_VEH              CHAR(255)            null,
   TIPO_VEH             CHAR(255)            null,
   KILOMETROS           CHAR(255)            null,
   constraint PK_VEHICULO primary key (ID_VEHICULO)
);

/*==============================================================*/
/* Index: VEHICULO_PK                                           */
/*==============================================================*/
create unique index VEHICULO_PK on VEHICULO (
ID_VEHICULO
);

/*==============================================================*/
/* Index: PERTENECE_FK                                          */
/*==============================================================*/
create  index PERTENECE_FK on VEHICULO (
ID_CLIENTE
);

/*==============================================================*/
/* Index: TIENE_5_FK                                            */
/*==============================================================*/
create  index TIENE_5_FK on VEHICULO (
ID_CATEGORIA
);

/*==============================================================*/
/* Index: TIENE_10_FK                                           */
/*==============================================================*/
create  index TIENE_10_FK on VEHICULO (
ID_MARCA
);

/*==============================================================*/
/* Table: VENTAS                                                */
/*==============================================================*/
create table VENTAS (
   ID_VENTA             INT2                 not null,
   ID_USUARIO           INT2                 not null,
   ID_VEHICULO          INT2                 null,
   ID_CLIENTE           INT2                 not null,
   NUM_FACTURA          NUMERIC              null,
   FECHA_ACTUAL         DATE                 null,
   FECHA_ENTREGA        DATE                 null,
   MOTOR                CHAR(255)            null,
   CHASIS               CHAR(255)            null,
   COLOR                CHAR(255)            null,
   ACCESORIOS           CHAR(255)            null,
   MATRICULAS           INT4                 null,
   constraint PK_VENTAS primary key (ID_VENTA)
);

/*==============================================================*/
/* Index: VENTAS_PK                                             */
/*==============================================================*/
create unique index VENTAS_PK on VENTAS (
ID_VENTA
);

/*==============================================================*/
/* Index: TIENE_4_FK                                            */
/*==============================================================*/
create  index TIENE_4_FK on VENTAS (
ID_CLIENTE
);

/*==============================================================*/
/* Index: PERTENECE_1_FK                                        */
/*==============================================================*/
create  index PERTENECE_1_FK on VENTAS (
ID_VEHICULO
);

/*==============================================================*/
/* Index: GENERA_FK                                             */
/*==============================================================*/
create  index GENERA_FK on VENTAS (
ID_USUARIO
);

alter table CITA
   add constraint FK_CITA_AGENDA_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO)
      on delete restrict on update restrict;

alter table CITA
   add constraint FK_CITA_PUEDE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_RELATIONS_CONYUGE foreign key (ID_CONYUGE)
      references CONYUGE (ID_CONYUGE)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_TIENE_8_DETALLET foreign key (ID_TRABAJO)
      references DETALLETRABAJO (ID_TRABAJO)
      on delete restrict on update restrict;

alter table CONYUGE
   add constraint FK_CONYUGE_RELATIONS_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table CONYUGE
   add constraint FK_CONYUGE_TIENE_6_TRABAJOC foreign key (ID_TRABAJOCONYUGE)
      references TRABAJOCONYUGE (ID_TRABAJOCONYUGE)
      on delete restrict on update restrict;

alter table DETALLETRABAJO
   add constraint FK_DETALLET_TIENE_9_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table PARIENTE
   add constraint FK_PARIENTE_TIENE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table REFBANCARIA
   add constraint FK_REFBANCA_POSEE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table TRABAJOCONYUGE
   add constraint FK_TRABAJOC_TIENE_7_CONYUGE foreign key (ID_CONYUGE)
      references CONYUGE (ID_CONYUGE)
      on delete restrict on update restrict;

alter table VEHICULO
   add constraint FK_VEHICULO_PERTENECE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table VEHICULO
   add constraint FK_VEHICULO_TIENE_10_MARCAS foreign key (ID_MARCA)
      references MARCAS (ID_MARCA)
      on delete restrict on update restrict;

alter table VEHICULO
   add constraint FK_VEHICULO_TIENE_5_CATEGORI foreign key (ID_CATEGORIA)
      references CATEGORIA (ID_CATEGORIA)
      on delete restrict on update restrict;

alter table VENTAS
   add constraint FK_VENTAS_GENERA_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO)
      on delete restrict on update restrict;

alter table VENTAS
   add constraint FK_VENTAS_PERTENECE_VEHICULO foreign key (ID_VEHICULO)
      references VEHICULO (ID_VEHICULO)
      on delete restrict on update restrict;

alter table VENTAS
   add constraint FK_VENTAS_TIENE_4_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;


/*---------------INSERCION DE DATOS ---------- */


INSERT INTO `categoria` (`ID_CATEGORIA`, `NOMBRE_CATEGORIA`) VALUES
(1, 'JEEP'),
(2, 'CAMIONETA'),
(3, 'CAMIÓN'),
(4, 'AUTOS');

INSERT INTO `cita` (`ID_CITA`, `ID_USUARIO`, `ID_CLIENTE`, `FECHA`, `HORA`, `MENSAJE`, `RESPUESTA`) VALUES
(1, 1, 1, '2020-12-07', '13:30:00', 'SE AGENDA LA CITA PARA ENSEÑARLE EL VEHICULO A SOLICITAR Y SUS DIFERENTES CARACTERISTICAS', 'CITA APROBADA POR EL SISTEMA'),
(2, 2, 2, '2020-07-09', '12:00:00', 'LA SEÑORA ANGELA MOREIRA SOLICITA UNA CITA PARA EL MEDIODÍA PARA CONOCER LOS DETALLES SOBRE UN CAMIÓN', 'CITA APROBADA'),
(3, 3, 3, '2020-04-11', '09:30:00', 'LA SEÑORA MYRA SOLICITA UNA CITA A LAS 9:30 AM PARA CONOCER LOS DETALLES DE UN COCHE QUE LE INTERESA', 'CITA APLAZADA PARA LAS 10:00 AM'),
(4, 3, 6, '2019-09-30', '11:00:00', 'EL SEÑOR JIMMY AGENDA UNA CITA PARA LAS 11:00 AM', 'CITA APROBADA'),
(5, 4, 4, '2020-11-01', '14:00:00', 'LA SEÑORA JEANINE JUNTO A SU ESPOSO AGENDA UNA CITA PARA QUE NUESTRO VENDEDOR LE DE MÁS DETALLES SOBRE UN VEHÍCULO QUE LES INTERESA', 'CITA APROBADA'),
(6, 2, 5, '2020-01-06', '15:00:00', 'EL SEÑOR RICARDO AGENDA CITA PARA QUE SE LE OTORGUE DETALLES A UN VEHÍCULO DE SU INTERÉS', 'CITA APROBADA');

	  
INSERT INTO `cliente` (`ID_CLIENTE`, `ID_CONYUGE`, `ID_TRABAJO`, `CEDULA_CLIENTE`, `NOMBRES_CLIENTE`, `APELLIDOS_CLIENTE`, `DIRECCION_CLIENTE`, `CORREO_CLIENTE`, `TELEFONO_CLIENTE`, `NACIONALIDAD`, `FECHANAC`, `SEXO`, `PROFESION`, `ESTUDIOS`, `ESTADOCIVIL`, `TIPOLABORAL`, `CARGAS`) VALUES
(1, NULL, 2, '1313462648', 'ERICK JOAO', 'MARRASQUIN MOREIRA', 'CALLE 113, AVENIDA 103 Y 104', 'erick-joao@hotmail.com', '0996311914', 'ECUATORIANO', '2000-07-05', 'MASCULINO', 'INGENIERO EN TECNOLOGIAS DE LA INFORMACION', 'SUPERIOR', 'SOLTERO', 'INDEPENDIENTE', '0'),
(2, 1, 1, '1308543287', 'ANGELA VERÓNICA', 'MOREIRA QUIROZ', 'FLAVIO REYES', 'verito@gmail.com', '0975425617', 'ECUATORIANA', '1985-03-01', 'MUJER', 'GERENTE DE COMERCIAL', 'SUPERIOR', 'CASADA', 'INDEPENDIENTE', '1'),
(3, 3, 3, '1416248734', 'MYRA', 'CEDEÑO VÉLEZ', 'EL PALMAR', 'msutlieff0@cam.ac.uk	', '6402586124', 'ALEMANA', '1970-06-14', 'FEMENINO', 'INGENIERA CIVIL', 'SUPERIOR', 'CASADA', 'DEPENDIENTE', '2'),
(4, 4, 4, '1800045126', 'JEANINE', 'PEÑA ARIZABALO', 'LA AURORA 2', 'blorem@blorem.net', '8502964564', 'VENEZOLANA', '1990-12-02', 'FEMENINO', 'MAESTRA EN FINANZAS', 'SUPERIOR', 'CASADA', 'DEPENDIENTE', '1'),
(5, 2, 5, '1131945627', 'RICARDO', 'HESOS GUIZABAL', 'TARQUI', 'guizabal130@gmail.com', '7824294645\r\n', 'ECUATORIANO', '1988-11-01', 'MASCULINO', 'ALBAÑILERÍA', 'BACHILLER', 'CASADO', 'DEPENDIENTE', '3'),
(6, NULL, 6, '1374568712', 'JIMMY', 'VIRTO ZALDO', 'COSTA AZUL', 'viritotrabajo@hotmail.com', '0984165247', 'ECUATORIANO', '1995-07-20', 'MASCULINO', 'INGENIERIO AMBIENTAL', 'SUPERIOR', 'DIVORCIADO', 'DEPENDIENTE', '0');

INSERT INTO `conyuge` (`ID_CONYUGE`, `ID_CLIENTE`, `ID_TRABAJOCONYUGE`, `CEDULA_CONYUGE`, `NOMBRES_CONYUGE`, `APELLIDOS_CONYUGE`, `DIRECCION`, `CORREO_CONYUGE`, `TELEFONO_CONYUGE`, `NACIONALIDAD_CONYUGE`, `FECHANAC_CONYUGE`, `SEXO_CONYUGE`, `TIPOLABORAL_CONYUGE`, `ESTUDIOS_CONYUGE`, `PROFESION_CONYUGES`) VALUES
(1, 2, 2, '800025512', 'JULIO CÉSAR', 'MARRASQUÍN MARRASQUÍN', 'FLAVIO REYES', 'cesarito21@gmail.com', '0997415314', 'ECUATORIANO', '1975-06-01', 'MASCULINO', 'DEPENDIENTE', 'SUPERIOR', 'CONTABILIDAD Y AUDITORIA'),
(2, 5, 1, '800046147', 'JUANA', 'HORMILLA ENGRABA', 'TARQUI', 'juanita23@gmail.com', '09974158264', 'ECUATORIANA', '1990-04-20', 'FEMENINO', 'INDEPENDIENTE', 'SUPERIOR', 'MARKETING'),
(3, 3, 3, '131475298', 'IVÁN', 'ARTEAGA DELGADO', 'EL PALMAR', 'doctor@gmail.com', '0984615475', 'ECUATORIANO', '1965-10-07', 'MASCULINO', 'DEPENDIENTE', 'SUPERIOR', 'MÉDICO'),
(4, 4, 4, '131415614', 'DANIEL', 'SALCEDO BUCARAM', 'LA AURORA 2', 'danielsalcedo@gmail.com', '0981542361', 'ECUATORIANO', '1980-05-25', 'MASCULINO', 'DEPENDIENTE', 'SUPERIOR', 'HOTELERIA Y TURISMO');


INSERT INTO `detalletrabajo` (`ID_TRABAJO`, `ID_CLIENTE`, `EMPRESA`, `ACTVIDAD`, `CIUDAD`, `DIRECCION`, `CARGO`, `TIEMPO_TR`, `INGRESOS_TR`) VALUES
(1, 2, 'COMERCIAL JC', 'TIENDA DE ABARROTES AL POR MAYOR Y MENOR', 'MANTA', 'CALLE 113, AVENIDA 103 - 104, FRENTE AL MERCADO LOS ESTEROS', 'ADMINISTRADOR', '2', 600),
(2, 1, 'COMERCIAL JC', 'TIENDA DE ABARROTES', 'MANTA', 'CALLE 113, AVENIDA 103 - 104 FRENTE MERCADO LOS ESTEROS', 'SUPERVISOR', '2', 400),
(3, 3, 'BOB CONSTRUCTOR INC', 'CONSTRUCCIÓN DE VIVIENDAS', 'MONTECRISTI', 'ELOY ALFARO', 'JEFA DE CONSTRUCCIÓN', '2', 2000),
(4, 4, 'IML', 'CAPACITACIONES SOBRE LA BOLSA', 'MANTA', 'SALÓN DE EVENTO MANTA HOST', 'CAPACITADORA', '3', 1000),
(5, 5, 'ZURITA', 'CONSTRUCCIÓN DE VIVIENDAS', 'MANTA', 'VIEJO TARQUI', 'ALBAÑIL', '1', 600),
(6, 6, 'CONSERVA ISABEL S.A', 'PRODUCCIÓN DE ENLATADOS', 'MANTA', 'VÍA PUERTO AEROPUERTO', 'SUPERVISOR AMBIENTAL', '4', 1800);


INSERT INTO `marcas` (`ID_MARCA`, `NOMBRE_MARCA`) VALUES
(1, 'KIA'),
(2, 'CHEVROLET'),
(3, 'NISSAN'),
(4, 'FORD'),
(5, 'TOYOTA');

INSERT INTO `pariente` (`ID_PARIENTES`, `ID_CLIENTE`, `NOMBRE_PARIENTES`, `TELEFONO_PARIENTES`, `RELACION_PARIENTES`, `CIUDAD_PARIENTE`, `DIRECCION_PARIENTE`) VALUES
(1, 1, 'HERIBERTO MARRASQUIN', '0994516812', 'TÍO', 'ESMERALDAS', 'LAS PALMAS'),
(2, 1, 'ALEXANDRA MOREIRA', '0984516241', 'TÍA', 'MANTA', 'LAS CAMPIÑAS'),
(3, 1, 'ERICK CEDEÑO', '0994512047', 'PRIMO', 'MANTA', 'JOCAY'),
(4, 2, 'JULIO MOREIRA', '0947812642', 'HERMANO', 'SANTA ANA', 'EL POLLO'),
(5, 2, 'HILDA MOREIRA', '0947612437', 'HERMANA', 'SANTA ANA', 'CAMINO NUEVO'),
(6, 3, 'GABRIEL MÉNDEZ', '0969417243', 'ABUELO', 'PORTOVIEJO', 'CIUDADELA LOS TAMARINDOS'),
(7, 3, 'PABLO CEDEÑO', '0942131614', 'PADRE', 'GUAYAQUIL', 'LOS CEIBOS'),
(8, 4, 'LESLY PEÑA', '0941521274', 'PRIMA', 'MANTA', 'URSA'),
(9, 4, 'AURORA ARIZABALO', '0941564273', 'HERMANA', 'GUAYAQUIL', 'SAUCES'),
(10, 5, 'EVELYN HESOS', '0921434927', 'TIA', 'QUITO', 'LA TOLA'),
(11, 5, 'ROMINA GUIZABAL', '0997424814', 'ABUELA', 'ESMERALDAS', 'ESMERALDAS'),
(12, 6, 'JOSÉ VIRTO', '0951634274', 'HERMANO', 'MANTA', 'LAS CUMBRES'),
(13, 6, 'OMAR ZALDO', '0976482592', 'SOBRINO', 'MANTA', 'LOS ESTEROS');

INSERT INTO `refbancaria` (`ID_REFBANCARIAS`, `ID_CLIENTE`, `NUMERO_CUENTA`, `TIPO_CUENTA`, `BANCO_CUENTA`) VALUES
(1, 1, '7410073709\r\n', 'CORRIENTE', 'PICHINCHA'),
(2, 1, '8462234192', 'AHORRO', 'BANCO DEL AUSTRO'),
(3, 2, '8375364843', 'CORRIENTE', 'BANCO DE GUAYAQUIL'),
(4, 2, '7500727152', 'CORRIENTE', 'BANCO DE MACHALA'),
(5, 3, '822237721', 'AHORRO', 'BANCO BOLIVARIANO'),
(6, 3, '7272103380\r\n', 'CORRIENTE', 'BANCO INTERNACIONAL'),
(7, 4, '7814607956', 'CORRIENTE', 'MUTUALISTA PICHINCHA'),
(8, 4, '6816299804', 'AHORRO', 'COOPERATIVA 15 DE ABRIL'),
(9, 5, '8590525783', 'AHORRO', 'COOPERATIVA 9 DE OCTUBRE'),
(10, 5, '883212655', 'CORRIENTE', 'PRODUBANCO'),
(11, 6, '8556084314', 'AHORRO', 'BANCO DE GUAYAQUIL'),
(12, 6, '7600298834', 'CORRIENTE', 'BANECUADOR');

INSERT INTO `trabajoconyuge` (`ID_TRABAJOCONYUGE`, `ID_CONYUGE`, `EMPRESA_CONYUGE`, `ACTIVIDAD_CONYUGE`, `CIUDAD_CONYUGE`, `DIRECCION_CONYUGE`, `CARGO_CONYUGE`, `TIEMPO_TR_CONYUGE`, `INGRESOS_TR_CONYUGE`) VALUES
(1, 2, 'FABRIL S.A', 'OPERADOR DE MAQUINARIA PESADA', 'MANTA', 'VÍA MANTA - MONTECRISTI', 'SUPERVISOR', '1', 1000),
(2, 1, 'UNIVERSIDAD LAICA ELOY ALFARO DE MANABÍ', 'ÁREA ADMINISTRATIVA', 'MANTA', 'LOS ELECTRICOS', 'JEFE DE BIENES', '35', 1400),
(3, 3, 'CLINICA LOS GAVILANES', 'MÉDICO', 'MANTA', 'URBIRRIOS', 'MÉDICO CIRUJANO', '1', 1500),
(4, 4, 'HOTEL ORO VERDE', 'HOSPEDAJE, EVENTOS', 'MANTA', 'PLAYA MURCIELAGO', 'SECRETARIO', '3', 950);

INSERT INTO `usuario` (`ID_USUARIO`, `USUARIO`, `CLAVE`, `CARGO`, `NOMBRE`) VALUES
(1, 'PedroRodriguez200', '456789', 'VENDEDOR', 'Pedro Ándres Rodriguez'),
(2, 'Adiela405', '123045', 'VENDEDORA', 'Adiela Yurani Ceballos'),
(3, 'Juan78', '478961', 'VENDEDOR', 'Juan Pablo Velasco'),
(4, 'EmmanuelM', '6548214', 'VENDEDOR', 'Emmanuel Martinez Aguirre');

INSERT INTO `vehiculo` (`ID_VEHICULO`, `ID_CATEGORIA`, `ID_MARCA`, `ID_CLIENTE`, `MODELO`, `PRECIO`, `ANO_VEH`, `TIPO_VEH`, `KILOMETROS`) VALUES
(1, 1, 1, 1, 'SPORTAGE EUROPA', '32000', '2020', 'NUEVO', '0KM'),
(2, 2, 2, 1, 'D-MAX HIGH POWER', '28000', '2021', 'NUEVO', '0KM'),
(3, 3, 2, 2, 'NLR 511', '24990', '2018', 'USADO', '10000KM'),
(4, 2, 4, 6, 'RANGER COURIER', '60000', '2021', 'NUEVO', '0KM'),
(5, 4, 3, 3, 'VERSA', '10000', '2018', 'USADO', '15000KM'),
(6, 1, 3, 4, 'PATHFINDER', '62990', '2020', 'NUEVO', '0KM'),
(7, 4, 5, 5, 'COROLLA', '14900', '2017', 'USADO', '50000KM');


INSERT INTO `ventas` (`ID_VENTA`, `ID_USUARIO`, `ID_VEHICULO`, `ID_CLIENTE`, `NUM_FACTURA`, `FECHA_ACTUAL`, `FECHA_ENTREGA`, `MOTOR`, `CHASIS`, `COLOR`, `ACCESORIOS`, `MATRICULAS`) VALUES
(1, 1, 1, 1, '1', '2020-06-10', '2020-06-25', 'MOTOR 2.0CC', '4sXA5DXC651CXC28544', 'ROJO', NULL, 'MBE-5448'),
(2, 1, 2, 1, '1', '2020-06-10', '2020-06-25', 'TURBO DIESEL', '4sXA5DXC651CXC2844155LJUX', 'GRIS', NULL, 'PMA-1230'),
(3, 2, 3, 2, '2', '2020-07-09', '2020-07-30', 'TURBO INTERCOOLER', '451DASDKX97DMBJ21X', 'BLANCO', NULL, 'GMA-1234'),
(4, 3, 4, 6, '3', '2019-10-01', '2019-10-31', 'MOTOR 2.2 DIESEL', '145MNYXC521H245XZ113', 'AZUL', 'CÁMARA DE RETRO', 'SNX-2012'),
(5, 3, 5, 3, '4', '2020-04-12', '2020-04-22', 'MOTOR 1.6CC', '7JNH9XAKS0X9A9XKA21', 'NEGRO', NULL, 'MBE-8632'),
(6, 4, 6, 4, '5', '2020-11-02', '2020-11-23', '3.5 LITROS V6', 'JSM213XKAL231LM212MXS', 'VINO', 'SENSOR MOVIMIENTO', 'BPDC-1232'),
(7, 2, 7, 5, '6', '2020-01-06', '2020-01-31', 'MOTOR 1.8', '12KSXM2139XMAL21MZA12L', 'AZUL', NULL, 'PLUA-1202');



/*------------------CONSULTA 1--------------------*/
--Mostrar los modelos vehículo que se vendieron desde Enero hasta mitad de año del 2020, adicional a que cliente se le fue otorgado

SELECT cliente.NOMBRES_CLIENTE as 'NOMBRES DE CLIENTE',
cliente.APELLIDOS_CLIENTE as 'APELLIDOS DE CLIENTE',
vehiculo.MODELO,
ventas.FECHA_ENTREGA as 'FECHA DE ENTREGA'
FROM ventas
INNER JOIN cliente on ventas.ID_CLIENTE=cliente.ID_CLIENTE
INNER JOIN vehiculo on ventas.ID_VEHICULO=vehiculo.ID_VEHICULO
WHERE (ventas.FECHA_ENTREGA>='2020/01/01' and ventas.FECHA_ENTREGA='2020/06/30')
ORDER BY ventas.FECHA_ENTREGA

/*------------------CONSULTA 2--------------------*/
--Mostrar la cantidad de ventas que han realizado cada uno de los usuario

SELECT ventas.ID_VENTA as 'ID',
usuario.NOMBRE as 'NOMBRE DEL VENDEDOR',
COUNT(ventas.ID_USUARIO) as 'CANTIDAD DE VENTAS'
FROM ventas
INNER JOIN usuario on ventas.ID_USUARIO=usuario.ID_USUARIO
GROUP BY ventas.ID_USUARIO

/*------------------CONSULTA 3--------------------*/
--Consultar un promedio general de los clientes que residen en la ciudad de Manta.

SELECT detalletrabajo.CIUDAD, 
COUNT(detalletrabajo.ID_CLIENTE) as 'CLIENTES',
AVG (detalletrabajo.INGRESOS_TR) as 'PROMEDIO DE INGRESOS'
FROM detalletrabajo 
WHERE detalletrabajo.CIUDAD='Manta'

/*------------------CONSULTA 4--------------------*/
--Mostrar las ventas realizada por un usuario que tenga el cargo ´VENDEDORA´

SELECT usuario.CARGO,
usuario.NOMBRE,
cliente.NOMBRES_CLIENTE as 'NOMBRES DEL CLIENTE',
cliente.APELLIDOS_CLIENTE as 'APELLIDOS DEL CLIENTE',
ventas.FECHA_ENTREGA 'FECHA DE ENTREGA',
vehiculo.MODELO as 'MODELO DEL VEHICULO'
FROM ventas 
INNER JOIN vehiculo on ventas.ID_VEHICULO=vehiculo.ID_VEHICULO
INNER JOIN cliente on ventas.ID_CLIENTE=cliente.ID_CLIENTE
INNER JOIN usuario on ventas.ID_USUARIO=usuario.ID_USUARIO
WHERE usuario.CARGO='VENDEDORA'


