# TP Vagrant avancé (sans Ansible)

ISET Tozeur - Master DevOps & Cloud - Disponibilité des Infrastructures

## Objectifs
- Environnement multi-machines (web + db)
- Provisioning shell
- Réseau privé entre les deux VMs
- Mini-site PHP connecté à MySQL

## Préparation de l'environnement
Le disque de la VM Ubuntu-26 était plein (25 Go) : il a été agrandi à 60 Go.

![Disque agrandi dans VirtualBox](captures/00a-disque-agrandi.png)
![Disque après agrandissement](captures/00b-df-apres.png)

## Étape 1 : Prérequis et dossier de travail
![Versions](captures/01-versions.png)
![Dossier du projet](captures/02-dossier.png)

## Étape 2 : Création du Vagrantfile
Commande `vagrant init` :

![vagrant init](captures/03-vagrant-init.png)

Contenu du Vagrantfile (deux machines : `web` en 192.168.56.11 et `db` en 192.168.56.12) :

![Vagrantfile](captures/04-vagrantfile.png)

validation

![vagrant validate](captures/05-validate.png)

## Étape 3 : Scripts de provisioning
Script `install_web.sh` (Apache, PHP, page de test) :

![install_web.sh](captures/06-install-web.png)

Script `install_db.sh` (MySQL, base `tp_vagrant`, utilisateur `vagrant`) :

![install_db.sh](captures/07-install-db.png)
