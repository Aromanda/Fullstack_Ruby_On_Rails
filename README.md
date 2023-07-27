# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


---

# Document de recherche

## Bases de données relationnelles et SQL

### Qu'est-ce que SQL?
    - SQL (Structured Query Language) est un langage de programmation spécialement conçu pour gérer et manipuler des bases de données relationnelles. Il permet aux utilisateurs de créer, modifier, interroger et supprimer des données dans une base de données, ainsi que de définir et de gérer la structure des tables. SQL est largement utilisé dans le domaine de l'informatique et joue un rôle essentiel dans le développement d'applications, le traitement des données et la gestion de l'information.

---

### Quelle est la principale différence entre SQLite et MySQL?
    - La principale différence entre SQLite et MySQL réside dans leur architecture et leur utilisation. SQLite est un système de gestion de base de données sans serveur, c'est-à-dire qu'il stocke la base de données dans un fichier local sur l'ordinateur. Il est idéal pour des applications légères et autonomes, mais il n'est pas recommandé pour les environnements à forte charge ou multi-utilisateurs en raison de sa nature locale.

    - En revanche, MySQL est un système de gestion de base de données client-serveur, ce qui signifie qu'il nécessite un serveur dédié pour stocker et gérer les données. Il est conçu pour les applications qui requièrent une performance élevée, la gestion de grands volumes de données et la prise en charge de multiples connexions simultanées.

    - En résumé, SQLite est simple, local et adapté aux applications légères, tandis que MySQL est plus robuste, serveur-client et adapté aux applications plus lourdes et complexes.

---

### Quels sont les clés primaires et étrangères?
    - Clé primaire: Une clé primaire est un attribut (ou un groupe d'attributs) d'une table de base de données qui identifie de manière unique chaque enregistrement dans cette table. Elle garantit l'unicité et l'intégrité des données.

    - Clé étrangère: Une clé étrangère est un attribut d'une table de base de données qui établit une relation avec la clé primaire d'une autre table. Elle permet de lier les enregistrements de deux tables différentes et d'établir des relations entre elles.

---

### Quels sont les différents types de relations qui peuvent être trouvés dans une base de données relationnelle ? Donnez un exemple pour chaque type.
    - Relation Un-à-Un (One-to-One) : Dans ce type de relation, chaque enregistrement d'une table est associé à un seul enregistrement d'une autre table, et vice versa. Par exemple, considérons une base de données d'employés où chaque employé a un seul numéro de sécurité sociale unique associé.

    - Relation Un-à-Plusieurs (One-to-Many) : Ici, un enregistrement dans une table est lié à plusieurs enregistrements dans une autre table, mais chaque enregistrement dans la seconde table est associé à un seul enregistrement dans la première table. Par exemple, une base de données d'université avec des étudiants et leurs cours : un étudiant peut être inscrit à plusieurs cours, mais chaque cours a un seul étudiant responsable.

    - Relation Plusieurs-à-Plusieurs (Many-to-Many) : Dans ce cas, plusieurs enregistrements dans une table peuvent être liés à plusieurs enregistrements dans une autre table. Pour gérer cela, une table de liaison est utilisée pour associer les deux tables. Par exemple, dans une base de données de librairie, un livre peut être emprunté par plusieurs membres, et chaque membre peut emprunter plusieurs livres.

---

## Analyse du diagramme d'entité-relation (ERD)

### Identifiez une paire de tables qui ont une relation de plusieurs à un. Expliquez pourquoi elles ont une telle relation.
    - On peut voir que la table "Users" a une relation de plusieurs à un vers les tables employees et customers. Ces dernieres tables ont besoin d'un user_id pour pouvoir être utile à l'authentification. 

### Identifiez une paire de tables qui ont une relation de un à un. Expliquez pourquoi elles ont une telle relation.
    - On peut identifier les tables orders et order_statuses comme une relation un à un. Dans la table orders, une key value oreder_status_id est généré pour retrouver les oreder_statuses

### Identifiez une relation de plusieurs à plusieurs dans le diagramme. Quelles tables sont impliquées et pourquoi?
    - Pour la relation plusieurs à plusieurs, on peut identifier les tables users et orders ou products, on a les tables de liaison qui sont customers et restaurants. Il y a plusieurs keys value qui sont partagés entre les atables. 