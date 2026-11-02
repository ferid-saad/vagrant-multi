#!/bin/bash
apt-get update -y
apt-get install -y apache2 php php-mysql

# Supprimer la page par défaut d'Apache (index.html est prioritaire sur index.php)
rm -f /var/www/html/index.html

cat <<'EOF' > /var/www/html/index.php
<?php
$conn = new mysqli("192.168.56.12", "vagrant", "vagrant", "tp_vagrant");
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connexion MySQL réussie !";
?>
EOF

systemctl enable apache2
systemctl start apache2
