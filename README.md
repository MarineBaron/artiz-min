# artiz-min


# initialisation des fichiers de conf
Avant de commencer, recopier :
- le fichier back/.env.example en /back/.env et modifier les valeurs pour qu'elles correspondent aux valeurs que vous allez utiliser (url du front)
- le fichier back/config/config.example.json en back/config/config.json et modifier les valuers pour qu'elles correspondent aux valeurs que vous allez utiliser
- le fichier front/src/environments/environment.example.ts en front/src/environments/environment.ts et modifier les valeurs pour qu'elles correspondent à ce que vous allez utiliser

# restore database
- Pour restorer une bdd : cd db/backup/  && ./restore.sh
        (paramètres : nom du fichier de sortie (sans extension) (défaut=db), nom du container Postgres (défaut=), nom de l'utilisateur postgres (défaut=artiz))
- Pour dumper une bdd : cd db/backup/  && ./dump.sh
        (paramètres : nom du fichier d'entrée (sans extension) (défaut=db), nom du container Postgres (défaut=), nom de l'utilisateur postgres (défaut=artiz), nom de la base de données à dumper)
