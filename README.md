# Linux Config Backup

Script para backup de arquivos de configuração essenciais no Linux.

## Descrição

Este repositório contém um script em Bash que realiza o backup de arquivos de configuração importantes do sistema Linux. Os backups são armazenados em um diretório específico dentro do home do usuário, garantindo segurança e fácil restauração.

## Arquivos de backup
O script copia os seguintes arquivos de configuração:
- `~/.zshrc` → Configuração do Zsh
- `/etc/samba/smb.conf` → Configuração do Samba

Os backups são armazenados no diretório `~/mybkp` com um timestamp no nome do arquivo, permitindo manter múltiplas versões.

## Instalação

1. Clone este repositório:
   ```bash
   git clone https://github.com/andrefonso/linux-config-backup.git
   ```
2. Acesse a pasta do repositório:
   ```bash
   cd linux-config-backup
   ```
3. Conceda permissão de execução ao script:
   ```bash
   chmod +x backup_configs.sh
   ```

## Uso

Para executar o backup, use o seguinte comando:
```bash
./backup_configs.sh
```
Caso precise fazer backup do arquivo do Samba (`/etc/samba/smb.conf`), execute com **sudo**:
```bash
sudo ./backup_configs.sh
```

Os backups serão salvos em `~/mybkp` com nomes no formato:
- `.zshrc.bkp_YYYYMMDD_HHMMSS`
- `smb.conf.bkp_YYYYMMDD_HHMMSS`

## Autor
[André Fonso](https://github.com/andrefonso)
