#!/bin/bash
# Sinaliza que o shell irá ler um script em Bash

process_name_="nginx"
# Nomeia a variável com o nome do processo

if systemctl is-active --quiet "$process_name_"; then
    echo "Process is running"
    # Caso o processo esteja ativo, irá imprimir "Process is running" na tela

elif systemctl is-enabled --quiet "$process_name_"; then
    echo "Process is inactive, please start it!"
    # Caso o processo não esteja ativo, mas esteja habilitado, irá imprimir "Process is inactive, please start it!"

else
    systemctl enable "$process_name_"
    systemctl start "$process_name_"
    echo "The process was disabled, but I have restarted it for you"
    # Caso o processo não esteja ativo nem habilitado, ele irá habilitá-lo e iniciá-lo
fi
# Finaliza o bloco if
