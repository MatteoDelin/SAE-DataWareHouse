# 📊 Projet SAÉ 302 : Data Warehouse Manga Sales

**Équipe :** DELIN Mattéo - ALSHAWWA Tasnim - GROSJEAN Violette  
**Promotion :** SD2 (IUT Lumière Lyon 2)  
**Année Universitaire :** 2025-2026  
**Outils :** Pentaho Data Integration (Spoon), MySQL, Power BI

---

## 📝 1. Présentation du Projet
Ce projet a été réalisé dans le cadre de la **SAÉ 302 - Intégration de données dans un datawarehouse**. L'objectif est de mettre en œuvre un processus décisionnel complet appliqué au secteur du manga, en transformant des données brutes en indicateurs stratégiques.

### Objectifs Décisionnels (Questions Métiers)
* **Performance par Genre :** Quels genres obtiennent les meilleures notes et le plus grand volume de ventes ?
* **Analyse de la Popularité :** Existe-t-il une corrélation entre le volume de chapitres et le score critique ?
* **Ciblage Démographique :** Quelle tranche de population (Shonen, Seinen, etc.) domine le marché en volume de ventes ?
* **Analyse Éditeurs :** Quelles maisons d'édition possèdent les catalogues les plus rentables ?

---

## 🛠️ 2. Pipeline BI (Processus ETL)

### 2.1 Extraction (Sources)
* **Source :** Jeu de données public issu de Kaggle (données MyAnimeList).
* **Localisation :** `/DataSet/Manga_sales.csv`.
* **Volume :** Plusieurs milliers de lignes représentant des œuvres uniques.

### 2.2 Transformation (Spoon)
Le jeu de données brut a subi plusieurs transformations via **Spoon (Pentaho)** pour garantir la qualité de l'analyse :
* **Nettoyage :** Identification et gestion des valeurs manquantes (notamment sur les scores).
* **Typage :** Conversion des colonnes de ventes (format texte) en formats numériques (`DOUBLE`).
* **Harmonisation :** Nettoyage des noms d'auteurs et d'éditeurs.
* **Normalisation :** Préparation des données pour correspondre aux tables de dimensions.

### 2.3 Chargement (Data Warehouse)
Les données nettoyées sont intégrées dans un entrepôt MySQL structuré selon un **schéma en flocon**.

---

## 🏗️ 3. Modélisation du Data Warehouse
La structure de la base de données est optimisée pour le reporting et définie dans le script SQL du dépôt.

### Table de Faits : `FACT_Manga_Sales`
Elle centralise les mesures quantitatives du projet :
* `No_of_collected_volumes` (INT)
* `manga_chapters` (INT)
* `score` (DOUBLE)
* `average_sales_per_volume_in_million` (DOUBLE)
* `approximate_sales_in_million` (DOUBLE)

### Tables de Dimensions
* **`DIM_Manga`** : Titres originaux et anglais.
* **`DIM_Author`** : Identité des auteurs.
* **`DIM_Publisher`** : Maisons d'édition.
* **`DIM_Demographic`** : Public cible (Shonen, Seinen, Shojo, Josei).
* **`DIM_Date`** : Axe temporel des publications.
* **`DIM_Genre`** : Catégories liées via la table de jonction `Manga_Genre`.

---

## 📂 4. Structure du Dépôt GitHub
* `/DataSet` : Fichier source brut (CSV).
* `/Script_Python` : Analyse exploratoire des données.
* `/SQL` : Scripts de création des tables et des contraintes d'intégrité (Primary & Foreign Keys).
* `/Reporting` : Visualisations et tableaux de bord répondant aux questions métiers.

---

**Note :** L'ensemble de ce travail technique est complété par un rapport d'analyse de 5 à 15 pages détaillant les choix méthodologiques et les résultats obtenus.
