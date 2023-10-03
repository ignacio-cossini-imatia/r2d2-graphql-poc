-- JIRA: IP-58 --
CREATE TABLE MaestroFormaFarmaceutica (
    id serial NOT NULL,
    codigoCima varchar(10) NOT NULL,
    descripcion varchar(2000) NOT NULL,
    CONSTRAINT MaestroFormaFarmaceutica_PK PRIMARY KEY(id) );

ALTER TABLE Medicamento
ADD COLUMN descripcion varchar(2000),
ADD COLUMN codigoNacional varchar(20) UNIQUE NOT NULL,
ADD COLUMN unidades integer NOT NULL,
ADD COLUMN precioVentaCentimos integer,
ADD COLUMN idFormaFarmaceutica integer,
ADD COLUMN emblistable BOOLEAN,
ADD COLUMN codigoBarras varchar(50),
ADD CONSTRAINT Medicamento_FK_MaestroFormaFarmaceutica FOREIGN KEY (idFormaFarmaceutica) REFERENCES MaestroFormaFarmaceutica(id);

INSERT INTO MaestroFormaFarmaceutica(codigoCima, descripcion) VALUES
	('1', 'ADHESIVO TISULAR'),
	('2', 'APÓSITO'),
	('3', 'BARNIZ DE UÑAS'),
	('4', 'CAPSULA'),
	('5', 'CAPSULA LIBERACION MODIFICADA'),
	('6', 'CHAMPU'),
	('7', 'CHICLE'),
	('8', 'COLIRIO'),
	('9', 'COLIRIO DE LIBERACION PROLONGADA'),
	('10', 'COMPRIMIDO'),
	('11', 'COMPRIMIDO BUCAL/PARA CHUPAR'),
	('12', 'COMPRIMIDO BUCODISPERSABLE/LIOTAB'),
	('13', 'COMPRIMIDO EFERVESCENTE'),
	('14', 'COMPRIMIDO LIBERACION MODIFICADA'),
	('15', 'COMPRIMIDO MASTICABLE'),
	('16', 'COMPRIMIDO SUBLINGUAL'),
	('17', 'CONSERVACION ORGANOS'),
	('18', 'CREMA'),
	('20', 'DIALISIS PERITONEAL'),
	('21', 'DISPOSITIVO INTRAUTERINO'),
	('22', 'DISPOSITIVO VAGINAL'),
	('23', 'EMULSION'),
	('24', 'GEL'),
	('25', 'GEL OFTALMICO'),
	('26', 'GEL/PASTA/LIQUIDO BUCAL'),
	('27', 'LÍQUIDO OTICO'),
	('29', 'HEMOFILTRACION'),
	('30', 'IMPLANTE'),
	('31', 'IMPLANTE OFTALMICO'),
	('32', 'INHALACION ENDOTRAQUEOPULMONAR'),
	('33', 'INHALACIÓN PULMONAR'),
	('34', 'INYECTABLE'),
	('35', 'INYECTABLE PERFUSION'),
	('37', 'LIQUIDO GASTROENTERICO'),
	('38', 'LIQUIDO RECTAL'),
	('39', 'LIQUIDO USO TOPICO'),
	('40', 'LIQUIDO VAGINAL'),
	('41', 'OVULO/CAPSULA/COMPRIMIDO VAGINA'),
	('42', 'PARCHE TRANSDERMICO'),
	('43', 'PASTA'),
	('44', 'SOLUCIÓN/SUSPENSIÓN ORAL EFERVESCENTE'),
	('45', 'POLVO/GRANULADO LIBERACION MODIFICADA'),
	('47', 'POMADA'),
	('48', 'POMADA OFTALMICA'),
	('49', 'PREPARADO IRRIGACION VESICAL'),
	('50', 'PREPARADO URETRAL'),
	('51', 'PRODUCTO PARA EL BAÑO'),
	('52', 'PRODUCTO USO BUCAL TOPICO'),
	('53', 'PRODUCTO USO NASAL'),
	('54', 'PULVERIZACION BUCAL'),
	('56', 'PULVERIZACION SUBLINGUAL'),
	('57', 'RADIOFARMACO'),
	('59', 'SEMISOLIDO RECTAL'),
	('60', 'SEMISOLIDO VAGINAL'),
	('63', 'SOLIDO USO TOPICO'),
	('64', 'SOLUCION/SUSPENSION GOTAS ORALES'),
	('67', 'SUPOSITORIO'),
	('69', 'GEL ENDOCERVICAL'),
	('71', 'POMADA OFTÁLMICA/ÓTICA'),
	('73', 'PRODUCTO USO NASAL/BUCAL'),
	('75', 'SOLUCIÓN/SUSPENSIÓN ORAL/INHALACIÓN PULMONAR'),
	('76', 'SOLUCIÓN/SUSPENSIÓN ORAL/INYECTABLE'),
	('77', 'SOLUCIÓN/SUSPENSIÓN ORAL/INYECTABLE PERFUSIÓN'),
	('78', 'SOLUCIÓN/SUSPENSIÓN ORAL/RECTAL'),
	('91', 'PRUEBA ALERGIA'),
	('93', 'SOLUCIÓN/SUSPENSIÓN ORAL'),
	('95', 'SOLUCIÓN PARA MODIFICACIÓN DE LAS FRACCIONES SANGUÍNEAS'),
	('96', 'SOLUCIÓN TRANSDÉRMICA'),
	('97', 'EQUIVALENTE DE TEJIDO VIVO'),
	('98', 'INYECTABLE/INTRAVESICAL'),
	('99', 'GEL INTRAUTERINO'),
	('100', 'GEL INTESTINAL');