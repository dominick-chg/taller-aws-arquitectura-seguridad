#!/bin/bash
# Actualizar sistema e instalar Apache (httpd)
yum update -y
yum install -y httpd

# Identidad del laboratorio
PARTICIPANTE="[Tu Nombre]"

# Obtener metadatos básicos de EC2
TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")
REGION_AZ=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
IP_PUBLICA=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/public-ipv4)
IP_PRIVADA=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4)

# Crear archivo HTML con diseño minimalista
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>AWS Web Server - $PARTICIPANTE</title>
    <style>
        body { font-family: Arial; background-color: #f4f4f9; color: #333; text-align: center; padding: 50px; }
        .card { background: white; padding: 30px; border-radius: 10px; box-shadow: 0px 4px 6px rgba(0,0,0,0.1); display: inline-block;}
        h1 { color: #ff9900; }
        .data { text-align: left; background: #232f3e; color: white; padding: 15px; border-radius: 5px; font-family: monospace;}
    </style>
</head>
<body>
    <div class="card">
        <h1>AWS Cloud Web Server</h1>
        <h3>Desplegado por: $PARTICIPANTE</h3>
        <p>Laboratorio 2: EC2, Redes y User Data</p>
        <div class="data">
            <p><strong>🌐 IP Pública:</strong> $IP_PUBLICA</p>
            <p><strong>🔒 IP Privada:</strong> $IP_PRIVADA</p>
            <p><strong>📍 Zona de Disponibilidad:</strong> $REGION_AZ</p>
        </div>
    </div>
</body>
</html>
EOF

# Iniciar el servidor web y habilitarlo para que arranque con el sistema
systemctl start httpd
systemctl enable httpd
