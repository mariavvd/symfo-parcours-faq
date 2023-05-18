# Projet fait il y a 4 ans dans le cadre d'une formation
J'aimerais le reprendre et le finir (pourquoi pas avec Symfony 6 ?) 
ça m'avait bien plu ;)

# FAQ-O-Clock
=> utils : 
*fichier SQL (fonctionnel malgré des gros messages d'erreur rouges undefined offset 245 sur la table user)
* role user : profTournesol. mdp : profTournesol
* role admin : superman. mdp : superman
* role moderator : Tartanpion. mdp : Tartanpion


## complètement brouillon car pas fini :
-   j'ai des annotations en partie sur les entites et en partie sur les form.
-   constraints (j'ai pas pris le temps bien finir, ça fait complètement 'laissé en plan', mais j'ai bien compris et je sais faire. J'ai préféré m'attaquer à ce qui est moins évident pour moi)
-   je dois avoir mis quelques flash message mais pas partout donc irregulier et maintenant, pour compléter, il faudrait TOUT reprendre (très instructif sur l'importance de "ne pas remettre à demain")
-   idem pour les redirections 404. Vérifications pas systématiques, voir absentes pour l'instant. 
-   j'ai choisi de 'orpahRemoval=true' sur delete question => anwsers. Je n'ai rien fait (même pas réfléchi encore ;) à que faire pour les autres delete. 

## pas eu le temps de : 
-   integration (oui, l'intégration est à pleurer. Si j'avais dû rendre qqch au client, j'aurais passé un jour de moins sur les features et un de plus sur l'inté, pour rendre quelque chose de présentable. 
-   sluggifier
-   404 custom et 403 custom
-   refléchir et mettre en place un layout / nav / système de template en fonction de ce qui est commun à tout le site, au front, au back, à l'admin, ... Ce parcours m'a permis de comprendre à quoi il faut réfléchir AVANT de se lancer dans la réalisation de la structure. Bien sûr, j'ai compris ça un peu trop tard... mais c'est très formateur pour l'avenir. 
-   limiter le DRY, j'ai un peu de code en double entre front et back (ex questions)
-   activer / désactiver question ou reponse par modérateur. J'ai ajouté une propriété isActive sur l'entité, mais il faudrait que je prenne le temps de voir comment l'intégrer au form et au template pour que ce soit judicieux et sécurisé. 
-   permettre au user qui a posé une question de valider une réponse. 
-   Sécuriser le profil des user au seul Current User.   
-   Tester pour vérifier les failles de sécurité en GET et pallier
-   Verouiller la modification des réponses/questions/profil ustilisateur au seul Utilisateur qui est l'auteur ou titulaire du profil (ou admin)
-   les bonus
-   je n'ai pas optimisé les performances, pratiquement pas de requetes custom. (je n'ai pas pris le temps de le faire mais j'ai compris le principe, ça va)
-   je n'ai rien fait avec des événements ni des services et pas de tests

## difficultés 
-   j'ai vraiment galéré pour faire des fixtures avec toutes ces relations. J'y ai passé pas mal de temps. 
-   Pareille pour permettre à l'admin de modifier les droits "user". 
-   je n'arrivais pas à avoir une vue d'ensemble du projet, des TODO, de la structure à mettre en place. Le parcours m'a fait progresser. 

##bugs
-   pas trouvé comment faire en sorte que le ADMIN puisse modifier les droits du USER sans passer par une entity ROLES (que je viens de supprimer :( )
-   quand j'essaye d'intégrer l'ajout d'une question dans la page qui affiche les questions, j'ai un message d'erreur, du style 'form variable does not exist'. 
-   je n'ai pas réussi à permettre à un utilisateur de modifier son profil sans modifier le mot de passe. Je peux soit passer par les événements (cf correction de Claire sur l'exo Events), soit enlever le mot de passe de edit your profile et y renvoyer par un lien "change your password". 























## Objectif

Développer un site de questions/réponses sur le modèle de [Quora](https://www.quora.com/), ou encore [StackOverflow](https://stackoverflow.com) : La FAQ-O-Clock !

- Le site répertorie des **questions** (auteur, intitulé, corps de la question), et plusieurs **réponses** (auteur, corps de la réponse).
- **Les visiteurs doivent pouvoir créer un compte sur le site**  (revient à créer un nouvel utilisateur), ils deviennent alors **utilisateurs**.
- Les **utilisateurs inscrits posent les questions**, et peuvent également **proposer des réponses** aux questions déjà posées.
- **Tout le monde peut consulter** les contenus, mais **il faut être identifié pour pouvoir poser une question ou proposer une réponse**.

## Instructions

1. **Lisez bien la totalité de l'énoncé** avant de commencer, **prenez le temps de décomposer ce qui est demandé** et d'identifier quels outils peuvent vous aider à obtenir ce résultat simplement.
2. Allez aussi loin que possible, mais **commencez par implémenter ce que vous savez faire, quitte à simplifier dans un premier** temps, pour y revenir et ajouter des fonctionnalités ensuite.
3. Tout peut être fait à l'aide des composants de Symfony que vous avez déjà vus en cours (ou presque :grimacing:).
4. Pensez à l'ergonomie :nerd_face: => Flash messages, navigation spécifique le cas échéant.
5. N'oubliez pas de **fournir un export de votre base de données** (les données seules) OU **fournir des Fixtures** (mieux, mais pas prioritaire). **S'il y'a des users/mots de passe indiquez-les dans un README à l'intention du correcteur.**
6. **Utilisez Trello pour organiser vos tâches !** Vous y verrez plus clair, _vraiment_.

## Structure du site

### Pages accessibles à tous les visiteurs
- **Accueil** : voir toutes les questions (les plus récentes d'abord),
- **Question** (voir la question, avec toutes ses réponses),
- **Inscription** (formulaire d'inscription),
- **Connexion** (formulaire de login).

### Pages accessibles aux utilisateurs identifiés
- **Poser une question**,
- Sur la page **Question**, un formulaire permettant d'**Ajouter une réponse** à cette question (directement dans la page, sous la question),
    - :hand: => Dans la liste des réponses, un bouton permet de valider une réponse. **Seul l'utilisateur qui a posé la question** peut indiquer une réponse comme étant **valide. La réponse validée doit s'afficher de façon distincte et en premier dans la liste des réponses**.
- **Mon Profil** : permet de consulter ses propres informations utilisateur, la liste de ses questions, et de ses réponses, avec un lien pour s'y rendre.
    - Sur cette page, un lien **Modifier mon Profil** qui permet de modifier ses propres informations (au minimum username, email, mot de passe).

### Fonctions de modération

Certains utilisateurs sont aussi **modérateurs**. Les modérateurs peuvent **bloquer une question ou une réponse** non-conforme à la charte du site. **Un admin peut donner les droits de modérateur à un utilisateur**.

- Sur la liste des questions (page Accueil) et sur la page des Questions/Réponses, **un bouton permet aux modérateurs de bloquer ou débloquer facilement une question ou une réponse**. Quand elle est bloquée, celle-ci ne s'affiche plus (ni depuis les listes, ni en accès direct), **BONUS : sauf pour les modérateurs et les admins**.
- Page **Admin users** permet à l'admin de changer le statut d'un utilisateur.

### Tags

Les questions peuvent être associées à plusieurs **tags** (mots-clé).

- page **Admin tags** accessible par l'admin et les modérateurs, leur permettant de créer/modifier/supprimer des tags.
- dans la page **Poser une Question**, **ajouter la possibilité de choisir les tags associés à la question** (liste de checkboxes, ou autre).
- **Afficher les tags associés** à une question sur la _liste des questions (Accueil)_ et sur la _page Question_ (**avec un lien sur chaque tag** qui affiche les questions filtrées par tag) => renvoie vers page Question/Tag.
- **page Question/Tag** : consulter les questions associées à ce tag (accessible également depuis un nuage de tags sur la page d'accueil ou dans une sidebar). Afficher le tag sélectionné en haut de page.

### Navigation

- Afficher un menu permanent, cohérent, qui permet de naviguer où c'est possible en fonction du rôle de l'utilisateur.

## BONUS

#### Ajouter un système de vote

- Sur la page de liste des questions (Accueil et Question/Tag), **les utilisateurs connectés peuvent voter "+1" pour une question**.
- Sur la page d'une question, **les utilisateurs connectés peuvent voter "+1" pour une réponse**.
- **Afficher alors les questions** (page Accueil et Question/Tag) **et les réponses** d'une question (page Question) **par nombre de votes décroissant**.

#### Réaliser au moins l'une des opérations suivante en AJAX

- Voter "+1",
- Valider une réponse,
- Bloquer/débloquer une question ou une réponse.

#### Ajouter une pagination

On veut afficher maxi 7 questions sur une page présentant une liste de questions (Accueil, Question/Tag). Vous pouvez faire une requête Google du genre https://www.google.fr/search?q=doctrine+paginator pour trouver des informations utiles.

Vous pouvez soit utiliser un Bundle tout fait, soit le faire à la main avec Doctrine Paginator et un peu de code custom.

## Le mot de la fin

Bon courage :slightly_smiling_face: :muscle: et n'oubliez pas d'écrire une petite note dans un README à l'intention du prof' pour décrire ce que vous avez fait, ou pas fait.

Tout schéma ou document (même scanné !) ayant servi à créer l'appli sera le bienvenu dans le repo final !

Merci.

Et _Think Trello :wink:_
