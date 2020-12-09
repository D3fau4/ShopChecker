#!/bin/bash

FLAG=1
FLAG1=1
FLAG2=1
FLAG3=1
FLAG4=1
FLAG5=1
FLAG6=1
FLAG7=1
FLAG8=1
FLAG9=1
FLAG10=1
FLAG11=1
FLAG12=1
AVISOS=0
while :;
  do
  clear
  date
  NUM1=$(curl -H "Cache-Control: no-cache" https://www.pccomponentes.com/tarjetas-graficas/geforce-rtx-3080-series | grep "Recíbelo" | wc -l)
  figlet $NUM1
  if [ ! "$NUM1" -eq 0 ]
  then
    echo Hay Disponibles! Avisos: $AVISOS
    if [ "$FLAG" -eq 1 ]
    then
      ./telegram -t idtoken -c -canal "Hay $NUM1 graficas 3080 disponibles en PCcomponentes!"
      FLAG=0
      AVISOS=$((AVISOS+1))
    fi
  else
    echo No hay Disponibles... Avisos: $AVISOS
    FLAG=1
  fi
  NUM2=$(curl -H "Cache-Control: no-cache" https://www.coolmod.com/tarjetas-gr%C3%A1ficas?f=571::RTX%7C%7C571::RTX%203080 | grep "ver producto" | wc -l)
  figlet $NUM2
  if [ ! "$NUM2" -eq 0 ]
  then
    echo Hay Disponibles! Avisos: $AVISOS
    if [ "$FLAG1" -eq 1 ]
    then
      ./telegram -t idtoken -c -canal "Hay $NUM2 graficas 3080 disponibles en coolmod!"
      FLAG1=0
      AVISOS=$((AVISOS+1))
    fi
  else
    echo No hay Disponibles... Avisos: $AVISOS
    FLAG1=1
  fi
  NUM3=$(curl -H "Cache-Control: no-cache" https://www.vsgamers.es/category/componentes/tarjetas-graficas?filter-modelo=rtxr-3080-1225 | grep "fa vs-icon-cart fa-lg" | wc -l)
  figlet $NUM3
  if [ ! "$NUM3" -eq 0 ]
  then
    echo Hay Disponibles! Avisos: $AVISOS
    if [ "$FLAG2" -eq 1 ]
    then
      ./telegram -t idtoken -c -canal "Hay $NUM3 graficas 3080 disponibles en vsgamers!"
      FLAG2=0
      AVISOS=$((AVISOS+1))
    fi
  else
    echo No hay Disponibles... Avisos: $AVISOS
    FLAG2=1
  fi
  #PS5
  NUM4=$(curl -H "Cache-Control: no-cache" https://www.game.es/HARDWARE/CONSOLA/PLAYSTATION-5/CONSOLA-PLAYSTATION-5/183224 --connect-timeout 30 | grep "Producto no disponible" | wc -l)
  figlet $NUM4
  if [  "$NUM4" -eq 0 ]
  then
    echo Hay Disponibles! Avisos: $AVISOS
    if [ "$FLAG3" -eq 1 ]
    then
      ./telegram -t idtoken -c -canal "Está disponible la PlayStation 5 para comprar en game: https://www.game.es/HARDWARE/CONSOLA/PLAYSTATION-5/CONSOLA-PLAYSTATION-5/183224"
      FLAG3=0
      AVISOS=$((AVISOS+1))
    fi
  else
    echo No hay Disponibles... Avisos: $AVISOS
    FLAG3=1
  fi
  NUM5=$(curl -H "Cache-Control: no-cache" https://www.amazon.es/Playstation-C%C3%A1mara-HD-PlayStation-5/dp/B08KKJ37F7 --connect-timeout 30 | grep "Precio:" | wc -l)
  figlet $NUM5
  if [ ! "$NUM5" -eq 0 ]
  then
    echo Hay Disponibles! Avisos: $AVISOS
    if [ "$FLAG4" -eq 1 ]
    then
      ./telegram -t idtoken -c -canal "Está disponible la PlayStation 5 para comprar en Amazon: https://www.amazon.es/Playstation-C%C3%A1mara-HD-PlayStation-5/dp/B08KKJ37F7"
      FLAG4=0
      AVISOS=$((AVISOS+1))
    fi
  else
    echo No hay Disponibles... Avisos: $AVISOS
    FLAG4=1
  fi
  NUM6=$(curl -H "Cache-Control: no-cache" https://www.xtralife.com/producto/ps5-consola-ps5-estandar/62204 --connect-timeout 30 | grep "Comprar ahora" | wc -l)
  figlet $NUM6
  if [ ! "$NUM6" -eq 0 ]
  then
    echo Hay Disponibles! Avisos: $AVISOS
    if [ "$FLAG5" -eq 1 ]
    then
      ./telegram -t idtoken -c -canal "Está disponible la PlayStation 5 para comprar en Xtralife: https://www.xtralife.com/producto/ps5-consola-ps5-estandar/62204"
      FLAG5=0
      AVISOS=$((AVISOS+1))
    fi
  else
    echo No hay Disponibles... Avisos: $AVISOS
    FLAG5=1
  fi
  NUM7=$(curl -H "Cache-Control: no-cache" https://www.pccomponentes.com/videoconsolas-ps5 --connect-timeout 30 | grep "Recíbelo" | wc -l)
  figlet $NUM7
  if [ ! "$NUM7" -eq 0 ]
  then
    echo Hay Disponibles! Avisos: $AVISOS
    if [ "$FLAG6" -eq 1 ]
    then
      ./telegram -t idtoken -c -canal "Está disponible la PlayStation 5 para comprar en PCcomponentes: https://www.pccomponentes.com/videoconsolas-ps5"
      FLAG6=0
      AVISOS=$((AVISOS+1))
    fi
  else
    echo No hay Disponibles... Avisos: $AVISOS
    FLAG6=1
  fi
  NUM8=$(curl -H "Cache-Control: no-cache" https://www.carrefour.es/playstation-5-825gb/VC4A-11998176/p --connect-timeout 30 | grep "agotado" | wc -l)
  figlet $NUM8
  if [  "$NUM8" -eq 0 ]
  then
    echo Hay Disponibles! Avisos: $AVISOS
    if [ "$FLAG7" -eq 1 ]
    then
      ./telegram -t idtoken -c -canal "Está disponible la PlayStation 5 para comprar en Carrefour: https://www.carrefour.es/playstation-5-825gb/VC4A-11998176/p"
      FLAG7=0
      AVISOS=$((AVISOS+1))
    fi
  else
    echo No hay Disponibles... Avisos: $AVISOS
    FLAG7=1
  fi
  NUM9=$(curl -H "Cache-Control: no-cache" https://www.fnac.es/Consola-PlayStation-5-Videoconsola-Consola/a7724798 --connect-timeout 30 | grep "no disponible" | wc -l)
  figlet $NUM9
  if [  "$NUM9" -eq 2 ]
  then
    echo Hay Disponibles! Avisos: $AVISOS
    if [ "$FLAG8" -eq 1 ]
    then
      ./telegram -t idtoken -c -canal "Está disponible la PlayStation 5 para comprar en Fnac: https://www.fnac.es/Consola-PlayStation-5-Videoconsola-Consola/a7724798 https://www.fnac.es/Consola-PlayStation-5-Edicion-Digital-Videoconsola-Consola/a7724836"
      FLAG8=0
      AVISOS=$((AVISOS+1))
    fi
  else
    echo No hay Disponibles... Avisos: $AVISOS
    FLAG8=1
  fi
  #Ryzen
  NUM10=$(curl -H "Cache-Control: no-cache" https://www.pccomponentes.com/amd-ryzen-9-5900x-37-ghz | grep "                            disabled" | wc -l)
  figlet $NUM10
  if [  "$NUM10" -eq 0 ]
  then
    echo Hay Disponibles! Avisos: $AVISOS
    if [ "$FLAG9" -eq 1 ]
    then
      ./telegram -t idtoken -c -canal "Está disponible el AMD Ryzen 9 5900X 3.7 GHz para comprar en PCcpmponentes: https://www.pccomponentes.com/amd-ryzen-9-5900x-37-ghz"
      FLAG9=0
      AVISOS=$((AVISOS+1))
    fi
  else
    echo No hay Disponibles... Avisos: $AVISOS
    FLAG9=1
  fi
  NUM11=$(curl -H "Cache-Control: no-cache" https://www.mediamarkt.es/es/product/_consola-sony-ps5-825-gb-4k-hdr-blanco-1487016.html --connect-timeout 30 | grep "Comprar" | wc -l)
  figlet $NUM11
  if [ ! "$NUM11" -eq 0 ]
  then
    echo Hay Disponibles! Avisos: $AVISOS
    if [ "$FLAG10" -eq 1 ]
    then
      ./telegram -t idtoken -c -canal "Está disponible la PlayStation 5 para comprar en MediaMarkt: https://www.mediamarkt.es/es/product/_consola-sony-ps5-825-gb-4k-hdr-blanco-1487016.html"
      FLAG10=0
      AVISOS=$((AVISOS+1))
    fi
  else
    echo No hay Disponibles... Avisos: $AVISOS
    FLAG10=1
  fi
  #Ryzen 5950X
  NUM12=$(curl -H "Cache-Control: no-cache" https://www.pccomponentes.com/amd-ryzen-9-5950x-34-ghz | grep "                            disabled" | wc -l)
  figlet $NUM12
  if [  "$NUM12" -eq 0 ]
  then
    echo Hay Disponibles! Avisos: $AVISOS
    if [ "$FLAG11" -eq 1 ]
    then
      ./telegram -t idtoken -c -canal "Está disponible el AMD Ryzen 9 5900X 3.7 GHz para comprar en PCcpmponentes: https://www.pccomponentes.com/amd-ryzen-9-5900x-37-ghz"
      FLAG11=0
      AVISOS=$((AVISOS+1))
    fi
  else
    echo No hay Disponibles... Avisos: $AVISOS
    FLAG11=1
  fi
  sleep 5
done

