#!/bin/bash

# Caminhos dos arquivos de configuração
zshrc="/home/andre/.zshrc"
# samba_conf="/etc/samba/smb.conf" - Descomentar essa linha se desejar fazer backup da configuração do Samba

# Diretório de destino para o backup
backup_dir="/home/andre/mybkp"

# Criar o diretório de backup, se não existir
#mkdir -p "$backup_dir"

# Arquivos de backup com timestamp
timestamp=$(date +'%Y%m%d_%H%M%S')
zshrc_backup="$backup_dir/.zshrc.bkp_$timestamp"
# samba_conf_backup="$backup_dir/smb.conf.bkp_$timestamp" - Descomentar essa linha se desejar fazer backup da configuração do Samba

# Função para copiar arquivos com verificação
#backup_file() {
    #if [ -f "$1" ]; then
     #   cp "$1" "$2"
      #  echo "Backup de $(basename "$1") concluído: $2"
   # else
       # echo "Arquivo $(basename "$1") não encontrado. Backup não realizado."
    #fi
#}

# Realizar os backups
backup_file "$zshrc" "$zshrc_backup"
#backup_file "$samba_conf" "$samba_conf_backup"

echo "Backup finalizado!"
