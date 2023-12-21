#!/bin/bash

# Verificar si git está instalado
if ! command -v git &> /dev/null; then
    echo "Git no está instalado. Instalando..."
    sudo zypper install git
else
    echo "Git ya está instalado."
fi

# Verificar si VSCode está instalado
if ! command -v code &> /dev/null; then
    echo "VSCode no está instalado. Instalando..."
    sudo zypper install code
else
    echo "VSCode ya está instalado."
fi

# Instalar extensiones de VSCode
echo "Instalando extensiones de VSCode..."
code --install-extension github.copilot
code --install-extension ms-python.python

# Clonar repositorios en el directorio home
echo "Clonando repositorios en el directorio home..."
cd ~
git clone https://github.com/CarlosMG01/juan
git clone https://github.com/CarlosMG01/ISW

# Configurar credenciales de Git
echo "Configurando credenciales de Git..."
git config --global user.email "c.marcos3@usp.ceu.es"
git config --global user.name "CarlosMG"

# Verificar si pip está instalado
if ! command -v pip &> /dev/null; then
    echo "pip no está instalado. Instalando..."
    sudo zypper install python3-pip
else
    echo "pip ya está instalado."
fi

# Instalar módulo unittest con pip
echo "Instalando el módulo unittest con pip..."
pip install unittest

echo "Script completado exitosamente."
