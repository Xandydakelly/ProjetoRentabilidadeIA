instalar_mt5_eaia.sh

#!/bin/bash

# Atualiza o sistema
apt update && apt upgrade -y
apt install -y wget curl git unzip wine64 xvfb

# Instala dependências do MT5
mkdir -p /root/mt5
cd /root/mt5
wget -O mt5setup.exe "https://download.mql5.com/cdn/web/metaquotes.software.corp/mt5/mt5setup.exe"

# Cria estrutura de pastas
mkdir -p /root/eaia
cd /root/eaia

# Baixa EA+IA compactado
wget -O EA_QP_v8.zip "https://raw.githubusercontent.com/Xandydakelly/eaia_vps/main/EA_QP_v8.zip"
unzip EA_QP_v8.zip -d /root/eaia
rm EA_QP_v8.zip

# Instala o Wine + simulação de ambiente gráfico invisível
apt install -y x11vnc xvfb fluxbox

# Cria script para executar o MT5 com o EA+IA automaticamente
cat << 'EOF' > /root/eaia/rodar.sh

#!/bin/bash
Xvfb :1 -screen 0 1024x768x16 &
export DISPLAY=:1
cd /root/mt5
wine mt5setup.exe
EOF
chmod +x /root/eaia/rodar.sh
echo "✅ Instalação completa. Para rodar o EA+IA no MT5, use: bash /root/eaia/rodar.sh

"Script de instalação automatizada EA+IA para MT5
