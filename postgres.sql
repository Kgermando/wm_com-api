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


DROP TABLE IF EXISTS "refresh_tokens";
DROP SEQUENCE IF EXISTS refresh_tokens_id_seq;
CREATE SEQUENCE refresh_tokens_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."refresh_tokens" (
    "id" integer DEFAULT nextval('refresh_tokens_id_seq') NOT NULL,
    "owner" character varying NOT NULL,
    "token" character varying NOT NULL
) WITH (oids = false);


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


-- 2023-02-24 13:38:56.777615+00
