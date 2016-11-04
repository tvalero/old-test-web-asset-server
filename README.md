DEV Specify Web Asset Server (dans un conténaire)
=====================================

Création d'un conténaire "clef en main" pour le Web Asset Server de Specify.


Pré-requis 
----------

1. *Docker* (testé avec v1.11) pour la pris en charge du conténaire.
2. Suffisament de *mémoire* (512 Mo) et d'espace disques pour stocker les pièces jointes. 


Configuration des variables d'environnements 
--------------------------------------------

`SPECIFY_KEY`  : clef d'authentification ou "None" ; la valeur par défaut est "None".

`SPECIFY_HOST` : nom (DNS) ou adrese (IP) du serveur publique ; la valeur par défaut est "localhost"

`SPECIFY_PORT` : numéro du port sur le serveur publique ; la valeur par défaut est "8080".

Installation
----------

1. Avec Docker (version ligne de commande, Kitematic ou Docker pour Synology), télécharger le conténaire depuis : https://hub.docker.com/r/tvalero/web-asset-server-build/
1. Lancer le conténaire la commande suivante :

 `docker run --name web-asset-server  --env SPECIFY_HOST=`xxxxx` --env SPECIFY_PORT=``yyyy`  -p 8080:8080 -d tvalero/web-asset-server-build:latest -v `<répertoire des fichier>`:/home/specify/attachments:rw`


Test de la configuration
------------------------

1. Vérifier que l'URL suivante répond bien : http://[SPECIFY_HOST]:[SPECIFY_PORT]/web_asset_store.xml
2. Vérifier que le contenu de la réponse renvoie bien vers le serveur [SPECIFY_HOST] sure le port [SPECIFY_PORT] 
3. Vérifier que la clef d'authentification est valide en allant à http://[SPECIFY_HOST]:[SPECIFY_PORT]/testkey

Exemple :
---------

L'application Web Asset Server sera installée sur le serveur dont le nom publique est **toto.ird.fr**, sur le port **33033**.
Sur le serveur hôte (porte conténaire), les fichiers seraient stockés dans **/data/specify/asset**.

1. Lancement du conténaire avec  `docker run --name web-asset-server  --env SPECIFY_HOST=toto.ird.fr --env SPECIFY_PORT=33033 -p 8080:8080 -d tvalero/web-asset-server-build:latest -v /data/specify/asset/:/home/specify/attachments:rw`
2. Vérifier l'URL `http://toto.ird.fr:33033/web_asset_store.xml` réponde bien :

````xml      

<urls>
  <url type="read">http://toto.ird.fr:330033/fileget</url>
  <url type="write">http://toto.ird.fr:33033/fileupload</url>
  <url type="delete">http://toto.ird.fr:33033/filedelete</url>
  <url type="getmetadata">http://toto.ird.fr:33033/getmetadata</url>
  <url type="testkey">http://toto.ird.fr:33033/testkey</url>
</urls>
```
3. Vérifier la clef d'authentification: 
`http://toto.ird.fr:33033/testkey`

Specify settings
----------------

You will generally want to add the asset server settings to the global Specify 
preferences so that all of the Specify clients obtain the same configuration.

The easiest way to do this is to open the database in Specify and navigate to
the *About* option in the help menu. In the resulting dialog double-click on the
division name under *System Information* on the right hand side. This will open
a properties editor for the global preferences. You will need to set four properties
to configure access to the asset server:

* `USE_GLOBAL_PREFS` `true`
* `attachment.key`  obtain from Docker environment variable `SPECIFY_KEY` 
* `attachment.url`  `http://[SPECIFY_HOST]:[SPECIFY_PORT]/web_asset_store.xml` 
* `attachment.use_path` `false`

If these properties do not already exist, they can be added using the *Add Property*
button. 
