-- Adminer 4.8.1 PostgreSQL 15.2 (Debian 15.2-1.pgdg110+1) dump

DROP TABLE IF EXISTS "achats";
DROP SEQUENCE IF EXISTS achats_id_seq;
CREATE SEQUENCE achats_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."achats" (
    "id" integer DEFAULT nextval('achats_id_seq') NOT NULL,
    "id_product" character varying NOT NULL,
    "quantity" character varying NOT NULL,
    "quantity_achat" character varying NOT NULL,
    "price_achat_unit" character varying NOT NULL,
    "prix_vente_unit" character varying NOT NULL,
    "unite" character varying NOT NULL,
    "tva" character varying NOT NULL,
    "remise" character varying NOT NULL,
    "qty_remise" character varying NOT NULL,
    "qty_livre" character varying NOT NULL,
    "succursale" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL
) WITH (oids = false);

INSERT INTO "achats" ("id", "id_product", "quantity", "quantity_achat", "price_achat_unit", "prix_vente_unit", "unite", "tva", "remise", "qty_remise", "qty_livre", "succursale", "signature", "created") VALUES
(1,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'269.0',	'500',	'1200',	'1293.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'500',	'-',	'Support',	'2023-02-16 12:34:31.416696'),
(5,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'316.0',	'500',	'2000',	'2500.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'500',	'-',	'Support',	'2023-02-17 13:10:05.748169'),
(6,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'226.0',	'500',	'1700',	'2500.0',	'',	'0.0',	'2500.0',	'0.0',	'500',	'-',	'Support',	'2023-02-17 13:31:37.436638'),
(4,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'905.0',	'1040.0',	'6000',	'9000.0',	'BOUTEILLES',	'0.0',	'7000.0',	'0.0',	'5',	'-',	'Support',	'2023-02-24 21:20:41.485013'),
(7,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'0.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'0.0',	'41400.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(2,	'BOISSON-COCACOLA-CANETTE-500G-PIÈCES',	'0.0',	'50',	'1200',	'3000.0',	'PIÈCES',	'0.0',	'2940.0',	'5.0',	'50',	'-',	'Support',	'2023-02-16 23:09:43.227534');

DROP TABLE IF EXISTS "agendas";
DROP SEQUENCE IF EXISTS agendas_id_seq;
CREATE SEQUENCE agendas_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."agendas" (
    "id" integer DEFAULT nextval('agendas_id_seq') NOT NULL,
    "title" character varying NOT NULL,
    "description" character varying NOT NULL,
    "date_rappel" timestamp NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL
) WITH (oids = false);

INSERT INTO "agendas" ("id", "title", "description", "date_rappel", "signature", "created") VALUES
(1,	'Formation',	'rappel pour la formation de l''équipe',	'2023-02-17 00:00:00',	'Support',	'2023-02-17 08:14:55.354193');

DROP TABLE IF EXISTS "agents";
DROP SEQUENCE IF EXISTS agents_id_seq;
CREATE SEQUENCE agents_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."agents" (
    "id" integer DEFAULT nextval('agents_id_seq') NOT NULL,
    "nom" character varying NOT NULL,
    "postnom" character varying NOT NULL,
    "prenom" character varying NOT NULL,
    "email" character varying NOT NULL,
    "telephone" character varying NOT NULL,
    "adresse" character varying NOT NULL,
    "sexe" character varying NOT NULL,
    "role" character varying NOT NULL,
    "matricule" character varying NOT NULL,
    "date_naissance" timestamp NOT NULL,
    "lieu_naissance" character varying NOT NULL,
    "nationalite" character varying NOT NULL,
    "type_contrat" character varying NOT NULL,
    "departement" character varying NOT NULL,
    "services_affectation" character varying NOT NULL,
    "date_debut_contrat" timestamp NOT NULL,
    "date_fin_contrat" timestamp NOT NULL,
    "fonction_occupe" character varying NOT NULL,
    "detail_personnel" text NOT NULL,
    "statut_agent" character varying NOT NULL,
    "created_at" timestamp NOT NULL,
    "photo" character varying,
    "salaire" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL,
    CONSTRAINT "agents_matricule_key" UNIQUE ("matricule")
) WITH (oids = false);

INSERT INTO "agents" ("id", "nom", "postnom", "prenom", "email", "telephone", "adresse", "sexe", "role", "matricule", "date_naissance", "lieu_naissance", "nationalite", "type_contrat", "departement", "services_affectation", "date_debut_contrat", "date_fin_contrat", "fonction_occupe", "detail_personnel", "statut_agent", "created_at", "photo", "salaire", "signature", "created") VALUES
(3,	'Yves',	'muamba',	'yves',	'trydonntumba@gmail.com',	'0840008460',	'05 bulambemba',	'Femme',	'4',	'WMCOM23-003',	'2000-02-17 00:00:00',	'tshikapa',	'République démocratique du Congo',	'CDI',	'Commercial',	'Caisse',	'2023-02-17 00:00:00',	'2099-12-31 00:00:00',	'Agent',	'[{"insert":"expert en comptabilité et gestion financiere.\n"}]',	'Inactif',	'2023-02-17 08:39:11.67175',	'assets/images/avatar.jpg',	'600000',	'Support',	'2023-02-17 08:39:11.67175'),
(1,	'Rigobert',	'Jacque',	'Jean pierre',	'rigobertjacque@gmail.com',	'+243813530838',	'Gombe, colonel Ebeya 3520',	'Homme',	'2',	'WMCOM23-001',	'1956-07-19 00:00:00',	'République démocratique du Congo',	'Kinshasa',	'CDI',	'Commercial',	'Livraison',	'2023-02-16 00:00:00',	'2099-12-31 00:00:00',	'Livreur(se)',	'[{"insert":"Formation","attributes":{"color":"#c62828","bold":true}},{"insert":"\n","attributes":{"header":1}},{"insert":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. \nLorem Ipsum has been the industry''s standard dummy "},{"insert":"\n","attributes":{"list":"ordered"}},{"insert":"text ever since the 1500s, when an unknown printer took a "},{"insert":"\n","attributes":{"list":"ordered"}},{"insert":"galley of type and scrambled it to make a type specimen book. "},{"insert":"\n","attributes":{"list":"ordered"}},{"insert":"It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n"},{"insert":"Experience","attributes":{"bold":true,"color":"#d32f2f"}},{"insert":"\n","attributes":{"header":1}},{"insert":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. \nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, "},{"insert":"\n","attributes":{"list":"bullet"}},{"insert":"when an unknown printer took a galley of type and scrambled it "},{"insert":"\n","attributes":{"list":"bullet"}},{"insert":"to make a type specimen book. It has survived not only five centuries, "},{"insert":"\n","attributes":{"list":"bullet"}},{"insert":"but also the leap into electronic typesetting, remaining essentially unchanged. "},{"insert":"It was popularised in the 1960s","attributes":{"color":"#039be5"}},{"insert":" with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n"}]',	'Actif',	'2023-02-16 07:31:31.104899',	'http://54.144.150.55:3000/uploadfile/uploads/ddae7d697dc1d603da01ba09ddf127109.jpg',	'250',	'Support',	'2023-02-16 07:31:31.104899'),
(2,	'Mboyo',	'Kiyombo',	'Yasin',	'yasinmboyo@gmail.com',	'08135350838',	'kinshasa, masina, 345',	'Homme',	'3',	'IVCOM23-002',	'1985-02-28 00:00:00',	'Kinshasa',	'République démocratique du Congo',	'CDI',	'Commercial',	'Livraison',	'2023-02-17 00:00:00',	'2099-12-31 00:00:00',	'Livreur(se)',	'[{"insert":"Experience","attributes":{"bold":true}},{"insert":"\n","attributes":{"header":1}},{"insert":"\nLorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero''s De Finibus Bonorum\nLorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero''s De Finibus Bonorum\nLorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero''s De Finibus Bonorum\n"}]',	'Inactif',	'2023-02-17 07:49:10.057431',	'assets/images/avatar.jpg',	'300000',	'Support',	'2023-02-17 07:49:10.057431');

DROP TABLE IF EXISTS "annuaires";
DROP SEQUENCE IF EXISTS annuaires_id_seq;
CREATE SEQUENCE annuaires_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."annuaires" (
    "id" integer DEFAULT nextval('annuaires_id_seq') NOT NULL,
    "categorie" character varying NOT NULL,
    "nom_postnom_prenom" character varying NOT NULL,
    "email" character varying NOT NULL,
    "mobile_1" character varying NOT NULL,
    "mobile_2" character varying NOT NULL,
    "secteur_activite" character varying NOT NULL,
    "nom_entreprise" character varying NOT NULL,
    "grade" character varying NOT NULL,
    "adresse_entreprise" character varying NOT NULL,
    "succursale" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL
) WITH (oids = false);

INSERT INTO "annuaires" ("id", "categorie", "nom_postnom_prenom", "email", "mobile_1", "mobile_2", "secteur_activite", "nom_entreprise", "grade", "adresse_entreprise", "succursale", "signature", "created") VALUES
(1,	'Fournisseur',	'eventdrc',	'eventdrc@gmail.com',	'0850008510',	'',	'fournisseur farine froma',	'editech',	'directeur général',	'mino congo kinshsasa ngaliema 16',	'-',	'Support',	'2023-02-16 23:30:34.345817'),
(2,	'Client',	'francois',	'francois@gmail.com',	'128456780000',	'',	'consomme plus de grevette',	'-',	'-',	'gombe 30 juin 17001',	'-',	'Support',	'2023-02-16 23:32:56.50855');

DROP TABLE IF EXISTS "archives";
DROP SEQUENCE IF EXISTS archives_id_seq;
CREATE SEQUENCE archives_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."archives" (
    "id" integer DEFAULT nextval('archives_id_seq') NOT NULL,
    "departement" character varying NOT NULL,
    "folder_name" character varying NOT NULL,
    "nom_document" character varying NOT NULL,
    "description" character varying NOT NULL,
    "fichier" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL,
    "reference" integer NOT NULL,
    "level" character varying NOT NULL,
    CONSTRAINT "archives_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "archives" ("id", "departement", "folder_name", "nom_document", "description", "fichier", "signature", "created", "reference", "level") VALUES
(1,	'["Commercial"]',	'IMPOT DGI',	'IMPOT IPR',	'IMPOT PROFESSIONNEL SUR LE REVENU',	'http://54.144.150.55:3000/uploadfile/uploads/c1cb5c40c310a6bc469a1c753b32f2d10d.pdf',	'Support',	'2023-02-17 08:12:58.975094',	1,	'1'),
(2,	'["Commercial"]',	'FACTURE SNEL',	'Facture mois de janvier',	'Paiement de la totalité de frais',	'http://54.144.150.55:3000/uploadfile/uploads/9ada1c345a3d208d372569f2069e5f8a.png',	'Support',	'2023-02-17 08:18:12.136679',	3,	'4'),
(3,	'Commercial',	'impots',	'gdfgdjufy',	'ceci est une formation',	'http://54.144.150.55:3000/uploadfile/uploads/e86c3a54a1bef7f581ffef17dc8110a42.png',	'IVCOM23-002',	'2023-02-25 11:55:07.828585',	6,	'3');

DROP TABLE IF EXISTS "archives_folders";
DROP SEQUENCE IF EXISTS archives_folders_id_seq;
CREATE SEQUENCE archives_folders_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."archives_folders" (
    "id" integer DEFAULT nextval('archives_folders_id_seq') NOT NULL,
    "departement" character varying NOT NULL,
    "folder_name" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL,
    CONSTRAINT "archives_folders_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "archives_folders" ("id", "departement", "folder_name", "signature", "created") VALUES
(1,	'["Commercial"]',	'IMPOT DGI',	'Support',	'2023-02-17 08:11:43.12902'),
(2,	'["Commercial"]',	'FACTURE REGIDESO',	'Support',	'2023-02-17 08:13:21.317217'),
(3,	'["Commercial"]',	'FACTURE SNEL',	'Support',	'2023-02-17 08:13:39.55806'),
(4,	'["Commercial"]',	'DEVIS',	'Support',	'2023-02-17 08:15:45.110926'),
(5,	'["Commercial"]',	'regideso',	'Support',	'2023-02-17 14:24:13.841975'),
(6,	'Commercial',	'impots',	'IVCOM23-002',	'2023-02-25 11:53:01.548399');

DROP TABLE IF EXISTS "ardoises";
DROP SEQUENCE IF EXISTS ardoises_id_seq;
CREATE SEQUENCE ardoises_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."ardoises" (
    "id" integer DEFAULT nextval('ardoises_id_seq') NOT NULL,
    "ardoise" character varying NOT NULL,
    "ardoise_json" character varying NOT NULL,
    "statut" character varying NOT NULL,
    "succursale" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL,
    CONSTRAINT "ardoises_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "ardoises" ("id", "ardoise", "ardoise_json", "statut", "succursale", "signature", "created") VALUES
(10,	'B1',	'[{"id":143,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"5","priceCart":"9000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T13:19:34.857990Z","createdAt":"2023-02-24T22:20:41.485013Z"},{"id":146,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"5","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T13:32:32.024067Z","createdAt":"2023-02-17T14:31:37.436638Z"},{"id":148,"idProductCart":"BOISSON-COCACOLA-CANETTE-500G-PIÈCES","quantityCart":"1","priceCart":"3000.0","priceAchatUnit":"1200","unite":"PIÈCES","tva":"0.0","remise":"2940.0","qtyRemise":"5.0","succursale":"-","signature":"Support","created":"2023-02-25T14:16:18.763550Z","createdAt":"2023-02-17T00:09:43.227534Z"}]',	'true',	'-',	'Support',	'2023-02-25 14:16:48.488303'),
(2,	'Table 2',	'',	'false',	'-',	'Support',	'2023-02-22 09:04:28.59619'),
(1,	'Table 4',	'',	'false',	'-',	'Support',	'2023-02-23 21:45:34.46753'),
(4,	'Table 1',	'',	'false',	'-',	'Support',	'2023-02-23 21:50:46.481758'),
(5,	'Table 5',	'',	'false',	'-',	'Support',	'2023-02-24 16:04:06.433638'),
(7,	'VIP 2',	'',	'false',	'-',	'Support',	'2023-02-24 16:10:47.955297'),
(6,	'VIP 1',	'[{"id":115,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"3","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-24T15:55:55.303927Z","createdAt":"2023-02-17T14:10:05.748169Z"}]',	'true',	'-',	'Support',	'2023-02-25 06:38:18.501083'),
(3,	'Table 3',	'',	'false',	'-',	'Support',	'2023-02-25 12:12:20.989748'),
(9,	'T 1',	'',	'false',	'-',	'Support',	'2023-02-25 13:22:39.453271'),
(8,	'V 1',	'[{"id":145,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"52","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T13:19:37.749144Z","createdAt":"2023-02-17T14:31:37.436638Z"},{"id":147,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"10","priceCart":"9000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T14:04:33.514891Z","createdAt":"2023-02-24T22:20:41.485013Z"}]',	'true',	'-',	'Support',	'2023-02-25 14:05:44.04002');

DROP TABLE IF EXISTS "bon_consommations";
DROP SEQUENCE IF EXISTS bon_consommations_id_seq;
CREATE SEQUENCE bon_consommations_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."bon_consommations" (
    "id" integer DEFAULT nextval('bon_consommations_id_seq') NOT NULL,
    "ardoise" character varying NOT NULL,
    "reference" integer NOT NULL,
    "consommation" character varying NOT NULL,
    "succursale" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL,
    CONSTRAINT "bon_consommations_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "caisse_names";
DROP SEQUENCE IF EXISTS caisse_names_id_seq;
CREATE SEQUENCE caisse_names_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."caisse_names" (
    "id" integer DEFAULT nextval('caisse_names_id_seq') NOT NULL,
    "nom_complet" character varying NOT NULL,
    "rccm" character varying NOT NULL,
    "id_nat" character varying NOT NULL,
    "addresse" character varying NOT NULL,
    "created" timestamp NOT NULL,
    CONSTRAINT "caisse_names_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "caisse_names" ("id", "nom_complet", "rccm", "id_nat", "addresse", "created") VALUES
(1,	'CAISSE 1',	'-',	'12',	'Terrasse',	'2023-02-16 20:13:16.202063');

DROP TABLE IF EXISTS "caisses";
DROP SEQUENCE IF EXISTS caisses_id_seq;
CREATE SEQUENCE caisses_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."caisses" (
    "id" integer DEFAULT nextval('caisses_id_seq') NOT NULL,
    "nom_complet" character varying NOT NULL,
    "piece_justificative" character varying NOT NULL,
    "libelle" character varying NOT NULL,
    "montant_encaissement" character varying NOT NULL,
    "departement" character varying NOT NULL,
    "type_operation" character varying NOT NULL,
    "numero_operation" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "reference" integer NOT NULL,
    "caisse_name" character varying NOT NULL,
    "created" timestamp NOT NULL,
    "montant_decaissement" character varying NOT NULL
) WITH (oids = false);

INSERT INTO "caisses" ("id", "nom_complet", "piece_justificative", "libelle", "montant_encaissement", "departement", "type_operation", "numero_operation", "signature", "reference", "caisse_name", "created", "montant_decaissement") VALUES
(1,	'Terrase',	'-',	'Versement terrase',	'632000',	'-',	'Encaissement',	'Transaction-Caisse-1',	'Support',	1,	'CAISSE 1',	'2023-02-16 20:48:31.346989',	'0'),
(2,	'salaire',	'-',	'paiement salaire agents',	'0',	'-',	'Decaissement',	'Transaction-Caisse-2',	'Support',	1,	'CAISSE 1',	'2023-02-16 23:28:09.766413',	'500000'),
(3,	'versement du 16/02/2022',	'001',	'caissier yves',	'8000000',	'-',	'Encaissement',	'Transaction-Caisse-3',	'Support',	1,	'CAISSE 1',	'2023-02-17 08:40:07.879204',	'0'),
(4,	'versement du 17/02/2022',	'002',	'caissier yves',	'300000',	'-',	'Encaissement',	'Transaction-Caisse-4',	'Support',	1,	'CAISSE 1',	'2023-02-17 08:41:05.265289',	'0'),
(5,	'achat marchandises',	'-',	'ravitaillement stock',	'0',	'-',	'Decaissement',	'Transaction-Caisse-5',	'Support',	1,	'CAISSE 1',	'2023-02-17 08:42:33.581078',	'7500000'),
(6,	'versement',	'001',	'vente du 12/02/2023',	'5000000',	'-',	'Encaissement',	'Transaction-Caisse-6',	'Support',	1,	'CAISSE 1',	'2023-02-17 14:01:06.442894',	'0'),
(7,	'achat',	'-',	'marchandises',	'0',	'-',	'Decaissement',	'Transaction-Caisse-7',	'Support',	1,	'CAISSE 1',	'2023-02-17 14:02:21.265182',	'1000000'),
(8,	'ventes',	'002',	'ventes 18/02/2023',	'17000000',	'-',	'Encaissement',	'Transaction-Caisse-8',	'Support',	1,	'CAISSE 1',	'2023-02-17 14:03:54.633651',	'0'),
(9,	'achat logistique',	'-',	'chaise bureau',	'0',	'-',	'Decaissement',	'Transaction-Caisse-9',	'Support',	1,	'CAISSE 1',	'2023-02-17 14:05:25.813395',	'400000');

DROP TABLE IF EXISTS "carts";
DROP SEQUENCE IF EXISTS carts_id_seq;
CREATE SEQUENCE carts_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."carts" (
    "id" integer DEFAULT nextval('carts_id_seq') NOT NULL,
    "id_product_cart" character varying NOT NULL,
    "quantity_cart" character varying NOT NULL,
    "price_cart" character varying NOT NULL,
    "price_achat_unit" character varying NOT NULL,
    "unite" character varying NOT NULL,
    "tva" character varying NOT NULL,
    "remise" character varying NOT NULL,
    "qty_remise" character varying NOT NULL,
    "succursale" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL,
    "created_at" timestamp NOT NULL
) WITH (oids = false);


DROP TABLE IF EXISTS "creance_factures";
DROP SEQUENCE IF EXISTS creance_factures_id_seq;
CREATE SEQUENCE creance_factures_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."creance_factures" (
    "id" integer DEFAULT nextval('creance_factures_id_seq') NOT NULL,
    "cart" text,
    "client" character varying NOT NULL,
    "nom_client" character varying NOT NULL,
    "telephone" character varying NOT NULL,
    "addresse" character varying NOT NULL,
    "delai_paiement" timestamp NOT NULL,
    "succursale" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL
) WITH (oids = false);


DROP TABLE IF EXISTS "factures";
DROP SEQUENCE IF EXISTS factures_id_seq;
CREATE SEQUENCE factures_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."factures" (
    "id" integer DEFAULT nextval('factures_id_seq') NOT NULL,
    "cart" text,
    "client" character varying NOT NULL,
    "nom_client" character varying NOT NULL,
    "telephone" character varying NOT NULL,
    "succursale" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL
) WITH (oids = false);

INSERT INTO "factures" ("id", "cart", "client", "nom_client", "telephone", "succursale", "signature", "created") VALUES
(1,	'[{"id":3,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"2","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-16T15:58:04.646107Z","createdAt":"2023-02-16T12:34:31.416696Z"}]',	'2',	'',	'',	'-',	'Support',	'2023-02-16 15:58:14.845143'),
(2,	'[{"id":4,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"4","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-16T16:25:44.042008Z","createdAt":"2023-02-16T12:34:31.416696Z"}]',	'3',	'',	'',	'-',	'Support',	'2023-02-16 16:25:52.247653'),
(3,	'[{"id":5,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"3","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-16T16:30:55.186625Z","createdAt":"2023-02-16T12:34:31.416696Z"}]',	'4',	'',	'',	'-',	'Support',	'2023-02-16 16:31:06.18865'),
(4,	'[{"id":6,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"2","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-16T16:39:02.761114Z","createdAt":"2023-02-16T12:34:31.416696Z"}]',	'5',	'',	'',	'-',	'Support',	'2023-02-16 16:39:10.809068'),
(5,	'[{"id":7,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"12","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-16T19:19:18.175109Z","createdAt":"2023-02-16T12:34:31.416696Z"}]',	'6',	'-',	'-',	'-',	'Support',	'2023-02-16 19:19:28.953974'),
(6,	'[{"id":8,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"3","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-16T20:06:08.770451Z","createdAt":"2023-02-16T12:34:31.416696Z"}]',	'7',	'-',	'-',	'-',	'Support',	'2023-02-16 20:06:36.887084'),
(7,	'[{"id":9,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"23","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-16T22:18:01.555869Z","createdAt":"2023-02-16T12:34:31.416696Z"}]',	'8',	'-',	'-',	'-',	'Support',	'2023-02-16 22:18:13.146413'),
(8,	'[{"id":12,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"3","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-16T23:15:46.127010Z","createdAt":"2023-02-16T12:34:31.416696Z"},{"id":11,"idProductCart":"BOISSON-COCACOLA-CANETTE-500G-PIÈCES","quantityCart":"2","priceCart":"3000.0","priceAchatUnit":"1200","unite":"PIÈCES","tva":"0.0","remise":"2940.0","qtyRemise":"5.0","succursale":"-","signature":"Support","created":"2023-02-16T23:15:38.704853Z","createdAt":"2023-02-16T23:09:43.227534Z"},{"id":10,"idProductCart":"PIZZA-VIANDE-2.5---KGS","quantityCart":"2","priceCart":"32000.0","priceAchatUnit":"26000","unite":"","tva":"0.0","remise":"31680.0","qtyRemise":"2.0","succursale":"-","signature":"Support","created":"2023-02-16T23:15:23.662341Z","createdAt":"2023-02-16T23:11:18.309558Z"}]',	'9',	'-',	'-',	'-',	'Support',	'2023-02-16 23:16:16.015718'),
(9,	'[{"id":15,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"1","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-17T04:23:34.223955Z","createdAt":"2023-02-16T12:34:31.416696Z"},{"id":14,"idProductCart":"BOISSON-COCACOLA-CANETTE-500G-PIÈCES","quantityCart":"2","priceCart":"3000.0","priceAchatUnit":"1200","unite":"PIÈCES","tva":"0.0","remise":"2940.0","qtyRemise":"5.0","succursale":"-","signature":"Support","created":"2023-02-17T04:23:24.735378Z","createdAt":"2023-02-16T23:09:43.227534Z"},{"id":13,"idProductCart":"PIZZA-VIANDE-2.5---KGS","quantityCart":"3","priceCart":"32000.0","priceAchatUnit":"26000","unite":"","tva":"0.0","remise":"31680.0","qtyRemise":"2.0","succursale":"-","signature":"Support","created":"2023-02-17T04:23:17.027565Z","createdAt":"2023-02-16T23:11:18.309558Z"}]',	'10',	'-',	'-',	'-',	'Support',	'2023-02-17 04:24:13.417256'),
(10,	'[{"id":16,"idProductCart":"BOISSON-COCACOLA-CANETTE-500G-PIÈCES","quantityCart":"2","priceCart":"3000.0","priceAchatUnit":"1200","unite":"PIÈCES","tva":"0.0","remise":"2940.0","qtyRemise":"5.0","succursale":"-","signature":"Support","created":"2023-02-17T05:07:44.648475Z","createdAt":"2023-02-16T23:09:43.227534Z"}]',	'11',	'Germain',	'+243813530838',	'-',	'Support',	'2023-02-17 05:08:11.508248'),
(11,	'[{"id":17,"idProductCart":"PIZZA-VIANDE-2.5---KGS","quantityCart":"1","priceCart":"32000.0","priceAchatUnit":"26000","unite":"","tva":"0.0","remise":"31680.0","qtyRemise":"2.0","succursale":"-","signature":"Support","created":"2023-02-17T06:05:28.127668Z","createdAt":"2023-02-16T23:11:18.309558Z"}]',	'12',	'-',	'-',	'-',	'Support',	'2023-02-17 06:05:38.786796'),
(12,	'[{"id":18,"idProductCart":"BOISSON-COCACOLA-CANETTE-500G-PIÈCES","quantityCart":"4","priceCart":"3000.0","priceAchatUnit":"1200","unite":"PIÈCES","tva":"0.0","remise":"2940.0","qtyRemise":"5.0","succursale":"-","signature":"Support","created":"2023-02-17T08:27:06.158375Z","createdAt":"2023-02-16T23:09:43.227534Z"}]',	'13',	'Christophe',	'0813530838',	'-',	'Support',	'2023-02-17 08:27:46.373569'),
(13,	'[{"id":23,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"3","priceCart":"7000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-17T08:48:53.208577Z","createdAt":"2023-02-17T05:55:08.209803Z"},{"id":22,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"2","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-17T08:44:00.328062Z","createdAt":"2023-02-16T12:34:31.416696Z"},{"id":21,"idProductCart":"BOISSON-COCACOLA-CANETTE-500G-PIÈCES","quantityCart":"2","priceCart":"3000.0","priceAchatUnit":"1200","unite":"PIÈCES","tva":"0.0","remise":"2940.0","qtyRemise":"5.0","succursale":"-","signature":"Support","created":"2023-02-17T08:43:53.859546Z","createdAt":"2023-02-16T23:09:43.227534Z"},{"id":19,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"7","priceCart":"7000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-17T08:43:39.622764Z","createdAt":"2023-02-17T05:55:08.209803Z"}]',	'14',	'KAZADI',	'0810001012',	'-',	'Support',	'2023-02-17 10:06:14.814173'),
(14,	'[{"id":24,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"10","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-17T10:19:45.723006Z","createdAt":"2023-02-16T12:34:31.416696Z"}]',	'15',	'-',	'-',	'-',	'Support',	'2023-02-17 10:38:39.322493'),
(16,	'[{"id":30,"idProductCart":"BOISSON-COCACOLA-CANETTE-500G-PIÈCES","quantityCart":"11","priceCart":"3000.0","priceAchatUnit":"1200","unite":"PIÈCES","tva":"0.0","remise":"2940.0","qtyRemise":"5.0","succursale":"-","signature":"Support","created":"2023-02-17T10:58:41.241012Z","createdAt":"2023-02-16T23:09:43.227534Z"}]',	'17',	'-',	'-',	'-',	'Support',	'2023-02-17 11:23:12.118639'),
(17,	'[{"id":33,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"1","priceCart":"7000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-17T13:32:41.965672Z","createdAt":"2023-02-17T05:55:08.209803Z"},{"id":32,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"10","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-17T13:32:21.222726Z","createdAt":"2023-02-17T13:31:37.436638Z"},{"id":31,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"12","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-17T13:12:06.401763Z","createdAt":"2023-02-17T13:10:05.748169Z"}]',	'18',	'-',	'-',	'-',	'Support',	'2023-02-17 13:34:25.994745'),
(18,	'[{"id":35,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"1","priceCart":"7000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-17T14:10:16.683659Z","createdAt":"2023-02-17T05:55:08.209803Z"},{"id":34,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"34","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-17T14:10:04.154721Z","createdAt":"2023-02-17T13:31:37.436638Z"}]',	'18',	'-',	'-',	'-',	'Support',	'2023-02-17 14:10:34.051881'),
(19,	'[{"id":37,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"3","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-17T15:01:36.535637Z","createdAt":"2023-02-17T13:31:37.436638Z"},{"id":36,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"12","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-17T14:44:56.430967Z","createdAt":"2023-02-17T13:31:37.436638Z"}]',	'18',	'-',	'-',	'-',	'Support',	'2023-02-17 15:02:31.008134'),
(20,	'[{"id":44,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"1","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-17T15:31:03.520628Z","createdAt":"2023-02-17T13:31:37.436638Z"}]',	'21',	'-',	'-',	'-',	'Support',	'2023-02-17 15:31:40.961205'),
(21,	'[{"id":51,"idProductCart":"BOISSON-COCACOLA-CANETTE-500G-PIÈCES","quantityCart":"2","priceCart":"3000.0","priceAchatUnit":"1200","unite":"PIÈCES","tva":"0.0","remise":"2940.0","qtyRemise":"5.0","succursale":"-","signature":"Support","created":"2023-02-17T16:12:10.088457Z","createdAt":"2023-02-16T23:09:43.227534Z"},{"id":49,"idProductCart":"BOISSON-COCACOLA-CANETTE-500G-PIÈCES","quantityCart":"1","priceCart":"3000.0","priceAchatUnit":"1200","unite":"PIÈCES","tva":"0.0","remise":"2940.0","qtyRemise":"5.0","succursale":"-","signature":"Support","created":"2023-02-17T16:06:58.852781Z","createdAt":"2023-02-16T23:09:43.227534Z"},{"id":48,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"1","priceCart":"7000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-17T16:06:50.714229Z","createdAt":"2023-02-17T05:55:08.209803Z"},{"id":47,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"1","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-17T16:06:37.160385Z","createdAt":"2023-02-17T13:10:05.748169Z"},{"id":46,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"1","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-17T16:06:26.433157Z","createdAt":"2023-02-17T13:31:37.436638Z"},{"id":45,"idProductCart":"PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES","quantityCart":"1","priceCart":"41400.0","priceAchatUnit":"20700","unite":"PIÈCES","tva":"0.0","remise":"41400.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-17T16:05:27.746836Z","createdAt":"2023-02-17T15:23:13.211515Z"}]',	'21',	'-',	'-',	'-',	'Support',	'2023-02-17 16:13:19.535291'),
(22,	'[{"id":53,"idProductCart":"PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES","quantityCart":"6","priceCart":"41400.0","priceAchatUnit":"20700","unite":"PIÈCES","tva":"0.0","remise":"41400.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-17T16:18:57.083451Z","createdAt":"2023-02-17T15:23:13.211515Z"}]',	'23',	'-',	'-',	'-',	'Support',	'2023-02-17 16:19:10.87976'),
(23,	'[]',	'24',	'-',	'-',	'-',	'Support',	'2023-02-20 09:26:42.080842'),
(24,	'[]',	'25',	'-',	'-',	'-',	'Support',	'2023-02-21 11:40:45.058105'),
(25,	'[]',	'26',	'-',	'-',	'-',	'Support',	'2023-02-21 11:54:15.374619'),
(26,	'[]',	'27',	'-',	'-',	'-',	'Support',	'2023-02-22 09:04:28.581189'),
(27,	'[{"id":85,"idProductCart":"BOISSON-COCACOLA-CANETTE-500G-PIÈCES","quantityCart":"3","priceCart":"3000.0","priceAchatUnit":"1200","unite":"PIÈCES","tva":"0.0","remise":"2940.0","qtyRemise":"5.0","succursale":"-","signature":"Support","created":"2023-02-22T08:42:33.161714Z","createdAt":"2023-02-17T00:09:43.227534Z"},{"id":84,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"2","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-22T08:42:30.217739Z","createdAt":"2023-02-17T14:10:05.748169Z"},{"id":83,"idProductCart":"PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES","quantityCart":"1","priceCart":"41400.0","priceAchatUnit":"20700","unite":"PIÈCES","tva":"0.0","remise":"41400.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-22T08:42:25.695709Z","createdAt":"2023-02-17T16:23:13.211515Z"}]',	'28',	'-',	'-',	'-',	'Support',	'2023-02-22 09:22:15.99682'),
(28,	'[{"id":68,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"1","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-21T21:23:27.330465Z","createdAt":"2023-02-17T14:10:05.748169Z"},{"id":79,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"9","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-22T08:09:54.174102Z","createdAt":"2023-02-16T13:34:31.416696Z"},{"id":78,"idProductCart":"BOISSON-COCACOLA-CANETTE-500G-PIÈCES","quantityCart":"8","priceCart":"3000.0","priceAchatUnit":"1200","unite":"PIÈCES","tva":"0.0","remise":"2940.0","qtyRemise":"5.0","succursale":"-","signature":"Support","created":"2023-02-22T08:09:49.753435Z","createdAt":"2023-02-17T00:09:43.227534Z"}]',	'29',	'-',	'-',	'-',	'Support',	'2023-02-23 21:45:34.465532'),
(29,	'[{"id":92,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"2","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-23T17:54:26.007405Z","createdAt":"2023-02-17T14:10:05.748169Z"},{"id":91,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"3","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-23T17:54:24.071404Z","createdAt":"2023-02-17T14:31:37.436638Z"},{"id":90,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"45","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-23T17:54:19.688591Z","createdAt":"2023-02-16T13:34:31.416696Z"},{"id":89,"idProductCart":"PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES","quantityCart":"12","priceCart":"41400.0","priceAchatUnit":"20700","unite":"PIÈCES","tva":"0.0","remise":"41400.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-23T17:53:52.309179Z","createdAt":"2023-02-17T16:23:13.211515Z"}]',	'30',	'-',	'-',	'-',	'Support',	'2023-02-23 21:47:31.97568'),
(30,	'[{"id":57,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"12","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-20T10:45:21.297563Z","createdAt":"2023-02-17T13:31:37.436638Z"},{"id":56,"idProductCart":"PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES","quantityCart":"1","priceCart":"41400.0","priceAchatUnit":"20700","unite":"PIÈCES","tva":"0.0","remise":"41400.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-20T10:45:15.053580Z","createdAt":"2023-02-17T15:23:13.211515Z"},{"id":60,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"10","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-20T14:09:56.894333Z","createdAt":"2023-02-16T12:34:31.416696Z"},{"id":96,"idProductCart":"PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES","quantityCart":"3","priceCart":"41400.0","priceAchatUnit":"20700","unite":"PIÈCES","tva":"0.0","remise":"41400.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-23T20:14:48.742306Z","createdAt":"2023-02-17T16:23:13.211515Z"},{"id":95,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"2","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-23T20:14:47.059885Z","createdAt":"2023-02-17T14:31:37.436638Z"},{"id":94,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"7","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-23T20:14:44.821789Z","createdAt":"2023-02-17T14:10:05.748169Z"},{"id":93,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"34","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-23T20:14:42.010782Z","createdAt":"2023-02-16T13:34:31.416696Z"}]',	'30',	'-',	'-',	'-',	'Support',	'2023-02-23 21:50:46.480756'),
(31,	'[{"id":97,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"12","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-23T22:00:07.250808Z","createdAt":"2023-02-17T14:31:37.436638Z"}]',	'32',	'-',	'-',	'-',	'Support',	'2023-02-23 22:00:20.909495'),
(32,	'[{"id":99,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"3","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-23T22:49:43.354544Z","createdAt":"2023-02-17T14:31:37.436638Z"},{"id":98,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"22","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-23T22:49:37.021328Z","createdAt":"2023-02-17T14:10:05.748169Z"}]',	'33',	'-',	'-',	'-',	'Support',	'2023-02-23 22:49:56.443043'),
(33,	'[{"id":101,"idProductCart":"PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES","quantityCart":"3","priceCart":"41400.0","priceAchatUnit":"20700","unite":"PIÈCES","tva":"0.0","remise":"41400.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-23T23:05:05.905431Z","createdAt":"2023-02-17T16:23:13.211515Z"},{"id":100,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"7","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-23T23:05:00.390696Z","createdAt":"2023-02-17T14:31:37.436638Z"}]',	'34',	'-',	'-',	'-',	'Support',	'2023-02-23 23:05:14.386974'),
(34,	'[{"id":106,"idProductCart":"PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES","quantityCart":"2","priceCart":"41400.0","priceAchatUnit":"20700","unite":"PIÈCES","tva":"0.0","remise":"41400.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-24T10:37:50.533937Z","createdAt":"2023-02-17T16:23:13.211515Z"},{"id":105,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"3","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-24T10:37:48.488489Z","createdAt":"2023-02-17T14:31:37.436638Z"},{"id":104,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"15","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-24T10:37:46.392363Z","createdAt":"2023-02-17T14:10:05.748169Z"},{"id":103,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"2","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-24T10:37:34.121598Z","createdAt":"2023-02-16T13:34:31.416696Z"}]',	'35',	'Germain',	'0813530938',	'-',	'Support',	'2023-02-24 10:40:22.394175'),
(35,	'[{"id":134,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"5","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T11:02:16.734929Z","createdAt":"2023-02-17T14:31:37.436638Z"}]',	'36',	'-',	'-',	'-',	'Support',	'2023-02-25 11:23:09.473598'),
(36,	'[{"id":134,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"5","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T11:02:16.734929Z","createdAt":"2023-02-17T14:31:37.436638Z"}]',	'36',	'-',	'-',	'-',	'Support',	'2023-02-25 11:24:29.670948'),
(37,	'[{"id":134,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"5","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T11:02:16.734929Z","createdAt":"2023-02-17T14:31:37.436638Z"}]',	'36',	'-',	'-',	'-',	'Support',	'2023-02-25 11:26:08.059477'),
(38,	'[{"id":125,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"12","priceCart":"9000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"WMCOM23-001","created":"2023-02-25T07:44:24.923893Z","createdAt":"2023-02-24T22:20:41.485013Z"},{"id":124,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"5","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"WMCOM23-001","created":"2023-02-25T07:44:18.820411Z","createdAt":"2023-02-16T13:34:31.416696Z"},{"id":128,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"12","priceCart":"9000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"WMCOM23-001","created":"2023-02-25T07:47:50.772854Z","createdAt":"2023-02-24T22:20:41.485013Z"},{"id":133,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"12","priceCart":"9000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T11:02:19.495231Z","createdAt":"2023-02-24T22:20:41.485013Z"},{"id":131,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"6","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-25T11:02:12.939541Z","createdAt":"2023-02-17T14:10:05.748169Z"},{"id":127,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"5","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-24T12:01:44.648511Z","createdAt":"2023-02-17T14:10:05.748169Z"},{"id":123,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"5","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-24T11:03:21.676910Z","createdAt":"2023-02-16T13:34:31.416696Z"},{"id":126,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"3","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-24T11:03:14.419912Z","createdAt":"2023-02-17T14:10:05.748169Z"},{"id":120,"idProductCart":"PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES","quantityCart":"2","priceCart":"41400.0","priceAchatUnit":"20700","unite":"PIÈCES","tva":"0.0","remise":"41400.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-24T11:03:00.982850Z","createdAt":"2023-02-17T16:23:13.211515Z"}]',	'39',	'-',	'-',	'-',	'Support',	'2023-02-25 12:12:20.986748'),
(39,	'[{"id":137,"idProductCart":"PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES","quantityCart":"8","priceCart":"41400.0","priceAchatUnit":"20700","unite":"PIÈCES","tva":"0.0","remise":"41400.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T12:14:12.251165Z","createdAt":"2023-02-17T16:23:13.211515Z"},{"id":136,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"50","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-25T12:14:07.425015Z","createdAt":"2023-02-17T14:10:05.748169Z"},{"id":135,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"56","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T12:13:58.481904Z","createdAt":"2023-02-17T14:31:37.436638Z"}]',	'39',	'-',	'-',	'-',	'Support',	'2023-02-25 12:14:21.365573'),
(40,	'[{"id":139,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"55","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T12:19:32.332415Z","createdAt":"2023-02-17T14:31:37.436638Z"},{"id":138,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"45","priceCart":"9000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T12:19:19.295595Z","createdAt":"2023-02-24T22:20:41.485013Z"}]',	'39',	'-',	'-',	'-',	'Support',	'2023-02-25 12:19:57.092459'),
(41,	'[{"id":139,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"55","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T12:19:32.332415Z","createdAt":"2023-02-17T14:31:37.436638Z"},{"id":138,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"45","priceCart":"9000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T12:19:19.295595Z","createdAt":"2023-02-24T22:20:41.485013Z"}]',	'39',	'-',	'-',	'-',	'Support',	'2023-02-25 12:20:14.5428'),
(42,	'[{"id":140,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"20","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"Support","created":"2023-02-25T12:21:38.315040Z","createdAt":"2023-02-16T13:34:31.416696Z"}]',	'39',	'-',	'-',	'-',	'Support',	'2023-02-25 12:21:48.376069'),
(43,	'[{"id":142,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"5","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T12:55:26.476649Z","createdAt":"2023-02-17T14:31:37.436638Z"},{"id":141,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"9","priceCart":"9000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"Support","created":"2023-02-25T12:55:23.311318Z","createdAt":"2023-02-24T22:20:41.485013Z"}]',	'36',	'-',	'-',	'-',	'Support',	'2023-02-25 12:55:41.059462'),
(44,	'[{"id":150,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"10","priceCart":"9000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"WMCOM23-001","created":"2023-02-26T17:27:30.632861Z","createdAt":"2023-02-24T22:20:41.485013Z"},{"id":149,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"3","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"WMCOM23-001","created":"2023-02-26T17:27:25.597017Z","createdAt":"2023-02-17T14:31:37.436638Z"}]',	'45',	'-',	'-',	'-',	'WMCOM23-001',	'2023-02-26 17:27:37.727201'),
(45,	'[{"id":154,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"3","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"WMCOM23-001","created":"2023-02-26T17:30:05.439426Z","createdAt":"2023-02-17T14:31:37.436638Z"},{"id":153,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"5","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"WMCOM23-001","created":"2023-02-26T17:30:00.399196Z","createdAt":"2023-02-16T13:34:31.416696Z"},{"id":152,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"10","priceCart":"9000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"WMCOM23-001","created":"2023-02-26T17:29:54.166426Z","createdAt":"2023-02-24T22:20:41.485013Z"},{"id":151,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"12","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"WMCOM23-001","created":"2023-02-26T17:29:45.771492Z","createdAt":"2023-02-17T14:10:05.748169Z"}]',	'46',	'-',	'-',	'-',	'WMCOM23-001',	'2023-02-26 17:30:12.231278'),
(46,	'[{"id":158,"idProductCart":"COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES","quantityCart":"10","priceCart":"9000.0","priceAchatUnit":"6000","unite":"BOUTEILLES","tva":"0.0","remise":"7000.0","qtyRemise":"0.0","succursale":"-","signature":"WMCOM23-001","created":"2023-02-26T17:35:46.950879Z","createdAt":"2023-02-24T22:20:41.485013Z"},{"id":157,"idProductCart":"BOISSON-BIERE-PRIMUS---BOUTEILLES","quantityCart":"1","priceCart":"2500.0","priceAchatUnit":"1700","unite":"","tva":"0.0","remise":"2500.0","qtyRemise":"0.0","succursale":"-","signature":"WMCOM23-001","created":"2023-02-26T17:35:45.822136Z","createdAt":"2023-02-17T14:31:37.436638Z"},{"id":156,"idProductCart":"BIERRE-TEMBO-GRAND-65CL-BOUTEILLES","quantityCart":"2","priceCart":"2500.0","priceAchatUnit":"2000","unite":"BOUTEILLES","tva":"0.0","remise":"2475.0","qtyRemise":"10.0","succursale":"-","signature":"WMCOM23-001","created":"2023-02-26T17:35:44.662224Z","createdAt":"2023-02-17T14:10:05.748169Z"},{"id":155,"idProductCart":"BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES","quantityCart":"6","priceCart":"1293.0","priceAchatUnit":"1200","unite":"BOUTEILLES","tva":"16.0","remise":"1267.14","qtyRemise":"10.0","succursale":"-","signature":"WMCOM23-001","created":"2023-02-26T17:35:42.716943Z","createdAt":"2023-02-16T13:34:31.416696Z"}]',	'47',	'-',	'-',	'-',	'WMCOM23-001',	'2023-02-26 17:35:53.960621');

DROP TABLE IF EXISTS "gains";
DROP SEQUENCE IF EXISTS gains_id_seq;
CREATE SEQUENCE gains_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."gains" (
    "id" integer DEFAULT nextval('gains_id_seq') NOT NULL,
    "sum" double precision NOT NULL,
    "succursale" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL
) WITH (oids = false);

INSERT INTO "gains" ("id", "sum", "succursale", "signature", "created") VALUES
(1,	465,	'-',	'Support',	'2023-02-16 13:34:56.091089'),
(2,	186,	'-',	'Support',	'2023-02-16 15:58:04.646107'),
(3,	372,	'-',	'Support',	'2023-02-16 16:25:44.042008'),
(4,	279,	'-',	'Support',	'2023-02-16 16:30:55.186625'),
(5,	186,	'-',	'Support',	'2023-02-16 16:39:02.761114'),
(6,	805.6800000000012,	'-',	'Support',	'2023-02-16 19:19:18.175109'),
(7,	279,	'-',	'Support',	'2023-02-16 20:06:08.770451'),
(8,	1544.2200000000023,	'-',	'Support',	'2023-02-16 22:18:01.555869'),
(9,	3600,	'-',	'Support',	'2023-02-16 23:15:38.704853'),
(10,	279,	'-',	'Support',	'2023-02-16 23:15:46.12701'),
(11,	11360,	'-',	'Support',	'2023-02-16 23:15:23.662341'),
(12,	93,	'-',	'Support',	'2023-02-17 04:23:34.223955'),
(13,	3600,	'-',	'Support',	'2023-02-17 04:23:24.735378'),
(14,	17040,	'-',	'Support',	'2023-02-17 04:23:17.027565'),
(15,	3600,	'-',	'Support',	'2023-02-17 05:07:44.648475'),
(16,	6000,	'-',	'Support',	'2023-02-17 06:05:28.127668'),
(17,	7200,	'-',	'Support',	'2023-02-17 08:27:06.158375'),
(18,	186,	'-',	'Support',	'2023-02-17 08:44:00.328062'),
(19,	3000,	'-',	'Support',	'2023-02-17 08:48:53.208577'),
(20,	3600,	'-',	'Support',	'2023-02-17 08:43:53.859546'),
(21,	7000,	'-',	'Support',	'2023-02-17 08:43:39.622764'),
(22,	671.400000000001,	'-',	'Support',	'2023-02-17 10:19:45.723006'),
(23,	1800,	'-',	'Support',	'2023-02-17 10:39:24.241416'),
(24,	279,	'-',	'Support',	'2023-02-17 10:41:11.806896'),
(25,	19140,	'-',	'Support',	'2023-02-17 10:58:41.241012'),
(26,	8000,	'-',	'Support',	'2023-02-17 13:32:21.222726'),
(27,	5700,	'-',	'Support',	'2023-02-17 13:12:06.401763'),
(28,	1000,	'-',	'Support',	'2023-02-17 13:32:41.965672'),
(29,	1000,	'-',	'Support',	'2023-02-17 14:10:16.683659'),
(30,	27200,	'-',	'Support',	'2023-02-17 14:10:04.154721'),
(31,	9600,	'-',	'Support',	'2023-02-17 14:44:56.430967'),
(32,	2400,	'-',	'Support',	'2023-02-17 15:01:36.535637'),
(33,	800,	'-',	'Support',	'2023-02-17 15:31:03.520628'),
(34,	1800,	'-',	'Support',	'2023-02-17 16:06:58.852781'),
(35,	500,	'-',	'Support',	'2023-02-17 16:06:37.160385'),
(36,	1000,	'-',	'Support',	'2023-02-17 16:06:50.714229'),
(37,	20700,	'-',	'Support',	'2023-02-17 16:05:27.746836'),
(38,	3600,	'-',	'Support',	'2023-02-17 16:12:10.088457'),
(39,	800,	'-',	'Support',	'2023-02-17 16:06:26.433157'),
(40,	124200,	'-',	'Support',	'2023-02-17 16:18:57.083451'),
(41,	5400,	'-',	'Support',	'2023-02-22 08:42:33.161714'),
(42,	1000,	'-',	'Support',	'2023-02-22 08:42:30.217739'),
(43,	20700,	'-',	'Support',	'2023-02-22 08:42:25.695709'),
(44,	500,	'-',	'Support',	'2023-02-21 21:23:27.330465'),
(45,	837,	'-',	'Support',	'2023-02-22 08:09:54.174102'),
(46,	13920,	'-',	'Support',	'2023-02-22 08:09:49.753435'),
(47,	1000,	'-',	'Support',	'2023-02-23 17:54:26.007405'),
(48,	3021.3000000000047,	'-',	'Support',	'2023-02-23 17:54:19.688591'),
(49,	2400,	'-',	'Support',	'2023-02-23 17:54:24.071404'),
(50,	248400,	'-',	'Support',	'2023-02-23 17:53:52.309179'),
(51,	9600,	'-',	'Support',	'2023-02-20 10:45:21.297563'),
(52,	1600,	'-',	'Support',	'2023-02-23 20:14:47.059885'),
(53,	62100,	'-',	'Support',	'2023-02-23 20:14:48.742306'),
(54,	20700,	'-',	'Support',	'2023-02-20 10:45:15.05358'),
(55,	3500,	'-',	'Support',	'2023-02-23 20:14:44.821789'),
(56,	2282.7600000000034,	'-',	'Support',	'2023-02-23 20:14:42.010782'),
(57,	671.400000000001,	'-',	'Support',	'2023-02-20 14:09:56.894333'),
(58,	9600,	'-',	'Support',	'2023-02-23 22:00:07.250808'),
(59,	10450,	'-',	'Support',	'2023-02-23 22:49:37.021328'),
(60,	2400,	'-',	'Support',	'2023-02-23 22:49:43.354544'),
(61,	62100,	'-',	'Support',	'2023-02-23 23:05:05.905431'),
(62,	5600,	'-',	'Support',	'2023-02-23 23:05:00.390696'),
(63,	7125,	'-',	'Support',	'2023-02-24 10:37:46.392363'),
(64,	2400,	'-',	'Support',	'2023-02-24 10:37:48.488489'),
(65,	41400,	'-',	'Support',	'2023-02-24 10:37:50.533937'),
(66,	186,	'-',	'Support',	'2023-02-24 10:37:34.121598'),
(67,	4000,	'-',	'Support',	'2023-02-25 11:02:16.734929'),
(68,	4000,	'-',	'Support',	'2023-02-25 11:02:16.734929'),
(69,	4000,	'-',	'Support',	'2023-02-25 11:02:16.734929'),
(70,	465,	'-',	'WMCOM23-001',	'2023-02-25 07:44:18.820411'),
(71,	12000,	'-',	'WMCOM23-001',	'2023-02-25 07:44:24.923893'),
(72,	2500,	'-',	'Support',	'2023-02-24 12:01:44.648511'),
(73,	12000,	'-',	'Support',	'2023-02-25 11:02:19.495231'),
(74,	1500,	'-',	'Support',	'2023-02-24 11:03:14.419912'),
(75,	465,	'-',	'Support',	'2023-02-24 11:03:21.67691'),
(76,	3000,	'-',	'Support',	'2023-02-25 11:02:12.939541'),
(77,	41400,	'-',	'Support',	'2023-02-24 11:03:00.98285'),
(78,	12000,	'-',	'WMCOM23-001',	'2023-02-25 07:47:50.772854'),
(79,	44800,	'-',	'Support',	'2023-02-25 12:13:58.481904'),
(80,	165600,	'-',	'Support',	'2023-02-25 12:14:12.251165'),
(81,	23750,	'-',	'Support',	'2023-02-25 12:14:07.425015'),
(82,	44000,	'-',	'Support',	'2023-02-25 12:19:32.332415'),
(83,	45000,	'-',	'Support',	'2023-02-25 12:19:19.295595'),
(84,	1342.800000000002,	'-',	'Support',	'2023-02-25 12:21:38.31504'),
(85,	4000,	'-',	'Support',	'2023-02-25 12:55:26.476649'),
(86,	9000,	'-',	'Support',	'2023-02-25 12:55:23.311318'),
(87,	10000,	'-',	'WMCOM23-001',	'2023-02-26 17:27:30.632861'),
(88,	2400,	'-',	'WMCOM23-001',	'2023-02-26 17:27:25.597017'),
(89,	465,	'-',	'WMCOM23-001',	'2023-02-26 17:30:00.399196'),
(90,	5700,	'-',	'WMCOM23-001',	'2023-02-26 17:29:45.771492'),
(91,	2400,	'-',	'WMCOM23-001',	'2023-02-26 17:30:05.439426'),
(92,	10000,	'-',	'WMCOM23-001',	'2023-02-26 17:29:54.166426'),
(93,	800,	'-',	'WMCOM23-001',	'2023-02-26 17:35:45.822136'),
(94,	10000,	'-',	'WMCOM23-001',	'2023-02-26 17:35:46.950879'),
(95,	558,	'-',	'WMCOM23-001',	'2023-02-26 17:35:42.716943'),
(96,	1000,	'-',	'WMCOM23-001',	'2023-02-26 17:35:44.662224');

DROP TABLE IF EXISTS "history_ravitaillements";
DROP SEQUENCE IF EXISTS history_ravitaillements_id_seq;
CREATE SEQUENCE history_ravitaillements_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."history_ravitaillements" (
    "id" integer DEFAULT nextval('history_ravitaillements_id_seq') NOT NULL,
    "id_product" character varying NOT NULL,
    "quantity" character varying NOT NULL,
    "quantity_achat" character varying NOT NULL,
    "price_achat_unit" character varying NOT NULL,
    "prix_vente_unit" character varying NOT NULL,
    "unite" character varying NOT NULL,
    "marge_ben" character varying NOT NULL,
    "tva" character varying NOT NULL,
    "qty_ravitailler" character varying NOT NULL,
    "succursale" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL
) WITH (oids = false);

INSERT INTO "history_ravitaillements" ("id", "id_product", "quantity", "quantity_achat", "price_achat_unit", "prix_vente_unit", "unite", "marge_ben", "tva", "qty_ravitailler", "succursale", "signature", "created") VALUES
(1,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(2,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(3,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(4,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(5,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(6,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(7,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(8,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(9,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(10,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(11,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(12,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(13,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(14,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(15,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'-20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(16,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(17,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(18,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(19,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(20,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(21,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(22,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(23,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(24,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(25,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(26,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'49.0',	'50',	'20700',	'41400.0',	'PIÈCES',	'20700.0',	'0.0',	'50',	'-',	'Support',	'2023-02-17 15:23:13.211515'),
(27,	'BOISSON-COCACOLA-CANETTE-500G-PIÈCES',	'1.0',	'50',	'1200',	'3000.0',	'PIÈCES',	'-58800.0',	'0.0',	'50',	'-',	'Support',	'2023-02-16 23:09:43.227534'),
(28,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'0.0',	'5',	'6000',	'7000.0',	'BOUTEILLES',	'-30000.0',	'0.0',	'5',	'-',	'Support',	'2023-02-17 05:55:08.209803'),
(29,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'520.0',	'520.0',	'6000',	'0.0',	'BOUTEILLES',	'0.0',	'0.0',	'5',	'-',	'Support',	'2023-02-24 21:17:44.745687');

DROP TABLE IF EXISTS "mails";
DROP SEQUENCE IF EXISTS mails_id_seq;
CREATE SEQUENCE mails_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."mails" (
    "id" integer DEFAULT nextval('mails_id_seq') NOT NULL,
    "full_name" character varying NOT NULL,
    "email" character varying NOT NULL,
    "cc" text,
    "objet" character varying NOT NULL,
    "message" character varying NOT NULL,
    "piece_jointe" character varying NOT NULL,
    "read" character varying NOT NULL,
    "full_name_dest" character varying NOT NULL,
    "email_dest" character varying NOT NULL,
    "date_send" timestamp NOT NULL,
    "date_read" timestamp NOT NULL
) WITH (oids = false);


DROP TABLE IF EXISTS "monnaies";
DROP SEQUENCE IF EXISTS monnaies_id_seq;
CREATE SEQUENCE monnaies_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."monnaies" (
    "id" integer DEFAULT nextval('monnaies_id_seq') NOT NULL,
    "monnaie" character varying NOT NULL,
    "monnaie_en_lettre" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL,
    "is_active" character varying NOT NULL,
    CONSTRAINT "monnaies_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "monnaies" ("id", "monnaie", "monnaie_en_lettre", "signature", "created", "is_active") VALUES
(2,	'CDF',	'Franc Congolais',	'Support',	'2023-01-19 07:17:09.773411',	'false'),
(1,	'$',	'Dollard Amercain',	'Support',	'2023-01-18 19:04:01.076982',	'true');

DROP TABLE IF EXISTS "number_factures";
DROP SEQUENCE IF EXISTS number_factures_id_seq;
CREATE SEQUENCE number_factures_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."number_factures" (
    "id" integer DEFAULT nextval('number_factures_id_seq') NOT NULL,
    "number" character varying NOT NULL,
    "succursale" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL
) WITH (oids = false);

INSERT INTO "number_factures" ("id", "number", "succursale", "signature", "created") VALUES
(1,	'1',	'-',	'Support',	'2023-02-16 14:53:54.474485'),
(2,	'2',	'-',	'Support',	'2023-02-16 15:58:15.740305'),
(3,	'3',	'-',	'Support',	'2023-02-16 16:25:53.842136'),
(4,	'4',	'-',	'Support',	'2023-02-16 16:31:06.867554'),
(5,	'5',	'-',	'Support',	'2023-02-16 16:39:11.445803'),
(6,	'6',	'-',	'Support',	'2023-02-16 19:19:29.569438'),
(7,	'7',	'-',	'Support',	'2023-02-16 20:06:37.480186'),
(8,	'8',	'-',	'Support',	'2023-02-16 22:18:13.765748'),
(9,	'9',	'-',	'Support',	'2023-02-16 23:16:16.645491'),
(10,	'10',	'-',	'Support',	'2023-02-17 04:24:14.005222'),
(11,	'11',	'-',	'Support',	'2023-02-17 05:08:12.147079'),
(12,	'12',	'-',	'Support',	'2023-02-17 06:05:39.434896'),
(13,	'13',	'-',	'Support',	'2023-02-17 08:27:46.965668'),
(14,	'14',	'-',	'Support',	'2023-02-17 10:06:15.44617'),
(15,	'15',	'-',	'Support',	'2023-02-17 10:38:39.940162'),
(16,	'15',	'-',	'Support',	'2023-02-17 10:46:31.147885'),
(17,	'17',	'-',	'Support',	'2023-02-17 11:23:12.706927'),
(18,	'18',	'-',	'Support',	'2023-02-17 13:34:26.561308'),
(19,	'18',	'-',	'Support',	'2023-02-17 14:10:34.658831'),
(20,	'18',	'-',	'Support',	'2023-02-17 15:02:31.900147'),
(21,	'21',	'-',	'Support',	'2023-02-17 15:31:41.567155'),
(22,	'21',	'-',	'Support',	'2023-02-17 16:13:20.119035'),
(23,	'23',	'-',	'Support',	'2023-02-17 16:19:11.590239'),
(24,	'24',	'-',	'Support',	'2023-02-20 09:26:42.7051'),
(25,	'25',	'-',	'Support',	'2023-02-21 11:40:45.687114'),
(26,	'26',	'-',	'Support',	'2023-02-21 11:54:16.007838'),
(27,	'27',	'-',	'Support',	'2023-02-22 09:04:29.310533'),
(28,	'28',	'-',	'Support',	'2023-02-22 09:22:16.622845'),
(29,	'29',	'-',	'Support',	'2023-02-23 21:45:35.155396'),
(30,	'30',	'-',	'Support',	'2023-02-23 21:47:32.704831'),
(31,	'30',	'-',	'Support',	'2023-02-23 21:50:47.128799'),
(32,	'32',	'-',	'Support',	'2023-02-23 22:00:21.56513'),
(33,	'33',	'-',	'Support',	'2023-02-23 22:49:57.08561'),
(34,	'34',	'-',	'Support',	'2023-02-23 23:05:15.084977'),
(35,	'35',	'-',	'Support',	'2023-02-24 10:40:23.425615'),
(36,	'36',	'-',	'Support',	'2023-02-25 11:23:11.327842'),
(37,	'36',	'-',	'Support',	'2023-02-25 11:24:31.861099'),
(38,	'36',	'-',	'Support',	'2023-02-25 11:26:08.640696'),
(39,	'39',	'-',	'Support',	'2023-02-25 12:12:24.623005'),
(40,	'39',	'-',	'Support',	'2023-02-25 12:14:23.325923'),
(41,	'39',	'-',	'Support',	'2023-02-25 12:20:05.375092'),
(42,	'39',	'-',	'Support',	'2023-02-25 12:20:43.065827'),
(43,	'39',	'-',	'Support',	'2023-02-25 12:21:48.919714'),
(44,	'36',	'-',	'Support',	'2023-02-25 12:55:41.642968'),
(45,	'45',	'-',	'WMCOM23-001',	'2023-02-26 17:27:39.050023'),
(46,	'46',	'-',	'WMCOM23-001',	'2023-02-26 17:30:13.075284'),
(47,	'47',	'-',	'WMCOM23-001',	'2023-02-26 17:35:54.587089');

DROP TABLE IF EXISTS "paiement_reservations";
DROP SEQUENCE IF EXISTS paiement_reservations_id_seq;
CREATE SEQUENCE paiement_reservations_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."paiement_reservations" (
    "id" integer DEFAULT nextval('paiement_reservations_id_seq') NOT NULL,
    "reference" integer NOT NULL,
    "client" character varying NOT NULL,
    "motif" character varying NOT NULL,
    "montant" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL,
    CONSTRAINT "paiement_reservations_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "paiement_reservations" ("id", "reference", "client", "motif", "montant", "signature", "created") VALUES
(1,	1,	'Monsieur Jean de Dieu',	'Avance',	'2500',	'Support',	'2023-02-16 04:50:31.850172'),
(2,	3,	'pasteur gola',	'Avance',	'600',	'Support',	'2023-02-17 08:37:24.313558'),
(3,	9,	'tshibwabwa',	'acompte',	'3500',	'Support',	'2023-02-17 18:18:14.419106'),
(4,	2,	'MATONDO LOUIS',	'Avance',	'560',	'Support',	'2023-02-25 19:13:44.668455');

DROP TABLE IF EXISTS "produits_model";
DROP SEQUENCE IF EXISTS produits_model_id_seq;
CREATE SEQUENCE produits_model_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."produits_model" (
    "id" integer DEFAULT nextval('produits_model_id_seq') NOT NULL,
    "categorie" character varying NOT NULL,
    "sous_categorie_1" character varying NOT NULL,
    "sous_categorie_2" character varying NOT NULL,
    "sous_categorie_3" character varying NOT NULL,
    "sous_categorie_4" character varying NOT NULL,
    "id_product" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL
) WITH (oids = false);

INSERT INTO "produits_model" ("id", "categorie", "sous_categorie_1", "sous_categorie_2", "sous_categorie_3", "sous_categorie_4", "id_product", "signature", "created") VALUES
(1,	'Boisson',	'Eau',	'Swissta',	'1.5L',	'Bouteilles',	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'Support',	'2023-02-16 08:23:46.653482'),
(2,	'pizza',	'viande',	'2.5',	'-',	'Kgs',	'PIZZA-VIANDE-2.5---KGS',	'Support',	'2023-02-16 23:03:16.932791'),
(3,	'boisson',	'coca cola',	'canette',	'500 g',	'Pièces',	'BOISSON-COCACOLA-CANETTE-500G-PIÈCES',	'Support',	'2023-02-16 23:05:47.740148'),
(4,	'Champagne',	'naufragée',	'de cuvée',	'Juglar',	'Bouteilles',	'CHAMPAGNE-NAUFRAGÉE-DECUVÉE-JUGLAR-BOUTEILLES',	'Support',	'2023-02-17 05:32:18.637078'),
(5,	'Champagne',	'Boërl&Kroff',	'Magnum',	'1996',	'Bouteilles',	'CHAMPAGNE-BOËRL&KROFF-MAGNUM-1996-BOUTEILLES',	'Support',	'2023-02-17 05:35:48.127226'),
(6,	'cocktail',	'Citron',	'Champagne',	'vodka',	'Bouteilles',	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'Support',	'2023-02-17 05:43:55.317085'),
(7,	'Bierre',	'Tembo',	'grand',	'65cl',	'Bouteilles',	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'Support',	'2023-02-17 05:49:50.322195'),
(8,	'boisson',	'biere',	'primus',	'-',	'Bouteilles',	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'Support',	'2023-02-17 13:19:26.692122'),
(9,	'vin',	'bordeau',	'porto',	'france',	'Bouteilles',	'VIN-BORDEAU-PORTO-FRANCE-BOUTEILLES',	'Support',	'2023-02-17 15:03:59.363808'),
(10,	'PIZZA NORMAL',	'IVANNA',	'CHAPITEAU',	'PRINTEMPS',	'Pièces',	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'Support',	'2023-02-17 15:11:31.504915'),
(11,	'PIZZA BAMBINO',	'IVANNA',	'CHAPITEAU',	'PRINTEMPS',	'Pièces',	'PIZZABAMBINO-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'Support',	'2023-02-17 15:15:05.996887'),
(12,	'PIZZA',	'normal',	'ivanna',	'-',	'Pièces',	'PIZZA-NORMAL-IVANNA---PIÈCES',	'Support',	'2023-02-25 14:01:51.860676'),
(13,	'Pizza',	'Normal',	'Hawaienne',	'-',	'Pièces',	'PIZZA-NORMAL-HAWAIENNE---PIÈCES',	'Support',	'2023-02-25 14:07:06.940175');

DROP TABLE IF EXISTS "refresh_tokens";
DROP SEQUENCE IF EXISTS refresh_tokens_id_seq;
CREATE SEQUENCE refresh_tokens_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."refresh_tokens" (
    "id" integer DEFAULT nextval('refresh_tokens_id_seq') NOT NULL,
    "owner" character varying NOT NULL,
    "token" character varying NOT NULL
) WITH (oids = false);

INSERT INTO "refresh_tokens" ("id", "owner", "token") VALUES
(1,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc3ODA4Nzg2LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NjUxMjc4Nn0._zoAsjP9-0TQVH5xXyMgxBUcwU7wdBg4c2g1EvqxzQs'),
(2,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc3ODA4ODQ1LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NjUxMjg0NX0.tBPILRHkkKFfvhIneOO6Pgp5iKlR_SmW6pJmB3zQ5Tg'),
(3,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc3ODc4MjUwLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NjU4MjI1MH0.vBvwgvBkbwgbt-QILRaPsnP4C90lwnX1AJ2P22EYBFc'),
(4,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc3ODc5Nzc5LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NjU4Mzc3OX0.6K7IM4oUBjKKPAPy1LYIsvQqwsaZLcRI0BpJREERJlU'),
(5,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc3ODc5Nzc5LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NjU4Mzc3OX0.6K7IM4oUBjKKPAPy1LYIsvQqwsaZLcRI0BpJREERJlU'),
(6,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc3OTMxNDkzLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NjYzNTQ5M30.7LKL-cELT8jgO6s7UxXkIFy46y8avS6HQqewCEgXp6k'),
(7,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NTI3MDEwLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzIzMTAxMH0.iHLu7fjTkBkzcgttUKJ4K8wKmE_ad0Oa0aOoFtg9A_U'),
(8,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NTI3MDMwLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzIzMTAzMH0.VYHaugTCPaaJgTFDC-lWccPF7Zd1GRs4gdyn8kYLVyE'),
(9,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NTI3MDU2LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzIzMTA1Nn0.7jpPTPY-SeB5FCwFlKPFm9f5m4FqaU08xwSYZ0PzIWs'),
(10,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NTI3MDgwLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzIzMTA4MH0.upM6Xa_uRNbIsE92huAVSo0j3qOaTQWEJJIRebXmFcA'),
(11,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NTI3NTc2LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzIzMTU3Nn0.iLg2ZGKvEnxcWLBEjLGJWWgCpJRHihK_W_S0fkfdgOM'),
(12,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NTI4MTA4LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzIzMjEwOH0.MQspMXhaGt_rs4SprbRC4AjAc1pj68Coro2iEsF30ss'),
(13,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NTI4MzA0LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzIzMjMwNH0.SAlBk7vkren3vRScwDlo90W-aKoL8oVCMRp0rwt0rek'),
(14,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NTMwOTI5LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzIzNDkyOX0.pZF_CNHiDKocJH0tAGY0txjVCmCEkSCVW-vF-uH9da0'),
(15,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NTMyMjM5LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzIzNjIzOX0.-cvGD6BL4iQpevkbk3K7WpBiTthe7zOxIoN9aAkVJbk'),
(16,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NTMyNTQxLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzIzNjU0MX0.4TiLbMC4wmG6qYF_FIc6oY1zpHsLrbzeEeY1HoXyv5g'),
(17,	'6',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwiZXhwIjoxNjc4NTQ5ODE1LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzI1MzgxNX0.bYRWkKATwiiqYWkaTaZkeCTJSXR-phN8LjhUOfHB0kI'),
(18,	'6',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwiZXhwIjoxNjc4NTQ5ODY1LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzI1Mzg2NX0.G4iFvfrqcpN2I-emuODopvcTmFt0rA0p6NLihHYxpJk'),
(19,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NTUwMDIxLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzI1NDAyMX0.3K-qJ4NtsXPWqNll2LyqCsUIvy-L0y4WZudEgYD6iNk'),
(20,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NTUwNDQ0LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzI1NDQ0NH0.QtVLpobV6LOCYBqYl9c8LPhV6xN8ipgH2PldXj4IAWA'),
(21,	'6',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwiZXhwIjoxNjc4NTUwNzc1LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzI1NDc3NX0.Cqla-JlFGaDSXLeeMDzS7If69n6UkrP6J1iZD2qddas'),
(22,	'6',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwiZXhwIjoxNjc4NTc1OTE1LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzI3OTkxNX0.DKxR7n016tiIyfKy6DmS1cVGWFNCbQMuDyLF6Cj3CX4'),
(23,	'7',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywiZXhwIjoxNjc4NTc1OTQ4LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzI3OTk0OH0.LtTQJ9Lu1Q5qx9aa0AmqrV2saQy6dfYXJeC10UtA3kk'),
(24,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NTc1OTY3LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzI3OTk2N30.Foq16DGG6l8Et4WdAOJKzegMRMYNFq50PfH_V6qyWGY'),
(25,	'7',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywiZXhwIjoxNjc4NjAzNDc5LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzMwNzQ3OX0.2xj_craEtPUvkqS48GXlpcXHG1YmO3_IRMTlizWUFMw'),
(26,	'16',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTYsImV4cCI6MTY3ODYwNTgwOSwidHlwZSI6InJlZnJlc2giLCJpYXQiOjE2NzczMDk4MDl9.u1BLbtjoA0MNbah9EaId8lyYxismonz0-EMhOI7wKcU'),
(27,	'17',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTcsImV4cCI6MTY3ODYwODQyMCwidHlwZSI6InJlZnJlc2giLCJpYXQiOjE2NzczMTI0MjB9.nF9li-db-L_9czQG755uus6R-QJ5ysbzQUthOTT5jIA'),
(28,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NjE1NjQ4LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzMxOTY0OH0.t5zzGAOmwYiQdPgvndhVuFFYP-RHDxOUeXjwRlsgMUk'),
(29,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NjE3OTQzLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzMyMTk0M30.Yytcs2PiTYWMu3-0kEKXY_IlDhSJriJ15My_q5GTyrY'),
(30,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NjIwMTY3LCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzMyNDE2N30.Jj9t2sxJWt1jpuvHmQlcxDJ3-mWCbEZSGObXmvJQs6E'),
(31,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NjI1MjEyLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzMyOTIxMn0.x_-HWLWvuYaywsbiWq4CVzbSnGntZ-O_6WFIULl24AY'),
(32,	'5',	'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZXhwIjoxNjc4NjI5ODAxLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NzMzMzgwMX0.ARexMyRp27DS_jyo4BZZBcW9TQTCX3Ts7ycH8vU35to');

DROP TABLE IF EXISTS "reservations";
DROP SEQUENCE IF EXISTS reservations_id_seq;
CREATE SEQUENCE reservations_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."reservations" (
    "id" integer DEFAULT nextval('reservations_id_seq') NOT NULL,
    "client" character varying NOT NULL,
    "telephone" character varying NOT NULL,
    "email" character varying NOT NULL,
    "adresse" character varying NOT NULL,
    "nbre_personne" character varying NOT NULL,
    "duree_event" character varying NOT NULL,
    "created_day" timestamp NOT NULL,
    "background" character varying NOT NULL,
    "event_name" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL,
    CONSTRAINT "reservations_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "reservations" ("id", "client", "telephone", "email", "adresse", "nbre_personne", "duree_event", "created_day", "background", "event_name", "signature", "created") VALUES
(1,	'Monsieur Jean de Dieu',	'+243 81 353 0838',	'katakugermain@gmail.com',	'Ngaliema, GB, tangu 36bis',	'250',	'24 Heures',	'2023-02-22 00:00:00',	'4293673082',	'Mariage',	'Support',	'2023-02-16 04:15:54.957055'),
(2,	'MATONDO LOUIS',	'0840008460',	'matondo@gmail.com',	'buambemba 05',	'120',	'14h a 20h',	'2023-01-29 00:00:00',	'4284922730',	'Conference',	'Support',	'2023-02-16 22:49:07.027371'),
(3,	'pasteur gola',	'0819753232',	'gola@hotmail.com',	'triomphale 75; lingwala',	'500',	'2 heurrs du temps de 15h00 a 17 h00',	'2023-02-06 00:00:00',	'4294944550',	'Campagne',	'Support',	'2023-02-16 22:52:34.673639'),
(4,	'PAPA CHANCE BOLOKO',	'0901292798',	'chanceboloko@gmail.com',	'05 université, kalamu',	'-',	'15h du 16/02 juque a 17h du 17/02',	'2023-02-17 00:00:00',	'4289415100',	'Funeraille',	'Support',	'2023-02-16 22:57:02.493505'),
(5,	'HONORABLE BARNABE',	'0819753030',	'-',	'lingwala, 24 ',	'-',	'3 heures',	'2023-02-27 00:00:00',	'4287458915',	'Autres',	'Support',	'2023-02-16 22:59:20.603551'),
(6,	'coach  mike',	'851298713',	'imike@gmail.com',	'maluku, lumumba 165',	'20',	'1h 30 minutes',	'2023-02-27 00:00:00',	'4282557941',	'Formation',	'Support',	'2023-02-16 23:00:41.204687'),
(7,	'Chistopher',	'0813530838',	'',	'Limete, kingabwa 345',	'30',	'4 heures',	'2023-02-06 00:00:00',	'4284922730',	'Conference',	'Support',	'2023-02-17 08:36:35.052431'),
(8,	'mutombo',	'0840008460',	'trynnutmba@gmail.com',	' bulembemba 05',	'150',	'2 heures ',	'2023-02-01 00:00:00',	'4293673082',	'Mariage',	'Support',	'2023-02-17 14:08:15.261913'),
(9,	'tshibwabwa',	'0847190482',	'-',	'-',	'300',	'20H30 jusqu''a l''aube',	'2023-02-05 00:00:00',	'4293673082',	'Mariage',	'Support',	'2023-02-17 18:17:08.148676');

DROP TABLE IF EXISTS "update_versions";
DROP SEQUENCE IF EXISTS update_versions_id_seq;
CREATE SEQUENCE update_versions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."update_versions" (
    "id" integer DEFAULT nextval('update_versions_id_seq') NOT NULL,
    "version" character varying NOT NULL,
    "url_update" character varying NOT NULL,
    "created" timestamp NOT NULL,
    "is_active" character varying NOT NULL,
    "motif" character varying NOT NULL,
    CONSTRAINT "update_versions_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "users";
DROP SEQUENCE IF EXISTS users_id_seq;
CREATE SEQUENCE users_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."users" (
    "id" integer DEFAULT nextval('users_id_seq') NOT NULL,
    "photo" character varying NOT NULL,
    "nom" character varying NOT NULL,
    "prenom" character varying NOT NULL,
    "email" character varying NOT NULL,
    "telephone" character varying NOT NULL,
    "matricule" character varying NOT NULL,
    "departement" character varying NOT NULL,
    "services_affectation" character varying NOT NULL,
    "fonction_occupe" character varying NOT NULL,
    "role" character varying NOT NULL,
    "is_online" character varying NOT NULL,
    "created_at" timestamp NOT NULL,
    "password_hash" character varying NOT NULL,
    "succursale" character varying NOT NULL
) WITH (oids = false);

INSERT INTO "users" ("id", "photo", "nom", "prenom", "email", "telephone", "matricule", "departement", "services_affectation", "fonction_occupe", "role", "is_online", "created_at", "password_hash", "succursale") VALUES
(16,	'-',	'Rigobert',	'Jean pierre',	'rigobertjacque@gmail.com',	'+243813530838',	'WMCOM23-001',	'Commercial',	'Livraison',	'Livreur(se)',	'2',	'false',	'2023-02-25 08:20:29.518803',	'25d55ad283aa400af464c76d713c07ad',	'-'),
(5,	'',	'Support',	'Support',	'support@eventdrc.com',	'0000000000',	'Support',	'Commercial',	'Support',	'Support',	'0',	'true',	'2023-01-05 11:30:06.571153',	'81dc9bdb52d04dc20036dbd8313ed055',	'-');

DROP TABLE IF EXISTS "ventes";
DROP SEQUENCE IF EXISTS ventes_id_seq;
CREATE SEQUENCE ventes_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."ventes" (
    "id" integer DEFAULT nextval('ventes_id_seq') NOT NULL,
    "id_product_cart" character varying NOT NULL,
    "quantity_cart" character varying NOT NULL,
    "price_total_cart" character varying NOT NULL,
    "unite" character varying NOT NULL,
    "tva" character varying NOT NULL,
    "remise" character varying NOT NULL,
    "qty_remise" character varying NOT NULL,
    "succursale" character varying NOT NULL,
    "signature" character varying NOT NULL,
    "created" timestamp NOT NULL,
    "created_at" timestamp NOT NULL
) WITH (oids = false);

INSERT INTO "ventes" ("id", "id_product_cart", "quantity_cart", "price_total_cart", "unite", "tva", "remise", "qty_remise", "succursale", "signature", "created", "created_at") VALUES
(1,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'5',	'6465.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-16 13:34:56.091089',	'2023-02-16 12:34:31.416696'),
(2,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'2',	'2586.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-16 15:58:04.646107',	'2023-02-16 12:34:31.416696'),
(3,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'4',	'5172.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-16 16:25:44.042008',	'2023-02-16 12:34:31.416696'),
(4,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'3',	'3879.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-16 16:30:55.186625',	'2023-02-16 12:34:31.416696'),
(5,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'2',	'2586.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-16 16:39:02.761114',	'2023-02-16 12:34:31.416696'),
(6,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'12',	'15205.68',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-16 19:19:18.175109',	'2023-02-16 12:34:31.416696'),
(7,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'3',	'3879.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-16 20:06:08.770451',	'2023-02-16 12:34:31.416696'),
(8,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'23',	'29144.22',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-16 22:18:01.555869',	'2023-02-16 12:34:31.416696'),
(9,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'3',	'3879.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-16 23:15:46.12701',	'2023-02-16 12:34:31.416696'),
(10,	'BOISSON-COCACOLA-CANETTE-500G-PIÈCES',	'2',	'6000.0',	'PIÈCES',	'0.0',	'2940.0',	'5.0',	'-',	'Support',	'2023-02-16 23:15:38.704853',	'2023-02-16 23:09:43.227534'),
(11,	'PIZZA-VIANDE-2.5---KGS',	'2',	'63360.0',	'',	'0.0',	'31680.0',	'2.0',	'-',	'Support',	'2023-02-16 23:15:23.662341',	'2023-02-16 23:11:18.309558'),
(12,	'BOISSON-COCACOLA-CANETTE-500G-PIÈCES',	'2',	'6000.0',	'PIÈCES',	'0.0',	'2940.0',	'5.0',	'-',	'Support',	'2023-02-17 04:23:24.735378',	'2023-02-16 23:09:43.227534'),
(13,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'1',	'1293.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-17 04:23:34.223955',	'2023-02-16 12:34:31.416696'),
(14,	'PIZZA-VIANDE-2.5---KGS',	'3',	'95040.0',	'',	'0.0',	'31680.0',	'2.0',	'-',	'Support',	'2023-02-17 04:23:17.027565',	'2023-02-16 23:11:18.309558'),
(15,	'BOISSON-COCACOLA-CANETTE-500G-PIÈCES',	'2',	'6000.0',	'PIÈCES',	'0.0',	'2940.0',	'5.0',	'-',	'Support',	'2023-02-17 05:07:44.648475',	'2023-02-16 23:09:43.227534'),
(16,	'PIZZA-VIANDE-2.5---KGS',	'1',	'32000.0',	'',	'0.0',	'31680.0',	'2.0',	'-',	'Support',	'2023-02-17 06:05:28.127668',	'2023-02-16 23:11:18.309558'),
(17,	'BOISSON-COCACOLA-CANETTE-500G-PIÈCES',	'4',	'12000.0',	'PIÈCES',	'0.0',	'2940.0',	'5.0',	'-',	'Support',	'2023-02-17 08:27:06.158375',	'2023-02-16 23:09:43.227534'),
(18,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'3',	'21000.0',	'BOUTEILLES',	'0.0',	'7000.0',	'0.0',	'-',	'Support',	'2023-02-17 08:48:53.208577',	'2023-02-17 05:55:08.209803'),
(19,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'2',	'2586.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-17 08:44:00.328062',	'2023-02-16 12:34:31.416696'),
(20,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'7',	'49000.0',	'BOUTEILLES',	'0.0',	'7000.0',	'0.0',	'-',	'Support',	'2023-02-17 08:43:39.622764',	'2023-02-17 05:55:08.209803'),
(21,	'BOISSON-COCACOLA-CANETTE-500G-PIÈCES',	'2',	'6000.0',	'PIÈCES',	'0.0',	'2940.0',	'5.0',	'-',	'Support',	'2023-02-17 08:43:53.859546',	'2023-02-16 23:09:43.227534'),
(22,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'10',	'12671.400000000001',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-17 10:19:45.723006',	'2023-02-16 12:34:31.416696'),
(23,	'BOISSON-COCACOLA-CANETTE-500G-PIÈCES',	'1',	'3000.0',	'PIÈCES',	'0.0',	'2940.0',	'5.0',	'-',	'Support',	'2023-02-17 10:39:24.241416',	'2023-02-16 23:09:43.227534'),
(24,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'3',	'3879.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-17 10:41:11.806896',	'2023-02-16 12:34:31.416696'),
(25,	'BOISSON-COCACOLA-CANETTE-500G-PIÈCES',	'11',	'32340.0',	'PIÈCES',	'0.0',	'2940.0',	'5.0',	'-',	'Support',	'2023-02-17 10:58:41.241012',	'2023-02-16 23:09:43.227534'),
(26,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'12',	'29700.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'-',	'Support',	'2023-02-17 13:12:06.401763',	'2023-02-17 13:10:05.748169'),
(27,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'1',	'7000.0',	'BOUTEILLES',	'0.0',	'7000.0',	'0.0',	'-',	'Support',	'2023-02-17 13:32:41.965672',	'2023-02-17 05:55:08.209803'),
(28,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'10',	'25000.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-17 13:32:21.222726',	'2023-02-17 13:31:37.436638'),
(29,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'1',	'7000.0',	'BOUTEILLES',	'0.0',	'7000.0',	'0.0',	'-',	'Support',	'2023-02-17 14:10:16.683659',	'2023-02-17 05:55:08.209803'),
(30,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'34',	'85000.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-17 14:10:04.154721',	'2023-02-17 13:31:37.436638'),
(31,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'3',	'7500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-17 15:01:36.535637',	'2023-02-17 13:31:37.436638'),
(32,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'12',	'30000.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-17 14:44:56.430967',	'2023-02-17 13:31:37.436638'),
(33,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'1',	'2500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-17 15:31:03.520628',	'2023-02-17 13:31:37.436638'),
(34,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'1',	'2500.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'-',	'Support',	'2023-02-17 16:06:37.160385',	'2023-02-17 13:10:05.748169'),
(35,	'BOISSON-COCACOLA-CANETTE-500G-PIÈCES',	'2',	'6000.0',	'PIÈCES',	'0.0',	'2940.0',	'5.0',	'-',	'Support',	'2023-02-17 16:12:10.088457',	'2023-02-16 23:09:43.227534'),
(36,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'1',	'7000.0',	'BOUTEILLES',	'0.0',	'7000.0',	'0.0',	'-',	'Support',	'2023-02-17 16:06:50.714229',	'2023-02-17 05:55:08.209803'),
(37,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'1',	'41400.0',	'PIÈCES',	'0.0',	'41400.0',	'0.0',	'-',	'Support',	'2023-02-17 16:05:27.746836',	'2023-02-17 15:23:13.211515'),
(38,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'1',	'2500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-17 16:06:26.433157',	'2023-02-17 13:31:37.436638'),
(39,	'BOISSON-COCACOLA-CANETTE-500G-PIÈCES',	'1',	'3000.0',	'PIÈCES',	'0.0',	'2940.0',	'5.0',	'-',	'Support',	'2023-02-17 16:06:58.852781',	'2023-02-16 23:09:43.227534'),
(40,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'6',	'248400.0',	'PIÈCES',	'0.0',	'41400.0',	'0.0',	'-',	'Support',	'2023-02-17 16:18:57.083451',	'2023-02-17 15:23:13.211515'),
(41,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'1',	'41400.0',	'PIÈCES',	'0.0',	'41400.0',	'0.0',	'-',	'Support',	'2023-02-22 08:42:25.695709',	'2023-02-17 16:23:13.211515'),
(42,	'BOISSON-COCACOLA-CANETTE-500G-PIÈCES',	'3',	'9000.0',	'PIÈCES',	'0.0',	'2940.0',	'5.0',	'-',	'Support',	'2023-02-22 08:42:33.161714',	'2023-02-17 00:09:43.227534'),
(43,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'2',	'5000.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'-',	'Support',	'2023-02-22 08:42:30.217739',	'2023-02-17 14:10:05.748169'),
(44,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'1',	'2500.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'-',	'Support',	'2023-02-21 21:23:27.330465',	'2023-02-17 14:10:05.748169'),
(45,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'9',	'11637.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-22 08:09:54.174102',	'2023-02-16 13:34:31.416696'),
(46,	'BOISSON-COCACOLA-CANETTE-500G-PIÈCES',	'8',	'23520.0',	'PIÈCES',	'0.0',	'2940.0',	'5.0',	'-',	'Support',	'2023-02-22 08:09:49.753435',	'2023-02-17 00:09:43.227534'),
(47,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'2',	'5000.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'-',	'Support',	'2023-02-23 17:54:26.007405',	'2023-02-17 14:10:05.748169'),
(48,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'3',	'7500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-23 17:54:24.071404',	'2023-02-17 14:31:37.436638'),
(49,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'45',	'57021.3',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-23 17:54:19.688591',	'2023-02-16 13:34:31.416696'),
(50,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'12',	'496800.0',	'PIÈCES',	'0.0',	'41400.0',	'0.0',	'-',	'Support',	'2023-02-23 17:53:52.309179',	'2023-02-17 16:23:13.211515'),
(51,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'34',	'43082.76',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-23 20:14:42.010782',	'2023-02-16 13:34:31.416696'),
(52,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'2',	'5000.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-23 20:14:47.059885',	'2023-02-17 14:31:37.436638'),
(53,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'10',	'12671.400000000001',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-20 14:09:56.894333',	'2023-02-16 12:34:31.416696'),
(54,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'3',	'124200.0',	'PIÈCES',	'0.0',	'41400.0',	'0.0',	'-',	'Support',	'2023-02-23 20:14:48.742306',	'2023-02-17 16:23:13.211515'),
(55,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'12',	'30000.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-20 10:45:21.297563',	'2023-02-17 13:31:37.436638'),
(56,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'7',	'17500.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'-',	'Support',	'2023-02-23 20:14:44.821789',	'2023-02-17 14:10:05.748169'),
(57,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'1',	'41400.0',	'PIÈCES',	'0.0',	'41400.0',	'0.0',	'-',	'Support',	'2023-02-20 10:45:15.05358',	'2023-02-17 15:23:13.211515'),
(58,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'12',	'30000.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-23 22:00:07.250808',	'2023-02-17 14:31:37.436638'),
(59,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'22',	'54450.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'-',	'Support',	'2023-02-23 22:49:37.021328',	'2023-02-17 14:10:05.748169'),
(60,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'3',	'7500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-23 22:49:43.354544',	'2023-02-17 14:31:37.436638'),
(61,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'3',	'124200.0',	'PIÈCES',	'0.0',	'41400.0',	'0.0',	'-',	'Support',	'2023-02-23 23:05:05.905431',	'2023-02-17 16:23:13.211515'),
(62,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'7',	'17500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-23 23:05:00.390696',	'2023-02-17 14:31:37.436638'),
(63,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'2',	'82800.0',	'PIÈCES',	'0.0',	'41400.0',	'0.0',	'-',	'Support',	'2023-02-24 10:37:50.533937',	'2023-02-17 16:23:13.211515'),
(64,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'3',	'7500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-24 10:37:48.488489',	'2023-02-17 14:31:37.436638'),
(65,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'15',	'37125.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'-',	'Support',	'2023-02-24 10:37:46.392363',	'2023-02-17 14:10:05.748169'),
(66,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'2',	'2586.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-24 10:37:34.121598',	'2023-02-16 13:34:31.416696'),
(67,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'5',	'12500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-25 11:02:16.734929',	'2023-02-17 14:31:37.436638'),
(68,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'5',	'12500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-25 11:02:16.734929',	'2023-02-17 14:31:37.436638'),
(69,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'5',	'12500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-25 11:02:16.734929',	'2023-02-17 14:31:37.436638'),
(70,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'5',	'12500.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'-',	'Support',	'2023-02-24 12:01:44.648511',	'2023-02-17 14:10:05.748169'),
(71,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'12',	'84000.0',	'BOUTEILLES',	'0.0',	'7000.0',	'0.0',	'-',	'WMCOM23-001',	'2023-02-25 07:44:24.923893',	'2023-02-24 22:20:41.485013'),
(72,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'12',	'84000.0',	'BOUTEILLES',	'0.0',	'7000.0',	'0.0',	'-',	'WMCOM23-001',	'2023-02-25 07:47:50.772854',	'2023-02-24 22:20:41.485013'),
(73,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'12',	'84000.0',	'BOUTEILLES',	'0.0',	'7000.0',	'0.0',	'-',	'Support',	'2023-02-25 11:02:19.495231',	'2023-02-24 22:20:41.485013'),
(74,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'3',	'7500.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'-',	'Support',	'2023-02-24 11:03:14.419912',	'2023-02-17 14:10:05.748169'),
(75,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'5',	'6465.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'WMCOM23-001',	'2023-02-25 07:44:18.820411',	'2023-02-16 13:34:31.416696'),
(76,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'6',	'15000.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'-',	'Support',	'2023-02-25 11:02:12.939541',	'2023-02-17 14:10:05.748169'),
(77,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'2',	'82800.0',	'PIÈCES',	'0.0',	'41400.0',	'0.0',	'-',	'Support',	'2023-02-24 11:03:00.98285',	'2023-02-17 16:23:13.211515'),
(78,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'5',	'6465.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-24 11:03:21.67691',	'2023-02-16 13:34:31.416696'),
(79,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'56',	'140000.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-25 12:13:58.481904',	'2023-02-17 14:31:37.436638'),
(80,	'PIZZANORMAL-IVANNA-CHAPITEAU-PRINTEMPS-PIÈCES',	'8',	'331200.0',	'PIÈCES',	'0.0',	'41400.0',	'0.0',	'-',	'Support',	'2023-02-25 12:14:12.251165',	'2023-02-17 16:23:13.211515'),
(81,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'50',	'123750.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'-',	'Support',	'2023-02-25 12:14:07.425015',	'2023-02-17 14:10:05.748169'),
(82,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'45',	'315000.0',	'BOUTEILLES',	'0.0',	'7000.0',	'0.0',	'-',	'Support',	'2023-02-25 12:19:19.295595',	'2023-02-24 22:20:41.485013'),
(83,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'55',	'137500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-25 12:19:32.332415',	'2023-02-17 14:31:37.436638'),
(84,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'20',	'25342.800000000003',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'Support',	'2023-02-25 12:21:38.31504',	'2023-02-16 13:34:31.416696'),
(85,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'5',	'12500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'Support',	'2023-02-25 12:55:26.476649',	'2023-02-17 14:31:37.436638'),
(86,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'9',	'63000.0',	'BOUTEILLES',	'0.0',	'7000.0',	'0.0',	'-',	'Support',	'2023-02-25 12:55:23.311318',	'2023-02-24 22:20:41.485013'),
(87,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'3',	'7500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'WMCOM23-001',	'2023-02-26 17:27:25.597017',	'2023-02-17 14:31:37.436638'),
(88,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'10',	'70000.0',	'BOUTEILLES',	'0.0',	'7000.0',	'0.0',	'-',	'WMCOM23-001',	'2023-02-26 17:27:30.632861',	'2023-02-24 22:20:41.485013'),
(89,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'3',	'7500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'WMCOM23-001',	'2023-02-26 17:30:05.439426',	'2023-02-17 14:31:37.436638'),
(90,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'5',	'6465.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'WMCOM23-001',	'2023-02-26 17:30:00.399196',	'2023-02-16 13:34:31.416696'),
(91,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'12',	'29700.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'-',	'WMCOM23-001',	'2023-02-26 17:29:45.771492',	'2023-02-17 14:10:05.748169'),
(92,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'10',	'70000.0',	'BOUTEILLES',	'0.0',	'7000.0',	'0.0',	'-',	'WMCOM23-001',	'2023-02-26 17:29:54.166426',	'2023-02-24 22:20:41.485013'),
(93,	'COCKTAIL-CITRON-CHAMPAGNE-VODKA-BOUTEILLES',	'10',	'70000.0',	'BOUTEILLES',	'0.0',	'7000.0',	'0.0',	'-',	'WMCOM23-001',	'2023-02-26 17:35:46.950879',	'2023-02-24 22:20:41.485013'),
(94,	'BIERRE-TEMBO-GRAND-65CL-BOUTEILLES',	'2',	'5000.0',	'BOUTEILLES',	'0.0',	'2475.0',	'10.0',	'-',	'WMCOM23-001',	'2023-02-26 17:35:44.662224',	'2023-02-17 14:10:05.748169'),
(95,	'BOISSON-EAU-SWISSTA-1.5L-BOUTEILLES',	'6',	'7758.0',	'BOUTEILLES',	'16.0',	'1267.14',	'10.0',	'-',	'WMCOM23-001',	'2023-02-26 17:35:42.716943',	'2023-02-16 13:34:31.416696'),
(96,	'BOISSON-BIERE-PRIMUS---BOUTEILLES',	'1',	'2500.0',	'',	'0.0',	'2500.0',	'0.0',	'-',	'WMCOM23-001',	'2023-02-26 17:35:45.822136',	'2023-02-17 14:31:37.436638');

-- 2023-02-26 17:39:53.912443+00
