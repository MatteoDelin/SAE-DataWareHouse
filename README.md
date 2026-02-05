# SAE-DataWhareHouse
# Rapport de Projet SAÉ 302 : Business Intelligence appliquée au secteur du Manga

**Équipe :** DELIN Mattéo - ALSHAWWA Tasnim - GROSJEAN Violette

**Promotion :** SD2  
**Date :** Février 2026  
**Outil :** Power BI  

---

## 1. Contexte Métier et Objectifs Décisionnels

### 1.1 Présentation du contexte
Le marché du manga est en pleine expansion globale, avec des milliers de nouvelles publications chaque année et une base de lecteurs de plus en plus diversifiée. Pour les éditeurs et les distributeurs, la donnée est devenue une ressource clé pour anticiper les succès de demain. 

Dans ce projet, nous agissons en tant que consultants Data pour une enseigne spécialisée. Notre mission est d'analyser les tendances historiques et actuelles afin d'optimiser la gestion des stocks et les futures acquisitions de licences.

### 1.2 Objectifs et Questions Métiers
L'enjeu est de transformer des données brutes en indicateurs stratégiques pour répondre aux questions suivantes :
* **Performance par Genre :** Quels sont les genres (Shonen, Seinen, Shojo, etc.) qui obtiennent les meilleures notes et le plus grand engagement ?
* **Évolution Temporelle :** Comment la production de mangas a-t-elle évolué au fil des décennies ?
* **Analyse de la Popularité :** Existe-t-il une corrélation entre le nombre de volumes d'une série et la note moyenne attribuée par la communauté ?
* **Ciblage Démographique :** Quelle tranche de population (demographic) est la plus active et la mieux servie par l'offre actuelle ?

---

## 2. Description des Sources de Données

### 2.1 Origine et Format
Pour répondre à ces problématiques, nous utilisons un jeu de données public issu de la plateforme **Kaggle** (basé sur les données de MyAnimeList).
* **Format :** CSV (Comma Separated Values).
* **Volume :** Plusieurs milliers de lignes représentant des œuvres uniques.
* **URL Source :** [Insérer le lien Kaggle ici]

### 2.2 Inventaire des données brutes
Le dataset contient des informations variées, dont certaines nécessitent un traitement important :
* `manga_id` : Identifiant unique.
* `title` : Titre de l'œuvre.
* `score` : Note moyenne (0 à 10).
* `genres` : Liste des genres associés (données souvent concaténées).
* `published_date` : Date de début de publication.
* `status` : État (En cours, Terminé).
* `volumes` : Nombre de tomes parus.

---

## 3. Mise en œuvre du Pipeline BI
### 3.1 ETL et Nettoyage des données (Power Query)
Conformément aux exigences de la SAÉ, nous avons sélectionné un jeu de données "sale" pour appliquer les transformations suivantes :
1. **Gestion des valeurs manquantes :** Identification des scores nuls et remplacement par la moyenne globale ou suppression selon la pertinence.
2. **Harmonisation des types :** Conversion des colonnes de dates (souvent au format texte) en format Date reconnu par Power BI.
3. **Éclatement des colonnes :** Les genres étant souvent listés dans une seule cellule (ex: "Action, Adventure, Fantasy"), nous avons procédé à un dégroupement pour permettre une analyse par catégorie.
4. **Filtrage :** Suppression des doublons et des œuvres sans aucune donnée statistique exploitable.
PS. On n'a pas utilisé Power BI mais Spoon

### 3.2 Modélisation (Data Warehouse)
Nous avons structuré nos données selon un **modèle en flocon** pour garantir la fluidité des filtres :
* **Table de Faits :** Regroupe les mesures (Scores, Membres, Nombre de Volumes).
* **Dimensions :** Tables de référence pour le Temps (Calendrier), les Genres, et les Statuts de publication.

---

## 4. Justification des choix
Le choix du secteur du Manga permet d'illustrer des concepts complexes de BI (gestion de listes multi-valeurs pour les genres, saisonnalité des sorties) tout en restant sur un sujet visuel et parlant pour le reporting final.
