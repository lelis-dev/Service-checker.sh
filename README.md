Monitoramento e Gerenciamento de Serviço (Nginx)

Este script em Bash tem como objetivo verificar o status do serviço Nginx em um sistema Linux que utiliza o systemd (como Ubuntu, Debian, CentOS, Fedora, etc).
Ele garante que o processo esteja ativo e, caso contrário, tenta corrigir automaticamente a situação.

📜 O que o script faz

Verifica se o Nginx está em execução

Caso esteja ativo, retorna:

Process is running


Se não estiver em execução, mas estiver habilitado no systemd

Retorna:

Process is inactive, please start it!


Se o serviço estiver desabilitado

O script habilita o serviço para inicialização automática e o inicia:

The process was disabled, but i have restarted it for you

🚀 Como usar

Salve o script em um arquivo, por exemplo:

check_nginx.sh


Dê permissão de execução:

chmod +x check_nginx.sh


Execute o script:

./check_nginx.sh

🔧 Pré-requisitos

Sistema baseado em systemd.

Permissão para gerenciar serviços (executar com root ou sudo).

Nginx instalado:

sudo apt install nginx    # Ubuntu/Debian
sudo yum install nginx    # CentOS/RHEL

⚠️ Observações

O script está configurado para monitorar apenas o processo Nginx, mas pode ser adaptado para qualquer outro serviço alterando a variável:

process_name_="nginx"


Para rodar periodicamente (como um monitoramento automático), adicione ao crontab ou a um systemd timer.
