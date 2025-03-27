-- V1.1.0

PROMPT "Création de la base de données IMMO";

-- **************************************************************************** Définition des données

PROMPT "Définition des données";

DROP TABLE PROPRIO CASCADE CONSTRAINTS PURGE;
DROP TABLE ESPACE CASCADE CONSTRAINTS PURGE;
DROP TABLE BIEN CASCADE CONSTRAINTS PURGE;

CREATE TABLE PROPRIO(
    IDP NUMBER(10,0),
    NOM VARCHAR2(20),
    PRENOM VARCHAR2(20),
    CONSTRAINT PK_PROPRIO PRIMARY KEY(IDP)
);

CREATE TABLE ESPACE(
    IDE NUMBER(10,0),
    DESIGNATION VARCHAR2(25),
    SUPERFICIE NUMBER(10,0),
    IDERATTACH NUMBER(10,0),
    CONSTRAINT PK_ESPACE PRIMARY KEY(IDE),
    CONSTRAINT FK_ESPACE_ESPACE FOREIGN KEY(IDERATTACH) REFERENCES ESPACE(IDE)
);

CREATE TABLE BIEN(
    IDEBIEN NUMBER(10,0),
    CATEGORIE VARCHAR2(20),
    TYPE VARCHAR2(10),
    IDP NUMBER(10,0),
    VILLE VARCHAR2(20),
    PRIX NUMBER(10),
    CONSTRAINT PK_BIEN PRIMARY KEY(IDEBIEN),
    CONSTRAINT FK_BIEN_ESPACE FOREIGN KEY(IDEBIEN) REFERENCES ESPACE(IDE),
    CONSTRAINT FK2_BIEN_PROPRIO FOREIGN KEY(IDP) REFERENCES PROPRIO(IDP),
    CONSTRAINT CH_BIEN_CATEGORIE CHECK (CATEGORIE IN ('APPARTEMENT','MAISON DE VILLE','VILLA','HLM','BIDONVILLE','MANOIR','CHALET', 'BUNGALOW')),
    CONSTRAINT CH2_BIEN_TYPE CHECK (TYPE IN ('STUDIO','T1','T2','T3','T4','T5','T6','T8','T9'))
);

-- **************************************************************************** Insertions des données


PROMPT "Insertions des données";


PROMPT "Insertions des données de la table ESPACE";
PROMPT "1er STUDIO id=945";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(945,'STUDIO',60,NULL);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(946,'SALLE D''EAU',15,945);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(947,'PIECE A VIVRE',45,945);


PROMPT "2e STUDIO id=10XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(1000,'STUDIO',60,NULL);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(1001,'SALLE D''EAU',15,1000);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(1002,'PIECE A VIVRE',45,1000);


PROMPT "3e STUDIO id=11XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(1100,'STUDIO',60,NULL);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(1101,'SALLE D''EAU',15,1100);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(1102,'PIECE A VIVRE',45,1100);


PROMPT "1er VILLA id=20XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2000,'VILLA',320,NULL);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2001,'TERRASSE',200,2000);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2002,'INTERIEUR',120,2000);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2003,'PISCINE',35,2001);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2004,'COULOIR',20,2002);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2005,'SALLE DE BAIN',8,2002);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2006,'CHAMBRE',12,2002);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2007,'CHAMBRE',12,2002);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2008,'CHAMBRE',10,2002);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2009,'SALON',45,2002);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2010,'PLACARD',10,2004);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2011,'SALLE DE BAIN',10,2004);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2012,'CUISINE',12,2009);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2013,'SEJOUR',25,2009);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2014,'SALLE A MANGER',8,2009);


PROMPT "2e VILLA id=21XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2100,'VILLA',320,NULL);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2101,'TERRASSE',200,2100);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2102,'INTERIEUR',120,2100);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2103,'PISCINE',35,2101);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2104,'COULOIR',20,2102);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2105,'SALLE DE BAIN',8,2102);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2106,'CHAMBRE',12,2102);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2107,'CHAMBRE',12,2102);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2108,'CHAMBRE',10,2102);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2109,'SALON',45,2102);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2110,'PLACARD',10,2104);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2111,'SALLE DE BAIN',10,2104);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2112,'CUISINE',12,2109);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2113,'SEJOUR',25,2109);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2114,'SALLE A MANGER',8,2109);

PROMPT "3e VILLA id=22XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2200,'VILLA',320,NULL);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2201,'TERRASSE',200,2200);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2202,'INTERIEUR',120,2200);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2203,'PISCINE',35,2201);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2204,'COULOIR',20,2202);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2205,'SALLE DE BAIN',8,2202);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2206,'CHAMBRE',12,2202);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2207,'CHAMBRE',12,2202);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2208,'CHAMBRE',10,2202);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2209,'SALON',45,2202);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2210,'PLACARD',10,2204);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2211,'SALLE DE BAIN',10,2204);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2212,'CUISINE',12,2209);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2213,'SEJOUR',25,2209);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(2214,'SALLE A MANGER',8,2209);


PROMPT "1er APPARTEMENT T3 id=30XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3000, 'APPARTEMENT',79, NULL);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3001, 'INTERIEUR', 66, 3000);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3002, 'BALCON', 13, 3000);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3003, 'SALON', 30, 3001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3004, 'CUISINE', 10, 3001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3005, 'COULOIR', 8, 3001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3006, 'CHAMBRE', 7, 3001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3007, 'CHAMBRE', 9, 3001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3008, 'TOILETTES', 2, 3001);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3009, 'SALLE A MANGER', 5, 3003);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3010, 'SEJOUR', 25, 3003);


PROMPT "2e APPARTEMENT T3 id=31XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3100, 'APPARTEMENT',79, NULL);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3101, 'INTERIEUR', 66, 3100);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3102, 'BALCON', 13, 3100);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3103, 'SALON', 30, 3101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3104, 'CUISINE', 10, 3101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3105, 'COULOIR', 8, 3101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3106, 'CHAMBRE', 7, 3101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3107, 'CHAMBRE', 9, 3101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3108, 'TOILETTES', 2, 3101);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3109, 'SALLE A MANGER', 5, 3103);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3110, 'SEJOUR', 25, 3103);


PROMPT "3e APPARTEMENT T3 id=32XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3200, 'APPARTEMENT',79, NULL);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3201, 'INTERIEUR', 66, 3200);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3202, 'BALCON', 13, 3200);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3203, 'SALON', 30, 3201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3204, 'CUISINE', 10, 3201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3205, 'COULOIR', 8, 3201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3206, 'CHAMBRE', 7, 3201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3207, 'CHAMBRE', 9, 3201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3208, 'TOILETTES', 2, 3201);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3209, 'SALLE A MANGER', 5, 3203);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(3210, 'SEJOUR', 25, 3203);


PROMPT "1er MANOIR id=40XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4000, 'MANOIR', 10270, NULL);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4001, 'INTERIEUR', 270, 4000);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4002, 'EXTERIEUR', 10000, 4000);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4003, 'GARAGE', 100, 4002);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4004, 'JARDIN', 9900, 4002);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4005, '1ER ETAGE', 125, 4001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4006, 'RDC', 145, 4001);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4007, 'CHAMBRE PRINCIPALE', 35, 4005);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4008, 'CHAMBRE D''AMIS', 20, 4005);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4009, 'CHAMBRE D''AMIS', 20, 4005);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4010, 'SALLE DE BAIN PRINCIPALE', 25, 4005);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4011, 'SALLE FAMILIALE', 30, 4005);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4012, 'CHAMBRE ENFANT', 15, 4005);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4013, 'HALL D''ENTREE', 20, 4006);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4014, 'SALON', 40, 4006);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4015, 'SALLE A MANGER', 30, 4006);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4016, 'CUISINE', 25, 4006);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4017, 'BUREAU', 20, 4006);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4018, 'CHAMBRE D''AMIS', 20, 4006);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4019, 'SALLE DE BAIN INVITES', 10, 4006);


PROMPT "2e MANOIR id=41XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4100, 'MANOIR', 10270, NULL);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4101, 'INTERIEUR', 270, 4100);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4102, 'EXTERIEUR', 10000, 4100);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4103, 'GARAGE', 100, 4102);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4104, 'JARDIN', 9900, 4102);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4105, '1ER ETAGE', 125, 4101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4106, 'RDC', 145, 4101);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4107, 'CHAMBRE PRINCIPALE', 35, 4105);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4108, 'CHAMBRE D''AMIS', 20, 4105);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4109, 'CHAMBRE D''AMIS', 20, 4105);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4110, 'SALLE DE BAIN PRINCIPALE', 25, 4105);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4111, 'SALLE FAMILIALE', 30, 4105);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4112, 'CHAMBRE ENFANT', 15, 4105);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4113, 'HALL D''ENTREE', 20, 4106);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4114, 'SALON', 40, 4106);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4115, 'SALLE A MANGER', 30, 4106);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4116, 'CUISINE', 25, 4106);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4117, 'BUREAU', 20, 4106);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4118, 'CHAMBRE D''AMIS', 20, 4106);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(4119, 'SALLE DE BAIN INVITES', 10, 4106);


PROMPT "1er CHALET id=50XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5000, 'CHALET', 166, NULL);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5001, 'INTERIEUR', 57, 5000);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5002, 'EXTERIEUR', 109, 5000);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5003, 'SALON', 30, 5001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5004, 'CHAMBRE', 10, 5001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5005, 'CUISINE', 8, 5001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5006, 'SALLE DE BAIN', 5, 5001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5007, 'TOILETTES', 2, 5001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5008, 'PLACARD', 2, 5001);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5009, 'BALCON', 9, 5002);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5010, 'JARDIN', 100, 5002);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5011, 'SEJOUR', 20, 5003);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5012, 'SALLE A MANGER', 10, 5003);


PROMPT "2e CHALET id=51XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5100, 'CHALET', 166, NULL);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5101, 'INTERIEUR', 57, 5100);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5102, 'EXTERIEUR', 109, 5100);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5103, 'SALON', 30, 5101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5104, 'CHAMBRE', 10, 5101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5105, 'CUISINE', 8, 5101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5106, 'SALLE DE BAIN', 5, 5101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5107, 'TOILETTES', 2, 5101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5108, 'PLACARD', 2, 5101);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5109, 'BALCON', 9, 5102);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5110, 'JARDIN', 100, 5102);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5111, 'SEJOUR', 20, 5103);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5112, 'SALLE A MANGER', 10, 5103);


PROMPT "3e CHALET id=52XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5200, 'CHALET', 166, NULL);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5201, 'INTERIEUR', 57, 5200);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5202, 'EXTERIEUR', 109, 5200);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5203, 'SALON', 30, 5201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5204, 'CHAMBRE', 10, 5201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5205, 'CUISINE', 8, 5201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5206, 'SALLE DE BAIN', 5, 5201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5207, 'TOILETTES', 2, 5201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5208, 'PLACARD', 2, 5201);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5209, 'BALCON', 9, 5202);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5210, 'JARDIN', 100, 5202);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5211, 'SEJOUR', 20, 5203);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(5212, 'SALLE A MANGER', 10, 5203);


PROMPT "1er HLM id=60XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6000, 'HLM', 51, NULL);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6001, 'INTERIEUR',44, 6000);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6002, 'TERRASE', 7, 6000);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6003, 'COIN SEJOUR', 25, 6001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6004, 'CHAMBRE', 12, 6001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6005, 'SALLE DE BAIN', 6, 6001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6006, 'CELIER', 1, 6001);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6007, 'ENTREE', 4, 6003);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6008, 'CUISINE', 7, 6003);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6009, 'SALON', 14, 6003);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6010, 'SEJOUR', 10, 6009);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6011, 'SALLE A MANGER', 4, 6009);


PROMPT "2e HLM id=61XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6100, 'HLM', 51, NULL);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6101, 'INTERIEUR',44, 6100);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6102, 'TERRASE', 7, 6100);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6103, 'COIN SEJOUR', 25, 6101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6104, 'CHAMBRE', 12, 6101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6105, 'SALLE DE BAIN', 6, 6101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6106, 'CELIER', 1, 6101);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6107, 'ENTREE', 4, 6103);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6108, 'CUISINE', 7, 6103);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6109, 'SALON', 14, 6103);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6110, 'SEJOUR', 10, 6109);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6111, 'SALLE A MANGER', 4, 6109);


PROMPT "3e HLM id=62XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6200, 'HLM', 51, NULL);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6201, 'INTERIEUR',44, 6200);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6202, 'TERRASE', 7, 6200);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6203, 'COIN SEJOUR', 25, 6201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6204, 'CHAMBRE', 12, 6201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6205, 'SALLE DE BAIN', 6, 6201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6206, 'CELIER', 1, 6201);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6207, 'ENTREE', 4, 6203);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6208, 'CUISINE', 7, 6203);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6209, 'SALON', 14, 6203);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6210, 'SEJOUR', 10, 6209);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(6211, 'SALLE A MANGER', 4, 6209);


PROMPT "1er BUNGALOW id=70XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7000, 'BUNGALOW',36, NULL);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7001, 'INTERIEUR', 27, 7000);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7002, 'TERRASE', 9, 7000);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7003, 'COIN JOUR', 15, 7001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7004, 'SALLE DE BAIN', 3, 7001);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7005, 'CHAMBRE', 9, 7001);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7006, 'SALON', 10, 7003);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7007, 'CUISINE', 5, 7003);


PROMPT "2e BUNGALOW id=71XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7100, 'BUNGALOW',36, NULL);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7101, 'INTERIEUR', 27, 7100);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7102, 'TERRASE', 9, 7100);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7103, 'COIN JOUR', 15, 7101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7104, 'SALLE DE BAIN', 3, 7101);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7105, 'CHAMBRE', 9, 7101);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7106, 'SALON', 10, 7103);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7107, 'CUISINE', 5, 7103);


PROMPT "3e BUNGALOW id=72XX";
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7200, 'BUNGALOW',36, NULL);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7201, 'INTERIEUR', 27, 7200);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7202, 'TERRASE', 9, 7200);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7203, 'COIN JOUR', 15, 7201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7204, 'SALLE DE BAIN', 3, 7201);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7205, 'CHAMBRE', 9, 7201);

INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7206, 'SALON', 10, 7203);
INSERT INTO ESPACE(IDE, DESIGNATION, SUPERFICIE, IDERATTACH) VALUES(7207, 'CUISINE', 5, 7203);



PROMPT "Insertions des données de la table PROPRIO";
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(1, 'GRIGUER', 'NATHAN');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(2, 'AMROUNE', 'AKIM');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(3, 'GUL', 'FURKAN');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(4, 'ZEGANNE', 'SOFIEN');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(5, 'ORLANDI', 'LENNY');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(6, 'DIAZ', 'GWENN');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(7, 'CELESTINE', 'SAMUEL');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(8, 'ANTOINE', 'THOMAS');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(9, 'BAURENS-TORRENTE', 'VALENTIN');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(10, 'BAGNIS', 'ENZO');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(11, 'SISE', 'ABOUBAKAR');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(12, 'RAPANAKIS-BOURG', 'MARIUS');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(13, 'RADJOU', 'DINESH');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(14, 'UYSUN', 'ALI');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(15, 'ALLARD', 'LOAN');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(16, 'RINALDI', 'ANTOINE');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(17, 'CLOT-GODARD', 'KENJI');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(18, 'NGOM','MAGUEYE');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(19, 'PIBOULEAU', 'JEAN-BAPTISTE');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(20, 'SENE', 'PABLO');

INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(21, 'ANNI', 'SAMUEL');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(22, 'MARTIN-NEVOT', 'MICKAEL');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(23, 'LAKHAL', 'LOTFI');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(24, 'JOUINI', 'RIM');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(25, 'MAKSSOUD', 'CRISTINE');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(26, 'GOUILLON', 'NICOLAS');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(27, 'YAHI','SAFA');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(28, 'FRANCON','DOMINIQUE');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(29, 'DELAMOTTE', 'PIERRICK');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(30, 'MORANCEY', 'MORGAN');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(31, 'AGOSTINELLI', 'LAURANCE');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(32, 'CASALI', 'ALAIN');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(33, 'SLEZAK','EILEEN');
INSERT INTO PROPRIO (IDP, NOM,PRENOM) VALUES(34, 'BETARI', 'ABDELKADER');

/*
Tous les types de bâtiments :
- APPARTEMENT STUDIO (id=1000)
- VILLA T4 (id=2000)
- APPARTEMENT T3 (id=3000)
- MANOIR T9 (id=4000)
- CHALET T2 (id=5000)
- HLM T2 (id=6000)
- BUNGALOW T2 (id=7000)
*/

-- id proprio : 1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 13, 15, 16, 18, 20, 21, 22, 28, 29 (len=20)

PROMPT "Insertions des données de la table BIEN";
INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(945, 'APPARTEMENT', 'STUDIO', 1, 'MARSEILLE', 60000);
INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(1000, 'APPARTEMENT', 'STUDIO', 4,'MARSEILLE', 70000);
INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(1100, 'APPARTEMENT', 'STUDIO', 21,'MARSEILLE', 70000);

INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(2000, 'VILLA', 'T4', 3, 'MARSEILLE', 10);
INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(2100, 'VILLA', 'T4', 22, 'CEYRESTE', 700000);
INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(2200, 'VILLA', 'T4', 29, 'AIX EN PROVENCE',600000); 

INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(3000, 'APPARTEMENT', 'T3', 8, 'AIX-EN-PROVENCE', 120000);
INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(3100, 'APPARTEMENT', 'T3', 2, 'AVIGNON', 100000);
INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(3200, 'APPARTEMENT', 'T3', 5, 'SAINT-MAXIMIN', 150000);

INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(4000, 'MANOIR', 'T9', 10, 'BERRE', 800000);
INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(4100, 'MANOIR', 'T9', 20, 'AIX-EN-PROVENCE', 900000);

INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(5000, 'CHALET', 'T2', 11,'MARSEILLE', 90000);
INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(5100, 'CHALET', 'T2', 12, 'MARSEILLE', 80000);
INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(5200, 'CHALET', 'T2', 28, 'AIX EN PROVENCE', 100000);

INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(6000, 'HLM', 'T2', 6, 'AIX-EN-PROVENCE', 50000);
INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(6100, 'HLM', 'T2', 16, 'AIX-EN-PROVENCE', 45000);
INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(6200, 'HLM', 'T2', 18, 'MARSEILLE', 40000);

INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(7000, 'BUNGALOW', 'T2', 13, 'MARSEILLE', 5);
INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(7100, 'BUNGALOW', 'T2', 15, 'OK CORRAL', 15);
INSERT INTO BIEN(IDEBIEN,CATEGORIE, TYPE, IDP, VILLE, PRIX) VALUES(7200, 'BUNGALOW', 'T2', 9, 'AIX EN PROVENCE', 20);
