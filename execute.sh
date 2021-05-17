#!/bin/bash

STRING="BIENVENIDO A SSHDM Secure Shell Deployment Manager Gonzalo Gomez De Rosa"
	
	                                                                 
                                                                 
                                                              



function pause(){
   read -p "Presione una enter para continuar..."
}

echo $STRING 

STRING2="Por favor seleccione una opcion:"
echo $STRING2

STRING3=xxxx

PS3=$STRING2
options=("Bajar XXXX" "Subir XXXXX" "Copiar XXXX" "Borrar XXXX" "Subir XXXX" "envio de archivos" "Salir")
select opt in "${options[@]}"
do
    case $opt in
        "Bajar XXXX")
            echo "Ingrese una IP"
            read IPSERVER
            rsh $IPSERVER -l root service XXXX stop ;;
        "Subir XXXX")
            echo "Ingrese una IP"
            read IPSERVERST
            rsh $IPSERVERST -l root service XXXX start ;;    
        "Copiar XXXX")
            echo "Ingrese una ruta de origen con barras; por ejemplo "/home/XXXX/""
            read RUTAO
            echo "Ingrese el nombre del archivo sin barras y con su extension"
            read FILE
            echo "DESTINO"
            echo "Ingrese la ip de destino"
            read IPFUNC
            echo "Ingrese la ruta de destino con barras; por ejemplo "/home/XXXX/""
            read RUTAD
            scp $RUTAO$FILE root@$IPFUNC:$RUTAD ;;
        "Borrar Logs")
            echo "Ingrese una IP"
            read IPLOGS
            echo "Ingrese la ruta con barras ; por ejemplo "rm /home/XXXX/logs/""
            read RUTALOGS
            ssh root@$IPLOGS '$RUTALOGS*.*' ;;
        "envio de archivos")
			IP=0
			while read line
			do 
			IP=$(($IP+1))
			echo	
			done < "/home/youruser/lineas.txt"	
			cat /home/youruser/lineas.txt | while read line ; do 
			echo $line
			ssh root@$line 'chmod 777 /home/reg/gd90/POS.SH'
                        ssh root@$line 'chown reg:ars /home/xx/xx/xxx.SH'                       
		done 
            break
            ;;
        *) echo opcion invalida;;
    esac
done
