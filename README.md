# APIN414 - Systèmes Intelligents Distribués SMA et exploration autonome

## Cloner le projet

Dans un terminal Linux, créez l'espace de travail ROS 2 puis clonez le dépôt :

```bash
mkdir -p ~/ros2_ws/src && cd ~/ros2_ws/src
git clone https://github.com/JohvanyROB/APIN414
```

## Installer ROS 2

Placez-vous dans le répertoire du projet et lancez le script d'installation de
ROS 2 Galactic :

```bash
cd ~/ros2_ws/src/APIN414
./install_galactic.sh
```

## Installer les dépendances du projet

Dans le même terminal, installez les dépendances et rechargez la configuration
du shell :

```bash
cd ~/ros2_ws/src/APIN414
./install_dependencies.sh && source ~/.bashrc
```

## Lancer la simulation

Ouvrez un terminal et exécutez :

```bash
ros2 launch apin414_simu start_world_launch.py
```

Dans un second temps, dans un autre terminal, exécutez la commande suivante
afin de lancer les nœuds des agents :

```bash
ros2 launch apin414_nav agents_launch.py
```
