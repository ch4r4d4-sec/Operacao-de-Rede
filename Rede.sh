#!/bin/bash

show_menu() {
   echo "==================="
   echo " Operações de Rede "
   echo "==================="
   echo "1. Exibir configurações de rede"
   echo "2. Verificar conectividade de rede"
   echo "3. Exibir tabela de roteamento"
   echo "4. Sair"
   echo "==================="
   echo -n "Por favor, insira sua escolha [1-4]: "
}

display_network_config() {
   echo "Configurção de Rede: "
   ifconfig
}

check_network_connectivity(){
   echo -n "Digite o host para pingar: "
   read host
   echo "Pinging $host..."
   ping -c 4 $host
}

display_routing_table() {
   echo "Tabela de roteamento"
   netstat -rn
}

while true; do 
   show_menu
   read choice

   case $choice in 
      1)
         display_network_config
         ;;
      2) 
         check_network_connectivity
         ;;
      3)
         display_routing_table
         ;;
      4)
         echo "Saindo... Até logo!"
         exit 0
         ;;
      *)
         echo "Escolha inválida, tente novamente."
         ;;
   esac 

   echo "Pressione Enter para continuar..."
   read
done
